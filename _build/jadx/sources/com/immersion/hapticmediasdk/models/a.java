package com.immersion.hapticmediasdk.models;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public static int f3662a = 24;

    /* renamed from: b, reason: collision with root package name */
    public static int f3663b = 0;
    public static int c = 1;
    public static int d = 2;
    private int e;

    public a(int i, String str) {
        super(str);
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        if (((f3662a + c) * f3662a) % d != f3663b) {
            f3662a = 74;
            f3663b = 98;
        }
        this.e = i;
    }

    public static int b() {
        return 1;
    }

    public static int c() {
        return 75;
    }

    public int a() {
        if (((f3662a + b()) * f3662a) % d != f3663b) {
            f3662a = c();
            f3663b = c();
        }
        try {
            return this.e;
        } catch (Exception e) {
            throw e;
        }
    }
}
