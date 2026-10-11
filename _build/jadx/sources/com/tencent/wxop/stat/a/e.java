package com.tencent.wxop.stat.a;

import org.cocos2dx.lib.GameControllerDelegate;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum e {
    PAGE_VIEW(1),
    SESSION_ENV(2),
    ERROR(3),
    CUSTOM(1000),
    ADDITION(1001),
    MONITOR_STAT(1002),
    MTA_GAME_USER(GameControllerDelegate.THUMBSTICK_RIGHT_Y),
    NETWORK_MONITOR(GameControllerDelegate.BUTTON_A),
    NETWORK_DETECTOR(GameControllerDelegate.BUTTON_B);

    private int bG;

    e(int i) {
        this.bG = i;
    }

    public final int r() {
        return this.bG;
    }
}
