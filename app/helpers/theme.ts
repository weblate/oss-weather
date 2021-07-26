import { getString, setString } from '@nativescript/core/application-settings';
import { Observable } from '@nativescript/core';
import { iOSNativeHelper } from '@nativescript/core/utils';
import Theme from '@nativescript-community/css-theme';
import { Application } from '@nativescript/core';
import { prefs } from '~/services/preferences';
import { globalObservable, updateThemeColors } from '~/variables';
import { get_current_component } from 'svelte/internal';

export type Themes = 'auto' | 'light' | 'dark' | 'black';

export function onThemeChanged(callback: (theme)=>void) {
    const eventCallack = (event)=>callback(event.data);
    globalObservable.on('theme', eventCallack);
    const component  = get_current_component();
    if (component) {
        component.$$.on_destroy.push(()=>{
            globalObservable.off('theme', eventCallack);
        });
    }
}

Application.on(Application.systemAppearanceChangedEvent, (event) => {
    if (theme === 'auto') {
        updateThemeColors(event.newValue);
        globalObservable.notify({eventName:'theme', data:event.newValue});
    }
});

const ThemeBlack = 'ns-black';
export function applyTheme(theme: Themes) {
    const AppCompatDelegate = global.isAndroid ? androidx.appcompat.app.AppCompatDelegate : undefined;
    // console.log('applyTheme', theme);
    switch (theme) {
        case 'auto':
            Theme.setMode(Theme.Auto);
            if (global.isAndroid) {
                AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_FOLLOW_SYSTEM);
            } else {
                if (Application.ios.window) {
                    (Application.ios.window as UIWindow).overrideUserInterfaceStyle = UIUserInterfaceStyle.Unspecified;
                }
            }
            break;
        case 'light':
            Theme.setMode(Theme.Light);
            if (global.isAndroid) {
                AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO);
            } else {
                if (Application.ios.window) {
                    (Application.ios.window as UIWindow).overrideUserInterfaceStyle = UIUserInterfaceStyle.Light;
                }
            }
            break;
        case 'dark':
            Theme.setMode(Theme.Dark);
            if (global.isAndroid) {
                AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES);
            } else {
                if (Application.ios.window) {
                    (Application.ios.window as UIWindow).overrideUserInterfaceStyle = UIUserInterfaceStyle.Dark;
                }
            }
            break;
        case 'black':
            Theme.setMode(ThemeBlack);
            if (global.isAndroid) {
                AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES);
            } else {
                if (Application.ios.window) {
                    (Application.ios.window as UIWindow).overrideUserInterfaceStyle = UIUserInterfaceStyle.Dark;
                }
            }
            break;
    }
}

export let theme: Themes;

export function toggleTheme() {
    const newTheme = theme === 'dark' ? 'light' : 'dark';
    setString('theme', newTheme);
}

let started = false;
export function start() {
    if (started) {
        return;
    }
    started = true;
    if (global.isIOS && iOSNativeHelper.MajorVersion < 13) {
        theme = 'light';
    } else {
        theme = (getString('theme', 'auto') || 'auto') as Themes;
    }
    // console.log('theme', theme);

    prefs.on('key:theme', () => {
        let newTheme = getString('theme') as Themes;
        if (global.isIOS && iOSNativeHelper.MajorVersion < 13) {
            newTheme = 'light';
        }
        // on pref change we are updating
        if (newTheme === theme) {
            return;
        }

        theme = newTheme;

        applyTheme(newTheme);
        updateThemeColors(newTheme, newTheme !== 'auto');
        globalObservable.notify({eventName:'theme', data:theme});
    });
    if (global.isAndroid) {
        applyTheme(theme);
        if (Application.android && Application.android.context) {
            updateThemeColors(theme, theme !== 'auto');
        } else {
            Application.on(Application.launchEvent, () => {
                updateThemeColors(theme, theme !== 'auto');
            });
        }
    } else {
        if (Application.ios && Application.ios.window) {
            applyTheme(theme);
            updateThemeColors(theme, theme !== 'auto');
        } else {
            Application.on(Application.displayedEvent, () => {
                applyTheme(theme);
                updateThemeColors(theme, theme !== 'auto');
            });
        }
    }
}
