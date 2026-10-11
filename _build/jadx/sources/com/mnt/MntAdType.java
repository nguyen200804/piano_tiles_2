package com.mnt;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum MntAdType {
    NATIVE(0),
    INTERSTITIAL_320X480(3);


    /* renamed from: a, reason: collision with root package name */
    private int f3895a;

    MntAdType(int i) {
        this.f3895a = i;
    }

    public final int getType() {
        return this.f3895a;
    }

    public enum Banner {
        BANNER_320X50(1),
        MEDIUM_300X250(2);


        /* renamed from: a, reason: collision with root package name */
        private int f3897a;

        Banner(int i) {
            this.f3897a = i;
        }

        public final int getType() {
            return this.f3897a;
        }
    }
}
