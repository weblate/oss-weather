import { Align, Cap, Paint, Style } from '@nativescript-community/ui-canvas';
import { ApplicationSettings, Color, Observable } from '@nativescript/core';
import { get } from 'svelte/store';
import { MIN_UV_INDEX } from '~/helpers/constants';
import { convertWeatherValueToUnit, formatValueToUnit, formatWeatherValue } from '~/helpers/formatter';
import { l, lc } from '~/helpers/locale';
import { CommonWeatherData, WeatherData } from '~/services/providers/weather';
import { createGlobalEventListener, globalObservable } from '~/utils/svelte/ui';
import { cloudyColor, fontScale, fonts, nightColor, rainColor, scatteredCloudyColor, snowColor, sunnyColor } from '~/variables';
import { prefs } from './preferences';

export enum UNITS {
    // InchHg = 'InchHg',
    // MMHg = 'MMHg',
    // kPa = 'kPa',
    // hPa = 'hPa',
    // Inch = 'inch',
    IconId = 'iconId',
    UV = '',
    MM = 'mm',
    CM = 'cm',
    Percent = '%',
    Celcius = '°',
    Duration = 'duration',
    Date = 'date',
    Distance = 'm',
    DistanceKm = 'km',
    Speed = 'km/h',
    SpeedM = 'm/h'
}

export enum WeatherProps {
    precipAccumulation = 'precipAccumulation',
    precipProbability = 'precipProbability',
    cloudCover = 'cloudCover',
    cloudCeiling = 'cloudCeiling',
    uvIndex = 'uvIndex',
    windGust = 'windGust',
    moon = 'moon',
    windBeaufort = 'windBeaufort',
    temperature = 'temperature',
    temperatureMin = 'temperatureMin',
    temperatureMax = 'temperatureMax',
    snowDepth = 'snowDepth',
    snowfall = 'snowfall',
    iso = 'iso',
    iconId = 'iconId',
    windSpeed = 'windSpeed',
    windBearing = 'windBearing',
    rainSnowLimit = 'rainSnowLimit',
    aqi = 'aqi'
}

export const PROP_TO_UNIT = {
    [WeatherProps.windSpeed]: UNITS.Speed,
    [WeatherProps.windGust]: UNITS.Speed,
    [WeatherProps.temperature]: UNITS.Celcius,
    [WeatherProps.temperatureMin]: UNITS.Celcius,
    [WeatherProps.temperatureMax]: UNITS.Celcius,
    [WeatherProps.iso]: UNITS.Distance,
    [WeatherProps.rainSnowLimit]: UNITS.Distance,
    [WeatherProps.cloudCover]: UNITS.Percent,
    [WeatherProps.uvIndex]: UNITS.UV,
    [WeatherProps.precipProbability]: UNITS.Percent,
    [WeatherProps.precipAccumulation]: UNITS.MM,
    [WeatherProps.snowDepth]: UNITS.CM,
    [WeatherProps.snowfall]: UNITS.CM,
    [WeatherProps.cloudCeiling]: UNITS.Distance
};

export const DEFAULT_COMMON_WEATHER_DATA = '["windSpeed", "precipAccumulation", "cloudCover", "uvIndex", "windGust", "windBeaufort", "moon"]';

const arcPaint = new Paint();
arcPaint.style = Style.STROKE;
arcPaint.setTextAlign(Align.CENTER);
arcPaint.strokeCap = Cap.ROUND;

export const AVAILABLE_WEATHER_DATA = [
    WeatherProps.windSpeed,
    WeatherProps.precipAccumulation,
    WeatherProps.cloudCover,
    WeatherProps.uvIndex,
    WeatherProps.windGust,
    WeatherProps.moon,
    WeatherProps.snowDepth,
    WeatherProps.windBeaufort,
    WeatherProps.aqi
];
export const AVAILABLE_COMPARE_WEATHER_DATA = [
    WeatherProps.precipProbability,
    WeatherProps.windBearing,
    WeatherProps.windSpeed,
    WeatherProps.precipAccumulation,
    WeatherProps.cloudCover,
    WeatherProps.uvIndex,
    WeatherProps.windGust,
    WeatherProps.temperature,
    WeatherProps.temperatureMin,
    WeatherProps.temperatureMax,
    WeatherProps.snowDepth,
    WeatherProps.snowfall,
    WeatherProps.iconId,
    WeatherProps.iso,
    WeatherProps.rainSnowLimit
];

