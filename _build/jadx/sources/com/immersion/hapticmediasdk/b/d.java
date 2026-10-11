package com.immersion.hapticmediasdk.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static int f3648a = 88;

    /* renamed from: b, reason: collision with root package name */
    public static int f3649b = 1;
    public static int c = 2;
    public static int d;
    private boolean e;

    public d() {
        int i = f3648a;
        switch ((i * (f3649b + i)) % c) {
            case 0:
                break;
            default:
                f3648a = a();
                f3649b = a();
                break;
        }
        while (true) {
            boolean z = false;
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        this.e = true;
    }

    public static int a() {
        return 53;
    }

    public synchronized boolean b() {
        boolean z;
        try {
            z = this.e;
            if (((f3648a + f3649b) * f3648a) % c != d) {
                f3648a = 88;
                d = 88;
            }
        } catch (Exception e) {
            throw e;
        }
        return z;
    }
}
