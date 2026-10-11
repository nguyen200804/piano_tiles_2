package com.mopub.common.util;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Reflection {

    public static class MethodBuilder {

        /* renamed from: a, reason: collision with root package name */
        private final Object f4236a;

        /* renamed from: b, reason: collision with root package name */
        private final String f4237b;
        private Class<?> c;
        private List<Class<?>> d = new ArrayList();
        private List<Object> e = new ArrayList();
        private boolean f;
        private boolean g;

        public MethodBuilder(Object instance, String methodName) {
            this.f4236a = instance;
            this.f4237b = methodName;
            this.c = instance != null ? instance.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> clazz, T parameter) {
            this.d.add(clazz);
            this.e.add(parameter);
            return this;
        }

        public MethodBuilder setAccessible() {
            this.f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> clazz) {
            this.g = true;
            this.c = clazz;
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.c, this.f4237b, (Class[]) this.d.toArray(new Class[this.d.size()]));
            if (this.f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.e.toArray();
            return this.g ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.f4236a, array);
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String methodName, Class<?>... parameterTypes) throws NoSuchMethodException {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(methodName, parameterTypes);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static boolean classFound(String className) {
        try {
            Class.forName(className);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static <T> T instantiateClassWithEmptyConstructor(@NonNull String str, @NonNull Class<? extends T> cls) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, NullPointerException {
        Preconditions.checkNotNull(str);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor((Class[]) null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }

    public static <T> T instantiateClassWithConstructor(@NonNull String str, @NonNull Class<? extends T> cls, @NonNull Class[] clsArr, @NonNull Object[] objArr) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(clsArr);
        Preconditions.checkNotNull(objArr);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }
}
