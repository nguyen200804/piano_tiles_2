package com.mnt.impl.c;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    public int c;
    private static a d = new a("COMMONBANNER", 0, 0);
    private static a e = new a("RECTANGLEBANNER", 1, 1);

    /* renamed from: a, reason: collision with root package name */
    public static final a f3956a = new a("NATIVEAD", 2, 2);

    /* renamed from: b, reason: collision with root package name */
    public static final a f3957b = new a("INTERSTITIALAD", 3, 3);

    static {
        a[] aVarArr = {d, e, f3956a, f3957b};
    }

    private a(String str, int i, int i2) {
        this.c = i2;
    }
}