export const onWeatherDataChanged = createGlobalEventListener('weatherData');

export const wiPaint = new Paint();
wiPaint.setTextAlign(Align.CENTER);
export const mdiPaint = new Paint();
mdiPaint.setTextAlign(Align.CENTER);
export const appPaint = new Paint();
appPaint.setTextAlign(Align.CENTER);

fonts.subscribe((data) => {
    if (data.wi?.length) {
        wiPaint.setFontFamily(data.wi);
        mdiPaint.setFontFamily(data.mdi);
        appPaint.setFontFamily(data.app);
    }
});

const WEATHER_DATA_ICONS = {
    [WeatherProps.moon]: (item: CommonWeatherData) => item.moonIcon,
    [WeatherProps.iconId]: 'mdi-theme-light-dark',
    [WeatherProps.cloudCover]: 'wi-cloud',
    [WeatherProps.windGust]: 'wi-strong-wind',
    [WeatherProps.uvIndex]: 'mdi-weather-sunny-alert',
    [WeatherProps.windBeaufort]: (item: CommonWeatherData) => item.windBeaufortIcon,
    [WeatherProps.windSpeed]: (item: CommonWeatherData) => item.windIcon,
    [WeatherProps.precipAccumulation]: (item: CommonWeatherData) => item.precipIcon
};

const WEATHER_DATA_TITLES = {
    [WeatherProps.iconId]: lc('weather_condition'),
    [WeatherProps.moon]: lc('moon'),
    [WeatherProps.cloudCover]: lc('cloud_cover'),
    [WeatherProps.windGust]: lc('wind_gust'),
    [WeatherProps.uvIndex]: lc('uv_index'),
    [WeatherProps.windBeaufort]: lc('wind_beaufort'),
    [WeatherProps.windSpeed]: lc('wind_speed'),
    [WeatherProps.rainSnowLimit]: lc('rain_snow_limit'),
    [WeatherProps.iso]: lc('freezing_level'),
    [WeatherProps.precipAccumulation]: lc('precipitation'),
    [WeatherProps.aqi]: lc('aqi')
};
const WEATHER_DATA_COLORS = {
    [WeatherProps.moon]: nightColor,
    [WeatherProps.cloudCover]: cloudyColor,
    [WeatherProps.windGust]: scatteredCloudyColor,
    [WeatherProps.windBeaufort]: scatteredCloudyColor,
    [WeatherProps.windSpeed]: scatteredCloudyColor,
    // [WeatherProps.uvIndex]: scatteredCloudyColor,
    [WeatherProps.rainSnowLimit]: rainColor,
    [WeatherProps.iso]: snowColor,
    [WeatherProps.iconId]: sunnyColor,
    [WeatherProps.precipAccumulation]: rainColor,
    [WeatherProps.aqi]: lc('aqi')
};

export function getWeatherDataIcon(key: string) {
    let icon = WEATHER_DATA_ICONS[key];
    if (typeof icon === 'function') {
        icon = icon({ [key]: 0 });
    }
    return icon;
}
export function getWeatherDataTitle(key: string) {
    return WEATHER_DATA_TITLES[key] || key;
}
export function getWeatherDataColor(key: string) {
    return WEATHER_DATA_COLORS[key];
}
const ICONS_SIZE_FACTOR = {
    uvIndex: 1.2
};

export interface CommonData {
    key: string;
    color?: string | Color;
    textColor?: string | Color;
    paint?: Paint;
    iconFontSize?: number;
    icon?: string;
    value?: string | number;
    subvalue?: string;
    customDraw?(...args);
}
export interface CommonDataOptions {
    id: string;
    icon: string | ((item: CommonWeatherData) => string);
    iconFactor: number;
    // getData: (options: CommonDataOptions, item: CommonWeatherData) => any;
}

