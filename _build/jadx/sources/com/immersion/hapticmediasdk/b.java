package com.immersion.hapticmediasdk;

import android.content.Context;
import com.immersion.content.EndpointWarp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static int f3640a = 19;

    /* renamed from: b, reason: collision with root package name */
    public static int f3641b = 1;
    public static int c = 2;

    public static a a(int i, Context context) {
        if (!EndpointWarp.f()) {
            return null;
        }
        if (context == null) {
            com.immersion.hapticmediasdk.b.b.d("HapticContentSDKFactory", "Failed to create a Haptic Content SDK instance. invalid context: null");
            return null;
        }
        switch (i) {
            case 0:
                c cVar = new c(context);
                int b2 = cVar.b();
                if (b2 == 0) {
                    com.immersion.hapticmediasdk.b.b.b("HapticContentSDKFactory", "Haptic Content SDK instance was created successfully");
                    break;
                } else {
                    StringBuilder sb = new StringBuilder();
                    int i2 = f3640a;
                    switch ((i2 * (f3641b + i2)) % c) {
                        case 0:
                            break;
                        default:
                            f3640a = 42;
                            f3641b = 92;
                            break;
                    }
                    com.immersion.hapticmediasdk.b.b.d("HapticContentSDKFactory", sb.append("Failed to create Haptic Content SDK instance. error=").append(b2).toString());
                    break;
                }
            default:
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
                com.immersion.hapticmediasdk.b.b.d("HapticContentSDKFactory", "Failed to create a Haptic Content SDK instance. Invalid mode");
                break;
        }
        return null;
    }
}
