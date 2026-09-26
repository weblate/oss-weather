export const MIN_TOP_VIEW_HEIGHT = 370;

export interface TopViewHeightParams {
    windowWidth: number;
    windowHeight: number;
    actionBarHeight: number;
    insetTop: number;
    insetBottom: number;
    fontScale: number;
    resizableWindow: boolean;
}

export function computeTopViewHeight({ actionBarHeight, fontScale, insetBottom, insetTop, resizableWindow, windowHeight, windowWidth }: TopViewHeightParams) {
    // on phones use the longest side so rotating does not change the height
    const availableHeight = resizableWindow ? windowHeight : Math.max(windowWidth, windowHeight);
    return Math.max((availableHeight - actionBarHeight - insetBottom - insetTop - 100) * 0.6 * Math.sqrt(fontScale), MIN_TOP_VIEW_HEIGHT);
}