export function mergeWeatherData(mainData: WeatherData, ...addedDatas) {
    for (let index = 0; index < addedDatas.length; index++) {
        const addedData = addedDatas[index];
        Object.keys(addedData).forEach((k) => {
            const mainDataK = mainData[k]?.data || mainData[k];
            const addedDataK = addedData[k]?.data || addedData[k];
            // DEV_LOG && console.log('mergeWeatherData key', k, mainDataK?.length, addedDataK?.length);
            if (!Array.isArray(mainDataK) && !Array.isArray(addedDataK)) {
                // DEV_LOG && console.log('mergeWeatherData object', k);
                Object.assign(mainDataK, addedDataK);
                return;
            }
            if (!mainDataK?.length || !addedDataK?.length) {
                return;
            }
            const originalFirstTime = mainDataK[0].time;
            const addedDataFirstTime = addedDataK[0].time;
            DEV_LOG && console.log('mergeWeatherData', k, originalFirstTime, addedDataFirstTime);
            if (addedDataFirstTime >= originalFirstTime) {
                let index = mainDataK.findIndex((d) => d.time === addedDataFirstTime);
                // DEV_LOG && console.log('assigning test', k, index, mainDataK[0].time, addedDataK[0].time);
                if (index !== -1) {
                    for (index; index < mainDataK.length; index++) {
                        if (index < mainDataK.length && index < addedDataK.length && mainDataK[index].time === addedDataK[index].time) {
                            // DEV_LOG && console.log('assigning', k, index, addedDataK[index]);
                            Object.assign(mainDataK[index], addedDataK[index]);
                        }
                    }
                }
            } else {
                let index = addedDataK.findIndex((d) => d.time === originalFirstTime);
                if (index !== -1) {
                    for (index; index < addedDataK.length; index++) {
                        if (index < mainDataK.length && index < addedDataK.length && mainDataK[index].time === addedDataK[index].time) {
                            // DEV_LOG && console.log('assigning1', k, index, addedDataK[index]);
                            Object.assign(mainDataK[index], addedDataK[index]);
                        }
                    }
                }
            }
        });
    }
}

export class DataService extends Observable {
    currentWeatherDataOptions: { [k: string]: CommonDataOptions };
    minUVIndexToShow = MIN_UV_INDEX;
    constructor() {
        super();
        this.load();

        const setminUVIndexToShow = () => {
            this.minUVIndexToShow = ApplicationSettings.getNumber('min_uv_index', MIN_UV_INDEX);
        };
        setminUVIndexToShow();
        prefs.on('key:common_data', this.load, this);
        prefs.on('key:min_uv_index', setminUVIndexToShow);
    }
    currentWeatherData: string[] = [];

    updateCurrentWeatherData(data, save = true) {
        this.currentWeatherData = data;
        this.currentWeatherDataOptions = data.reduce((acc, key) => {
            acc[key] = {
                id: key,
                icon: WEATHER_DATA_ICONS[key],
                iconFactor: ICONS_SIZE_FACTOR[key] ?? 1
                // getData: this.getItemData
            };
            return acc;
        }, {});
        if (save) {
            ApplicationSettings.setString('common_data', JSON.stringify(data));
            globalObservable.notify({ eventName: 'weatherData', data });
        }
    }
    load() {
        this.updateCurrentWeatherData(
            JSON.parse(ApplicationSettings.getString('common_data', '["windSpeed", "precipAccumulation", "cloudCover", "uvIndex", "windGust", "windBeaufort", "moon"]')),
            false
        );
    }

    getIconsData(item: CommonWeatherData, filter = []) {
        let keys = Object.keys(this.currentWeatherDataOptions);
        if (filter.length) {
            keys = keys.filter((k) => filter.indexOf(k) === -1);
        }
        return keys
            .map((k) => {
                const options = this.currentWeatherDataOptions[k];
                return this.getItemData(k, item, options);
            })
            .filter((d) => !!d);
    }

