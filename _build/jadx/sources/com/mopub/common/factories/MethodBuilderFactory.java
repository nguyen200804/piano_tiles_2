package com.mopub.common.factories;

import com.mopub.common.util.Reflection;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MethodBuilderFactory {

    /* renamed from: a, reason: collision with root package name */
    protected static MethodBuilderFactory f4223a = new MethodBuilderFactory();

    @Deprecated
    public static void setInstance(MethodBuilderFactory factory) {
        f4223a = factory;
    }

    public static Reflection.MethodBuilder create(Object object, String methodName) {
        return f4223a.a(object, methodName);
    }

    protected Reflection.MethodBuilder a(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }
}
