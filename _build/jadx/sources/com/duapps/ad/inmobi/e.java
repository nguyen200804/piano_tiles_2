package com.duapps.ad.inmobi;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.duapps.ad.base.h;
import com.duapps.ad.base.t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* compiled from: NativeAdIMWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e implements com.duapps.ad.entity.a.a {
    private static WeakHashMap<View, WeakReference<e>> e = new WeakHashMap<>();

    /* renamed from: a, reason: collision with root package name */
    private Context f2176a;

    /* renamed from: b, reason: collision with root package name */
    private List<View> f2177b = new ArrayList();
    private View c;
    private IMData d;
    private a f;
    private com.duapps.ad.stats.d g;
    private com.duapps.ad.b h;
    private View.OnTouchListener i;
    private com.duapps.ad.e j;
    private String k;

    public e(Context context, IMData iMData, com.duapps.ad.b bVar, String str) {
        this.d = iMData;
        this.f2176a = context;
        this.h = bVar;
        this.k = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        return this.d != null;
    }

    private void n() {
        for (View view : this.f2177b) {
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
        }
        this.f2177b.clear();
    }

    private void b(View view) {
        this.f2177b.add(view);
        view.setOnClickListener(this.f);
        view.setOnTouchListener(this.f);
    }

    private void a(List<View> list, View view) {
        list.add(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                a(list, viewGroup.getChildAt(i));
            }
        }
    }

    /* compiled from: NativeAdIMWrapper.java */
    class a implements View.OnClickListener, View.OnTouchListener {

        /* renamed from: b, reason: collision with root package name */
        private int f2179b;
        private int c;
        private int d;
        private int e;
        private float f;
        private float g;
        private int h;
        private int i;
        private boolean j;

        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (e.this.h != null) {
                e.this.h.a();
            }
            if (this.j) {
                h.c("NativeAdIMWrapper", "No touch data recorded,please ensure touch events reach the ad View by returing false if you intercept the event.");
            }
            if (e.this.g == null) {
                e.this.g = new com.duapps.ad.stats.d(e.this.f2176a);
                e.this.g.a(e.this.j);
            }
            if (e.this.a()) {
                e.this.g.a(new com.duapps.ad.stats.f(e.this.d, e.this.k));
                t.a().a(new d(e.this.f2176a, true, e.this.d));
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && e.this.c != null) {
                this.d = e.this.c.getWidth();
                this.e = e.this.c.getHeight();
                int[] iArr = new int[2];
                e.this.c.getLocationInWindow(iArr);
                this.f = iArr[0];
                this.g = iArr[1];
                Rect rect = new Rect();
                e.this.c.getGlobalVisibleRect(rect);
                this.i = rect.width();
                this.h = rect.height();
                int[] iArr2 = new int[2];
                view.getLocationInWindow(iArr2);
                this.f2179b = (((int) motionEvent.getX()) + iArr2[0]) - iArr[0];
                this.c = (iArr2[1] + ((int) motionEvent.getY())) - iArr[1];
                this.j = true;
            }
            if (e.this.i != null) {
                return e.this.i.onTouch(view, motionEvent);
            }
            return false;
        }
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(View view) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, view);
        a(view, arrayList);
    }

    public void a(View view, List<View> list) {
        if (view == null) {
            h.d("NativeAdIMWrapper", "registerViewForInteraction() -> Must provide a view");
            return;
        }
        if (list == null || list.size() == 0) {
            h.d("NativeAdIMWrapper", "registerViewForInteraction() -> Invalid set of clickable views");
            return;
        }
        if (!a()) {
            h.d("NativeAdIMWrapper", "registerViewForInteraction() -> Ad not loaded");
            return;
        }
        if (this.c != null) {
            h.b("NativeAdIMWrapper", "Native Ad was already registered with a View, Auto unregistering and proceeding");
            b();
        }
        if (e.containsKey(view) && e.get(view).get() != null) {
            e.get(view).get().b();
        }
        this.f = new a();
        this.c = view;
        Iterator<View> it = list.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
        e.put(view, new WeakReference<>(this));
        com.duapps.ad.stats.h.b(this.f2176a, new com.duapps.ad.stats.f(this.d), this.k);
        t.a().a(new d(this.f2176a, false, this.d));
    }

    @Override // com.duapps.ad.entity.a.a
    public void b() {
        if (this.c != null) {
            if (!e.containsKey(this.c) || e.get(this.c).get() != this) {
                h.b("NativeAdIMWrapper", "unregisterView() -> View not regitered with this NativeAd");
            } else {
                e.remove(this.c);
                n();
            }
        }
    }

    @Override // com.duapps.ad.entity.a.a
    public void c() {
        this.j = null;
        n();
        if (this.c != null) {
            e.remove(this.c);
            this.c = null;
        }
    }

    @Override // com.duapps.ad.entity.a.a
    public String d() {
        if (a()) {
            return this.d.q;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String e() {
        if (a()) {
            return this.d.p;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String f() {
        if (a()) {
            return this.d.s;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String g() {
        if (a()) {
            return this.d.n;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String h() {
        if (a()) {
            return this.d.m;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public float i() {
        if (a()) {
            return this.d.o;
        }
        return 0.0f;
    }

    @Override // com.duapps.ad.entity.a.a
    public String l() {
        return "im";
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(com.duapps.ad.e eVar) {
        this.j = eVar;
    }

    @Override // com.duapps.ad.entity.a.a
    public int j() {
        return 3;
    }

    @Override // com.duapps.ad.entity.a.a
    public Object k() {
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public Object m() {
        return this.d;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(String str) {
        this.k = str;
    }
}
