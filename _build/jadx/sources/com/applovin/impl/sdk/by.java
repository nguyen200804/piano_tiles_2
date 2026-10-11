package com.applovin.impl.sdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class by implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    private static int f481a = 0;

    /* renamed from: b, reason: collision with root package name */
    private final int f482b;
    private final String c;
    private final Object d;

    private by(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("No name specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No default value specified");
        }
        this.c = str;
        this.d = obj;
        this.f482b = f481a;
        f481a++;
    }

    public int a() {
        return this.f482b;
    }

    Object a(Object obj) {
        return this.d.getClass().cast(obj);
    }

    public String b() {
        return this.c;
    }

    public Object c() {
        return this.d;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null || !(obj instanceof by)) {
            return 0;
        }
        return this.c.compareTo(((by) obj).b());
    }
}
