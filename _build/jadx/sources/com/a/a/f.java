package com.a.a;

import android.view.animation.Interpolator;
import com.a.a.e;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: KeyframeSet.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class f {

    /* renamed from: a, reason: collision with root package name */
    int f215a;

    /* renamed from: b, reason: collision with root package name */
    e f216b;
    e c;
    Interpolator d;
    ArrayList<e> e = new ArrayList<>();
    j f;

    public f(e... eVarArr) {
        this.f215a = eVarArr.length;
        this.e.addAll(Arrays.asList(eVarArr));
        this.f216b = this.e.get(0);
        this.c = this.e.get(this.f215a - 1);
        this.d = this.c.d();
    }

    public static f a(float... fArr) {
        int length = fArr.length;
        e.a[] aVarArr = new e.a[Math.max(length, 2)];
        if (length == 1) {
            aVarArr[0] = (e.a) e.a(0.0f);
            aVarArr[1] = (e.a) e.a(1.0f, fArr[0]);
        } else {
            aVarArr[0] = (e.a) e.a(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                aVarArr[i] = (e.a) e.a(i / (length - 1), fArr[i]);
            }
        }
        return new c(aVarArr);
    }

    public void a(j jVar) {
        this.f = jVar;
    }

    @Override // 
    /* renamed from: b */
    public f clone() {
        ArrayList<e> arrayList = this.e;
        int size = this.e.size();
        e[] eVarArr = new e[size];
        for (int i = 0; i < size; i++) {
            eVarArr[i] = arrayList.get(i).e();
        }
        return new f(eVarArr);
    }

    public Object a(float f) {
        if (this.f215a == 2) {
            if (this.d != null) {
                f = this.d.getInterpolation(f);
            }
            return this.f.a(f, this.f216b.b(), this.c.b());
        }
        if (f <= 0.0f) {
            e eVar = this.e.get(1);
            Interpolator d = eVar.d();
            if (d != null) {
                f = d.getInterpolation(f);
            }
            float c = this.f216b.c();
            return this.f.a((f - c) / (eVar.c() - c), this.f216b.b(), eVar.b());
        }
        if (f >= 1.0f) {
            e eVar2 = this.e.get(this.f215a - 2);
            Interpolator d2 = this.c.d();
            if (d2 != null) {
                f = d2.getInterpolation(f);
            }
            float c2 = eVar2.c();
            return this.f.a((f - c2) / (this.c.c() - c2), eVar2.b(), this.c.b());
        }
        e eVar3 = this.f216b;
        int i = 1;
        while (i < this.f215a) {
            e eVar4 = this.e.get(i);
            if (f >= eVar4.c()) {
                i++;
                eVar3 = eVar4;
            } else {
                Interpolator d3 = eVar4.d();
                if (d3 != null) {
                    f = d3.getInterpolation(f);
                }
                float c3 = eVar3.c();
                return this.f.a((f - c3) / (eVar4.c() - c3), eVar3.b(), eVar4.b());
            }
        }
        return this.c.b();
    }

    public String toString() {
        String str = " ";
        int i = 0;
        while (i < this.f215a) {
            String str2 = str + this.e.get(i).b() + "  ";
            i++;
            str = str2;
        }
        return str;
    }
}
