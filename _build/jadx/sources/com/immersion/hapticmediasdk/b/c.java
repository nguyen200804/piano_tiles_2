package com.immersion.hapticmediasdk.b;

import android.os.SystemClock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    public static int c = 89;
    public static int d = 1;
    public static int e = 2;
    public static int f;

    /* renamed from: a, reason: collision with root package name */
    public long f3646a;

    /* renamed from: b, reason: collision with root package name */
    public long f3647b;

    public c() {
        int i = c;
        switch ((i * (d + i)) % e) {
            case 0:
                break;
            default:
                c = 10;
                d = 87;
                break;
        }
        try {
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void a() {
        int i = 3;
        while (true) {
            try {
                i /= 0;
            } catch (Exception e2) {
                c = 75;
                try {
                    this.f3646a = SystemClock.elapsedRealtime();
                    return;
                } catch (Exception e3) {
                    throw e3;
                }
            }
        }
    }

    public void b() {
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        if (((c + d) * c) % e != f) {
            c = 81;
            f = 31;
        }
        this.f3647b = SystemClock.elapsedRealtime();
    }
}
