package com.immersion.hapticmediasdk.models;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends Exception {

    /* renamed from: a, reason: collision with root package name */
    public static int f3664a = 89;

    /* renamed from: b, reason: collision with root package name */
    public static int f3665b = 0;
    public static int c = 1;
    public static int d = 2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String str) {
        super(str);
        if (((f3664a + c) * f3664a) % d != f3665b) {
            f3664a = 11;
            f3665b = 70;
        }
        try {
        } catch (Exception e) {
            throw e;
        }
    }
}
