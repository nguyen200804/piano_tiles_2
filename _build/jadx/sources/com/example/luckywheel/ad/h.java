package com.example.luckywheel.ad;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class h<T> implements Comparable<h> {

    /* renamed from: a, reason: collision with root package name */
    protected T f2305a;

    /* renamed from: b, reason: collision with root package name */
    protected int f2306b;
    protected long c;
    protected long d;
    private int e;

    public interface a {
        void a();
    }

    public interface b {
        void a();

        void b();
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(h hVar) {
        return hVar.b() - b();
    }

    public int a(String str) {
        return com.example.luckywheel.b.a.a().b(str);
    }

    public void a(int i) {
        this.e = i;
    }

    public abstract void a(b bVar);

    protected abstract void a(T t);

    public void a(T t, int i) {
        a(i);
        a((h<T>) t);
    }

    public abstract boolean a();

    public int b() {
        return this.f2306b;
    }
}
