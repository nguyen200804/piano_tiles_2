package com.mnt;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum DownloadType {
    DDL(1),
    GP(2);


    /* renamed from: a, reason: collision with root package name */
    private int f3887a;

    DownloadType(int i) {
        this.f3887a = i;
    }

    public final int intValue() {
        return this.f3887a;
    }

    public static DownloadType valueOf(int i) {
        for (DownloadType downloadType : values()) {
            if (downloadType.intValue() == i) {
                return downloadType;
            }
        }
        return null;
    }
}
