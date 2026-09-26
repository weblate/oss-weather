import { describe, expect, it } from 'vitest';
import { MIN_TOP_VIEW_HEIGHT, computeTopViewHeight } from './topViewHeight';

const base = { actionBarHeight: 50, insetTop: 0, insetBottom: 0, fontScale: 1 };

describe('computeTopViewHeight', () => {
    it('uses the longest screen side on a phone, so rotating keeps the same height', () => {
        const portrait = computeTopViewHeight({ ...base, windowWidth: 400, windowHeight: 900, resizableWindow: false });
        const landscape = computeTopViewHeight({ ...base, windowWidth: 900, windowHeight: 400, resizableWindow: false });
        expect(portrait).toBe((900 - 50 - 100) * 0.6);
        expect(landscape).toBe(portrait);
    });
    it('uses the window height in a resizable window', () => {
        expect(computeTopViewHeight({ ...base, windowWidth: 1700, windowHeight: 900, resizableWindow: true })).toBe((900 - 50 - 100) * 0.6);
    });
    it('removes the insets from the available height', () => {
        expect(computeTopViewHeight({ ...base, insetTop: 40, insetBottom: 10, windowWidth: 800, windowHeight: 1000, resizableWindow: true })).toBe((1000 - 50 - 40 - 10 - 100) * 0.6);
    });
    it('never goes below the minimum height', () => {
        expect(computeTopViewHeight({ ...base, windowWidth: 500, windowHeight: 600, resizableWindow: true })).toBe(MIN_TOP_VIEW_HEIGHT);
    });
});
