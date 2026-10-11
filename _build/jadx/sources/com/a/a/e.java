package com.a.a;

import android.view.animation.Interpolator;

/* compiled from: Keyframe.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class e implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    float f213a;

    /* renamed from: b, reason: collision with root package name */
    Class f214b;
    private Interpolator d = null;
    boolean c = false;

    public abstract void a(Object obj);

    public abstract Object b();

    @Override // 
    public abstract e e();

    public static e a(float f, float f2) {
        return new a(f, f2);
    }

    public static e a(float f) {
        return new a(f);
    }

    public boolean a() {
        return this.c;
    }

    public float c() {
        return this.f213a;
    }

    public Interpolator d() {
        return this.d;
    }

    public void a(Interpolator interpolator) {
        this.d = interpolator;
    }

    /* compiled from: Keyframe.java */
    static class a extends e {
        float d;

        a(float f, float f2) {
            this.f213a = f;
            this.d = f2;
            this.f214b = Float.TYPE;
            this.c = true;
        }

        a(float f) {
            this.f213a = f;
            this.f214b = Float.TYPE;
        }

        public float f() {
            return this.d;
        }

        @Override // com.a.a.e
        public Object b() {
            return Float.valueOf(this.d);
        }

        @Override // com.a.a.e
        public void a(Object obj) {
            if (obj != null && obj.getClass() == Float.class) {
                this.d = ((Float) obj).floatValue();
                this.c = true;
            }
        }

        @Override // com.a.a.e
        /* renamed from: g, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public a e() {
            a aVar = new a(c(), this.d);
            aVar.a(d());
            return aVar;
        }
    }
}
