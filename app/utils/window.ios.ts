import { Application } from '@akylas/nativescript';

const MIN_WIDTH = 400;
const MIN_HEIGHT = 600;
const START_WIDTH = 500;
const START_HEIGHT = 900;
// CGFLOAT_MAX, computed lazily so no interop call runs at import time.
const NO_MAX_SIDE = 10000000;

function getWindowScene(): UIWindowScene {
    const scenes = UIApplication.sharedApplication?.connectedScenes;
    const scene = scenes?.allObjects?.firstObject;
    return scene instanceof UIWindowScene ? scene : null;
}

export function applyWindowSizeRestrictions() {
    const scene = getWindowScene();
    // sizeRestrictions is null everywhere but Mac Catalyst.
    const restrictions = scene?.sizeRestrictions;
    if (!restrictions) {
        return;
    }

    // No API sets initial window size, so pin then relax.
    restrictions.minimumSize = CGSizeMake(START_WIDTH, START_HEIGHT);
    restrictions.maximumSize = CGSizeMake(START_WIDTH, START_HEIGHT);
    setTimeout(() => {
        restrictions.minimumSize = CGSizeMake(MIN_WIDTH, MIN_HEIGHT);
        restrictions.maximumSize = CGSizeMake(NO_MAX_SIDE, NO_MAX_SIDE);
    }, 300);
}

export function startWindowHelper() {
    Application.on(Application.displayedEvent, applyWindowSizeRestrictions);
}
