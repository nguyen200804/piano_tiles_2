package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitial;
import java.lang.reflect.Constructor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CustomEventInterstitialFactory {

    /* renamed from: a, reason: collision with root package name */
    private static CustomEventInterstitialFactory f4500a = new CustomEventInterstitialFactory();

    public static CustomEventInterstitial create(String className) throws Exception {
        return f4500a.a(className);
    }

    @Deprecated
    public static void setInstance(CustomEventInterstitialFactory factory) {
        f4500a = factory;
    }

    protected CustomEventInterstitial a(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventInterstitial.class).getDeclaredConstructor((Class[]) null);
        declaredConstructor.setAccessible(true);
        return (CustomEventInterstitial) declaredConstructor.newInstance(new Object[0]);
    }
}
