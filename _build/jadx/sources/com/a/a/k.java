package com.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.a.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: ValueAnimator.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends com.a.a.a {
    private static ThreadLocal<a> h = new ThreadLocal<>();
    private static final ThreadLocal<ArrayList<k>> i = new ThreadLocal<ArrayList<k>>() { // from class: com.a.a.k.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<k> initialValue() {
            return new ArrayList<>();
        }
    };
    private static final ThreadLocal<ArrayList<k>> j = new ThreadLocal<ArrayList<k>>() { // from class: com.a.a.k.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<k> initialValue() {
            return new ArrayList<>();
        }
    };
    private static final ThreadLocal<ArrayList<k>> k = new ThreadLocal<ArrayList<k>>() { // from class: com.a.a.k.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<k> initialValue() {
            return new ArrayList<>();
        }
    };
    private static final ThreadLocal<ArrayList<k>> l = new ThreadLocal<ArrayList<k>>() { // from class: com.a.a.k.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<k> initialValue() {
            return new ArrayList<>();
        }
    };
    private static final ThreadLocal<ArrayList<k>> m = new ThreadLocal<ArrayList<k>>() { // from class: com.a.a.k.5
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<k> initialValue() {
            return new ArrayList<>();
        }
    };
    private static final Interpolator n = new AccelerateDecelerateInterpolator();
    private static final j o = new d();
    private static final j p = new com.a.a.b();
    private static long z = 10;

    /* renamed from: b, reason: collision with root package name */
    long f221b;
    i[] f;
    HashMap<String, i> g;
    private long u;
    long c = -1;
    private boolean q = false;
    private int r = 0;
    private float s = 0.0f;
    private boolean t = false;
    int d = 0;
    private boolean v = false;
    private boolean w = false;
    boolean e = false;
    private long x = 300;
    private long y = 0;
    private int A = 0;
    private int B = 1;
    private Interpolator C = n;
    private ArrayList<b> D = null;

    /* compiled from: ValueAnimator.java */
    public interface b {
        void a(k kVar);
    }

    public void a(i... iVarArr) {
        int length = iVarArr.length;
        this.f = iVarArr;
        this.g = new HashMap<>(length);
        for (i iVar : iVarArr) {
            this.g.put(iVar.c(), iVar);
        }
        this.e = false;
    }

    void d() {
        if (!this.e) {
            int length = this.f.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f[i2].b();
            }
            this.e = true;
        }
    }

    public k b(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j2);
        }
        this.x = j2;
        return this;
    }

    public void c(long j2) {
        d();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.d != 1) {
            this.c = j2;
            this.d = 2;
        }
        this.f221b = currentAnimationTimeMillis - j2;
        d(currentAnimationTimeMillis);
    }

    public long g() {
        if (!this.e || this.d == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f221b;
    }

    /* compiled from: ValueAnimator.java */
    private static class a extends Handler {
        private a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            boolean z;
            int i;
            ArrayList arrayList = (ArrayList) k.i.get();
            ArrayList arrayList2 = (ArrayList) k.k.get();
            switch (msg.what) {
                case 0:
                    ArrayList arrayList3 = (ArrayList) k.j.get();
                    if (arrayList.size() <= 0 && arrayList2.size() <= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    while (arrayList3.size() > 0) {
                        ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                        arrayList3.clear();
                        int size = arrayList4.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            k kVar = (k) arrayList4.get(i2);
                            if (kVar.y == 0) {
                                kVar.n();
                            } else {
                                arrayList2.add(kVar);
                            }
                        }
                    }
                    break;
                case 1:
                    z = true;
                    break;
                default:
                    return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) k.m.get();
            ArrayList arrayList6 = (ArrayList) k.l.get();
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                k kVar2 = (k) arrayList2.get(i3);
                if (kVar2.a(currentAnimationTimeMillis)) {
                    arrayList5.add(kVar2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i4 = 0; i4 < size3; i4++) {
                    k kVar3 = (k) arrayList5.get(i4);
                    kVar3.n();
                    kVar3.v = true;
                    arrayList2.remove(kVar3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i5 = 0;
            while (i5 < size4) {
                k kVar4 = (k) arrayList.get(i5);
                if (kVar4.d(currentAnimationTimeMillis)) {
                    arrayList6.add(kVar4);
                }
                if (arrayList.size() == size4) {
                    i = i5 + 1;
                } else {
                    size4--;
                    arrayList6.remove(kVar4);
                    i = i5;
                }
                size4 = size4;
                i5 = i;
            }
            if (arrayList6.size() > 0) {
                int i6 = 0;
                while (true) {
                    int i7 = i6;
                    if (i7 < arrayList6.size()) {
                        ((k) arrayList6.get(i7)).e();
                        i6 = i7 + 1;
                    } else {
                        arrayList6.clear();
                    }
                }
            }
            if (z) {
                if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
                    sendEmptyMessageDelayed(1, Math.max(0L, k.z - (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)));
                }
            }
        }
    }

    public void a(int i2) {
        this.A = i2;
    }

    public void b(int i2) {
        this.B = i2;
    }

    private void a(boolean z2) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.q = z2;
        this.r = 0;
        this.d = 0;
        this.w = true;
        this.t = false;
        j.get().add(this);
        if (this.y == 0) {
            c(g());
            this.d = 0;
            this.v = true;
            if (this.f212a != null) {
                ArrayList arrayList = (ArrayList) this.f212a.clone();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((a.InterfaceC0002a) arrayList.get(i2)).a(this);
                }
            }
        }
        a aVar = h.get();
        if (aVar == null) {
            aVar = new a();
            h.set(aVar);
        }
        aVar.sendEmptyMessage(0);
    }

    @Override // com.a.a.a
    public void a() {
        a(false);
    }

    @Override // com.a.a.a
    public void b() {
        if (this.d != 0 || j.get().contains(this) || k.get().contains(this)) {
            if (this.v && this.f212a != null) {
                Iterator it = ((ArrayList) this.f212a.clone()).iterator();
                while (it.hasNext()) {
                    ((a.InterfaceC0002a) it.next()).c(this);
                }
            }
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        i.get().remove(this);
        j.get().remove(this);
        k.get().remove(this);
        this.d = 0;
        if (this.v && this.f212a != null) {
            ArrayList arrayList = (ArrayList) this.f212a.clone();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((a.InterfaceC0002a) arrayList.get(i2)).b(this);
            }
        }
        this.v = false;
        this.w = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        d();
        i.get().add(this);
        if (this.y > 0 && this.f212a != null) {
            ArrayList arrayList = (ArrayList) this.f212a.clone();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((a.InterfaceC0002a) arrayList.get(i2)).a(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j2) {
        if (!this.t) {
            this.t = true;
            this.u = j2;
        } else {
            long j3 = j2 - this.u;
            if (j3 > this.y) {
                this.f221b = j2 - (j3 - this.y);
                this.d = 1;
                return true;
            }
        }
        return false;
    }

    boolean d(long j2) {
        float f;
        boolean z2 = false;
        if (this.d == 0) {
            this.d = 1;
            if (this.c < 0) {
                this.f221b = j2;
            } else {
                this.f221b = j2 - this.c;
                this.c = -1L;
            }
        }
        switch (this.d) {
            case 1:
            case 2:
                float f2 = this.x > 0 ? (j2 - this.f221b) / this.x : 1.0f;
                if (f2 < 1.0f) {
                    f = f2;
                } else if (this.r < this.A || this.A == -1) {
                    if (this.f212a != null) {
                        int size = this.f212a.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            this.f212a.get(i2).d(this);
                        }
                    }
                    if (this.B == 2) {
                        this.q = !this.q;
                    }
                    this.r += (int) f2;
                    f = f2 % 1.0f;
                    this.f221b += this.x;
                } else {
                    f = Math.min(f2, 1.0f);
                    z2 = true;
                }
                if (this.q) {
                    f = 1.0f - f;
                }
                a(f);
                break;
            default:
                return z2;
        }
    }

    void a(float f) {
        float interpolation = this.C.getInterpolation(f);
        this.s = interpolation;
        int length = this.f.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f[i2].a(interpolation);
        }
        if (this.D != null) {
            int size = this.D.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.D.get(i3).a(this);
            }
        }
    }

    @Override // com.a.a.a
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public k clone() {
        k kVar = (k) super.clone();
        if (this.D != null) {
            ArrayList<b> arrayList = this.D;
            kVar.D = new ArrayList<>();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                kVar.D.add(arrayList.get(i2));
            }
        }
        kVar.c = -1L;
        kVar.q = false;
        kVar.r = 0;
        kVar.e = false;
        kVar.d = 0;
        kVar.t = false;
        i[] iVarArr = this.f;
        if (iVarArr != null) {
            int length = iVarArr.length;
            kVar.f = new i[length];
            kVar.g = new HashMap<>(length);
            for (int i3 = 0; i3 < length; i3++) {
                i clone = iVarArr[i3].clone();
                kVar.f[i3] = clone;
                kVar.g.put(clone.c(), clone);
            }
        }
        return kVar;
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.f != null) {
            for (int i2 = 0; i2 < this.f.length; i2++) {
                str = str + "\n    " + this.f[i2].toString();
            }
        }
        return str;
    }
}
