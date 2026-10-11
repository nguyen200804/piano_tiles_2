package com.example.luckywheel.b;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static e f2313a;

    /* renamed from: b, reason: collision with root package name */
    private int f2314b = 5000;
    private int c;
    private List<c> d;

    public interface a {
        void a(int i);

        void b(int i);
    }

    private e() {
    }

    public static e a() {
        if (f2313a == null) {
            synchronized (e.class) {
                if (f2313a == null) {
                    f2313a = new e();
                }
            }
        }
        return f2313a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, int i, int i2) {
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().a(z, i, i2);
        }
    }

    void a(int i) {
        if (this.c != i) {
            a(false, this.c, i);
            this.c = i;
        }
    }

    public void a(Context context, int i, a aVar) {
        if (i == 0) {
            i = 3;
        }
        new d(context, i, new o(this, aVar)).f();
    }

    public void a(c cVar) {
        if (cVar == null) {
            return;
        }
        if (this.d == null) {
            this.d = new ArrayList();
        }
        this.d.add(cVar);
    }

    public boolean b() {
        return this.f2314b <= 0;
    }

    public int c() {
        return this.c;
    }
}
