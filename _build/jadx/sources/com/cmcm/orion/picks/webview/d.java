package com.cmcm.orion.picks.webview;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Reflection.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private final Object f1052a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1053b;
    private Class<?> c;
    private List<Class<?>> d = new ArrayList();
    private List<Object> e = new ArrayList();
    private boolean f;
    private boolean g;

    private d(Object obj, String str) {
        this.f1052a = obj;
        this.f1053b = str;
        this.c = obj != null ? obj.getClass() : null;
    }

    public static void a(Object obj, String str) {
        try {
            d dVar = new d(obj, str);
            dVar.f = true;
            Method a2 = a(dVar.c, dVar.f1053b, (Class[]) dVar.d.toArray(new Class[dVar.d.size()]));
            if (dVar.f) {
                a2.setAccessible(true);
            }
            Object[] array = dVar.e.toArray();
            if (dVar.g) {
                a2.invoke(null, array);
            } else {
                a2.invoke(dVar.f1052a, array);
            }
        } catch (Exception e) {
        }
    }

    private static Method a(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }
}
