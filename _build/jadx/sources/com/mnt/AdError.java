package com.mnt;

import com.mnt.impl.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum AdError {
    NO_NETWORK(100001, e.ad),
    NO_OFFERS(100002, e.ae),
    NO_MATERIAL(100008, e.af),
    NO_APPKEY(100003, e.ag),
    ADDISPLAYSTYLE_REQUIRED(100004, e.ah),
    SERVER_ERROR(100006, e.ai),
    ALL_ADS_COMSUMED(100007, e.aj);


    /* renamed from: a, reason: collision with root package name */
    private int f3884a;

    /* renamed from: b, reason: collision with root package name */
    private String f3885b;

    AdError(int i, String str) {
        this.f3884a = i;
        this.f3885b = str;
    }

    public final int getErrorCode() {
        return this.f3884a;
    }

    public final String getMsg() {
        return this.f3885b;
    }

    public static AdError valueOf(int i) {
        for (AdError adError : values()) {
            if (adError.getErrorCode() == i) {
                return adError;
            }
        }
        return null;
    }
}
