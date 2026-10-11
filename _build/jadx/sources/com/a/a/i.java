package com.a.a;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: PropertyValuesHolder.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i implements Cloneable {
    private static final j i = new d();
    private static final j j = new b();
    private static Class[] k = {Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};
    private static Class[] l = {Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};
    private static Class[] m = {Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
    private static final HashMap<Class, HashMap<String, Method>> n = new HashMap<>();
    private static final HashMap<Class, HashMap<String, Method>> o = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    String f219a;

    /* renamed from: b, reason: collision with root package name */
    protected com.a.b.c f220b;
    Method c;
    Class d;
    f e;
    final ReentrantReadWriteLock f;
    final Object[] g;
    private Method h;
    private j p;
    private Object q;

    private i(String str) {
        this.c = null;
        this.h = null;
        this.e = null;
        this.f = new ReentrantReadWriteLock();
        this.g = new Object[1];
        this.f219a = str;
    }

    public static i a(String str, float... fArr) {
        return new a(str, fArr);
    }

    public void a(float... fArr) {
        this.d = Float.TYPE;
        this.e = f.a(fArr);
    }

    private Method a(Class cls, String str, Class cls2) {
        Method method;
        Class<?>[] clsArr;
        Method method2 = null;
        String a2 = a(str, this.f219a);
        if (cls2 == null) {
            try {
                return cls.getMethod(a2, null);
            } catch (NoSuchMethodException e) {
                try {
                    method = cls.getDeclaredMethod(a2, null);
                    try {
                        method.setAccessible(true);
                        return method;
                    } catch (NoSuchMethodException e2) {
                        Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.f219a + ": " + e);
                        return method;
                    }
                } catch (NoSuchMethodException e3) {
                    method = null;
                }
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            if (this.d.equals(Float.class)) {
                clsArr = k;
            } else if (this.d.equals(Integer.class)) {
                clsArr = l;
            } else if (this.d.equals(Double.class)) {
                clsArr = m;
            } else {
                clsArr = new Class[]{this.d};
            }
            for (Class<?> cls3 : clsArr) {
                clsArr2[0] = cls3;
                try {
                    method2 = cls.getMethod(a2, clsArr2);
                    this.d = cls3;
                    return method2;
                } catch (NoSuchMethodException e4) {
                    try {
                        method2 = cls.getDeclaredMethod(a2, clsArr2);
                        method2.setAccessible(true);
                        this.d = cls3;
                        return method2;
                    } catch (NoSuchMethodException e5) {
                    }
                }
            }
            Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.f219a + " with value type " + this.d);
            return method2;
        }
    }

    private Method a(Class cls, HashMap<Class, HashMap<String, Method>> hashMap, String str, Class cls2) {
        Method method = null;
        try {
            this.f.writeLock().lock();
            HashMap<String, Method> hashMap2 = hashMap.get(cls);
            if (hashMap2 != null) {
                method = hashMap2.get(this.f219a);
            }
            if (method == null) {
                method = a(cls, str, cls2);
                if (hashMap2 == null) {
                    hashMap2 = new HashMap<>();
                    hashMap.put(cls, hashMap2);
                }
                hashMap2.put(this.f219a, method);
            }
            Method method2 = method;
            return method2;
        } finally {
            this.f.writeLock().unlock();
        }
    }

    void a(Class cls) {
        this.c = a(cls, n, "set", this.d);
    }

    private void b(Class cls) {
        this.h = a(cls, o, "get", null);
    }

    void a(Object obj) {
        if (this.f220b != null) {
            try {
                this.f220b.a(obj);
                Iterator<e> it = this.e.e.iterator();
                while (it.hasNext()) {
                    e next = it.next();
                    if (!next.a()) {
                        next.a(this.f220b.a(obj));
                    }
                }
                return;
            } catch (ClassCastException e) {
                Log.e("PropertyValuesHolder", "No such property (" + this.f220b.a() + ") on target object " + obj + ". Trying reflection instead");
                this.f220b = null;
            }
        }
        Class<?> cls = obj.getClass();
        if (this.c == null) {
            a((Class) cls);
        }
        Iterator<e> it2 = this.e.e.iterator();
        while (it2.hasNext()) {
            e next2 = it2.next();
            if (!next2.a()) {
                if (this.h == null) {
                    b((Class) cls);
                }
                try {
                    next2.a(this.h.invoke(obj, new Object[0]));
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                } catch (InvocationTargetException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                }
            }
        }
    }

    @Override // 
    /* renamed from: a */
    public i clone() {
        try {
            i iVar = (i) super.clone();
            iVar.f219a = this.f219a;
            iVar.f220b = this.f220b;
            iVar.e = this.e.clone();
            iVar.p = this.p;
            return iVar;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    void b(Object obj) {
        if (this.f220b != null) {
            this.f220b.a(obj, d());
        }
        if (this.c != null) {
            try {
                this.g[0] = d();
                this.c.invoke(obj, this.g);
            } catch (IllegalAccessException e) {
                Log.e("PropertyValuesHolder", e.toString());
            } catch (InvocationTargetException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            }
        }
    }

    void b() {
        j jVar;
        if (this.p == null) {
            if (this.d == Integer.class) {
                jVar = i;
            } else {
                jVar = this.d == Float.class ? j : null;
            }
            this.p = jVar;
        }
        if (this.p != null) {
            this.e.a(this.p);
        }
    }

    void a(float f) {
        this.q = this.e.a(f);
    }

    public void a(com.a.b.c cVar) {
        this.f220b = cVar;
    }

    public String c() {
        return this.f219a;
    }

    Object d() {
        return this.q;
    }

    public String toString() {
        return this.f219a + ": " + this.e.toString();
    }

    static String a(String str, String str2) {
        if (str2 != null && str2.length() != 0) {
            return str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
        }
        return str;
    }

    /* compiled from: PropertyValuesHolder.java */
    static class a extends i {
        c h;
        float i;
        private com.a.b.a j;

        public a(String str, float... fArr) {
            super(str);
            a(fArr);
        }

        @Override // com.a.a.i
        public void a(float... fArr) {
            super.a(fArr);
            this.h = (c) this.e;
        }

        @Override // com.a.a.i
        void a(float f) {
            this.i = this.h.b(f);
        }

        @Override // com.a.a.i
        Object d() {
            return Float.valueOf(this.i);
        }

        @Override // com.a.a.i
        /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public a clone() {
            a aVar = (a) super.clone();
            aVar.h = (c) aVar.e;
            return aVar;
        }

        @Override // com.a.a.i
        void b(Object obj) {
            if (this.j != null) {
                this.j.a((com.a.b.a) obj, this.i);
                return;
            }
            if (this.f220b != null) {
                this.f220b.a(obj, Float.valueOf(this.i));
                return;
            }
            if (this.c != null) {
                try {
                    this.g[0] = Float.valueOf(this.i);
                    this.c.invoke(obj, this.g);
                } catch (IllegalAccessException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (InvocationTargetException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }

        @Override // com.a.a.i
        void a(Class cls) {
            if (this.f220b == null) {
                super.a(cls);
            }
        }
    }
}
