package com.a.a;

import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ObjectAnimator.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g extends k {
    private static final Map<String, com.a.b.c> h = new HashMap();
    private Object i;
    private String j;
    private com.a.b.c k;

    static {
        h.put("alpha", h.f217a);
        h.put("pivotX", h.f218b);
        h.put("pivotY", h.c);
        h.put("translationX", h.d);
        h.put("translationY", h.e);
        h.put("rotation", h.f);
        h.put("rotationX", h.g);
        h.put("rotationY", h.h);
        h.put("scaleX", h.i);
        h.put("scaleY", h.j);
        h.put("scrollX", h.k);
        h.put("scrollY", h.l);
        h.put("x", h.m);
        h.put("y", h.n);
    }

    public void a(com.a.b.c cVar) {
        if (this.f != null) {
            i iVar = this.f[0];
            String c = iVar.c();
            iVar.a(cVar);
            this.g.remove(c);
            this.g.put(this.j, iVar);
        }
        if (this.k != null) {
            this.j = cVar.a();
        }
        this.k = cVar;
        this.e = false;
    }

    public static g a(Object obj, i... iVarArr) {
        g gVar = new g();
        gVar.i = obj;
        gVar.a(iVarArr);
        return gVar;
    }

    @Override // com.a.a.k, com.a.a.a
    public void a() {
        super.a();
    }

    @Override // com.a.a.k
    void d() {
        if (!this.e) {
            if (this.k == null && com.a.c.a.a.f224a && (this.i instanceof View) && h.containsKey(this.j)) {
                a(h.get(this.j));
            }
            int length = this.f.length;
            for (int i = 0; i < length; i++) {
                this.f[i].a(this.i);
            }
            super.d();
        }
    }

    @Override // com.a.a.k
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public g b(long j) {
        super.b(j);
        return this;
    }

    @Override // com.a.a.k
    void a(float f) {
        super.a(f);
        int length = this.f.length;
        for (int i = 0; i < length; i++) {
            this.f[i].b(this.i);
        }
    }

    @Override // com.a.a.k
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public g clone() {
        return (g) super.clone();
    }

    @Override // com.a.a.k
    public String toString() {
        String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.i;
        if (this.f != null) {
            for (int i = 0; i < this.f.length; i++) {
                str = str + "\n    " + this.f[i].toString();
            }
        }
        return str;
    }
}
