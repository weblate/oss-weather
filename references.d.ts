/* eslint-disable spaced-comment */
/// <reference path="./node_modules/tns-platform-declarations/ios.d.ts" />
/// <reference path="./node_modules/tns-platform-declarations/android-28.d.ts" />

declare const TNS_ENV: string;
declare const LOG_LEVEL: string;
declare const TEST_LOGS: boolean;
declare const PRODUCTION: boolean;
declare const SENTRY_DSN: string;
declare const SENTRY_PREFIX: string;
declare const OWM_KEY: string;
declare const DARK_SKY_KEY: string;
declare const CLIMA_CELL_KEY: string;
declare const DEFAULT_LOCATION: string;
declare const GIT_URL: string;
declare const STORE_LINK: string;
declare const STORE_REVIEW_LINK: string;
// declare const process: { env: any };

// Augment the NodeJS global type with our own extensions

declare const gVars: {
    sentry: boolean;
    isIOS: boolean;
    isAndroid: boolean;
    platform: string;
};

interface LatLonKeys {
    lat: number;
    lon: number;
    altitude?: number;
}

declare module '*.scss';
// declare module '*.svelte' {
//     type test = SvelteComponent;
//     export default test;
// }
declare namespace com {
    export namespace akylas {
        export namespace weather {
            export class NightModeApplication extends android.app.Application {}
        }
    }
}