    getItemData(key: string, item: CommonWeatherData, options = this.currentWeatherDataOptions[key]): CommonData {
        if (!options) {
            return null;
        }
        let icon: string = options.icon as any;
        if (typeof icon === 'function') {
            icon = (icon as Function)(item);
        }
        const iconFontSize = 20 * get(fontScale) * options.iconFactor;
        switch (key) {
            case WeatherProps.windSpeed:
                if (item.windSpeed) {
                    const data = convertWeatherValueToUnit(item, WeatherProps.windSpeed);
                    return {
                        key,
                        iconFontSize,
                        paint: appPaint,
                        icon,
                        value: data[0],
                        subvalue: data[1]
                    };
                }
                break;
            case WeatherProps.aqi:
                if (item.aqi) {
                    return {
                        key,
                        iconFontSize,
                        paint: mdiPaint,
                        color: item.aqiColor,
                        icon: 'mdi-leaf',
                        value: item.aqi,
                        subvalue: 'aqi'
                        // customDraw(canvas, fontScale, textPaint, item: CommonData, x, y, width) {
                        //     const size = (width * 2) / 3;
                        //     const arcY = y - size / 5;
                        //     const STROKE_WIDTH = 4 * fontScale;
                        //     const arcRect = new RectF(x - size / 2, arcY - size / 2, x + size / 2, arcY + size / 2);
                        //     const delta = 180 - 45 + STROKE_WIDTH / 2;
                        //     arcPaint.setStrokeWidth(STROKE_WIDTH);
                        //     arcPaint.color = new Color(colorForAqi(item.value));
                        //     arcPaint.setAlpha(100);
                        //     canvas.drawArc(arcRect, 0 + delta, 270 - STROKE_WIDTH, false, arcPaint);
                        //     arcPaint.setAlpha(255);
                        //     canvas.drawArc(arcRect, 0 + delta, ((item.value as number) / 400) * (270 - STROKE_WIDTH), false, arcPaint);

                        //     // textPaint.setColor(colorForAqi(item.aqi));
                        //     textPaint.setTextSize(14 * fontScale);
                        //     canvas.drawText(item.value + '', x, arcY + (size * 1) / 5, textPaint);

                        //     textPaint.setTextSize(12 * fontScale);
                        //     // textPaint.setColor(item.color || colorOnSurface);
                        //     canvas.drawText(item.subvalue + '', x, y + 19 * fontScale, textPaint);
                        // }
                    };
                }
                break;
            case WeatherProps.precipAccumulation:
                if ((item.precipProbability === -1 || item.precipProbability > 10) && item.precipAccumulation >= 1) {
                    return {
                        key,
                        paint: item.precipFontUseApp ? appPaint : wiPaint,
                        color: item.precipColor,
                        iconFontSize,
                        icon: item.precipIcon,
                        value: formatValueToUnit(item.precipAccumulation, item.precipUnit),
                        subvalue: item.precipProbability > 0 && formatWeatherValue(item, WeatherProps.precipProbability)
                    };
                }
                break;

            case WeatherProps.cloudCover:
                if (item.cloudCover > 20) {
                    return {
                        key,
                        paint: wiPaint,
                        color: item.cloudColor,
                        iconFontSize,
                        icon,
                        value: formatWeatherValue(item, WeatherProps.cloudCover),
                        subvalue: item.cloudCeiling && formatWeatherValue(item, WeatherProps.cloudCeiling)
                    };
                }
                break;
            case WeatherProps.uvIndex:
                if (item.uvIndex >= this.minUVIndexToShow) {
                    return {
                        key,
                        paint: mdiPaint,
                        color: item.uvIndexColor,
                        iconFontSize,
                        icon,
                        value: formatWeatherValue(item, WeatherProps.uvIndex)
                    };
                }
                break;
            case WeatherProps.windGust:
                if (item.windGust && (!item.windSpeed || (item.windGust > 30 && item.windGust > 2 * item.windSpeed))) {
                    const data = convertWeatherValueToUnit(item, WeatherProps.windGust);
                    return {
                        key,
                        iconFontSize,
                        paint: wiPaint,
                        color: item.windGust > 80 ? '#ff0353' : item.windGust > 50 ? '#FFBC03' : undefined,
                        textColor: item.windGust > 80 ? '#ffffff' : item.windGust > 50 ? '#222' : '#FFBC03',
                        icon,
                        value: data[0],
                        subvalue: data[1]
                    };
                }
                break;

            case WeatherProps.moon:
                return {
                    key,
                    paint: wiPaint,
                    color: nightColor,
                    iconFontSize,
                    icon,
                    value: l('moon')
                };
            case WeatherProps.windBeaufort:
                if (item.windBeaufortIcon) {
                    return {
                        key,
                        paint: wiPaint,
                        iconFontSize,
                        icon
                    };
                }
                break;
            default:
                break;
        }
    }
}
export const weatherDataService = new DataService();
