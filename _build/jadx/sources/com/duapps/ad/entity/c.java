package com.duapps.ad.entity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.duapps.ad.base.h;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import com.duapps.ad.base.t;
import com.duapps.ad.e;
import com.duapps.ad.stats.f;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.apache.http.Header;

/* compiled from: NativeAdDLWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements com.duapps.ad.entity.a.a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2134a = c.class.getSimpleName();
    private static Handler n = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    private Context f2135b;
    private View d;
    private AdData e;
    private a g;
    private com.duapps.ad.stats.d h;
    private com.duapps.ad.b i;
    private View.OnTouchListener j;
    private e k;
    private boolean l;
    private String m;
    private WeakHashMap<View, WeakReference<c>> f = new WeakHashMap<>();
    private Runnable o = new Runnable() { // from class: com.duapps.ad.entity.c.2
        @Override // java.lang.Runnable
        public void run() {
            c.this.l = false;
            c.this.u();
            c.this.s();
        }
    };
    private BroadcastReceiver p = new BroadcastReceiver() { // from class: com.duapps.ad.entity.c.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("action_notify_preparse_cache_result".equals(intent.getAction())) {
                long longExtra = intent.getLongExtra("ad_id", -1L);
                if (c.this.e != null && c.this.l && longExtra == c.this.e.f2122b) {
                    c.this.s();
                    c.this.u();
                    c.n.removeCallbacks(c.this.o);
                    c.this.l = false;
                }
            }
        }
    };
    private List<View> c = Collections.synchronizedList(new ArrayList());

    public c(Context context, AdData adData, com.duapps.ad.b bVar, String str) {
        this.e = adData;
        this.f2135b = context;
        this.i = bVar;
        this.m = str;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(View view) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, view);
        a(view, arrayList);
    }

    public void a(View view, List<View> list) {
        if (view == null) {
            h.d(f2134a, "registerViewForInteraction() -> Must provide a view");
            return;
        }
        if (list == null || list.size() == 0) {
            h.d(f2134a, "registerViewForInteraction() -> Invalid set of clickable views");
            return;
        }
        if (!q()) {
            h.d(f2134a, "registerViewForInteraction() -> Ad not loaded");
            return;
        }
        if (this.d != null) {
            h.b(f2134a, "Native Ad was already registered with a View, Auto unregistering and proceeding");
            b();
        }
        if (this.f.containsKey(view) && this.f.get(view).get() != null) {
            this.f.get(view).get().b();
        }
        this.g = new a();
        this.d = view;
        Iterator<View> it = list.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
        this.f.put(view, new WeakReference<>(this));
        com.duapps.ad.stats.h.b(this.f2135b, new f(this.e), this.m);
        String[] strArr = this.e.F;
        if (strArr != null && strArr.length > 0) {
            for (final String str : strArr) {
                t.a().a(new Runnable() { // from class: com.duapps.ad.entity.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            int statusCode = r.a(new URL(str), (List<Header>) null, true).getStatusLine().getStatusCode();
                            if (statusCode != 200) {
                                h.c(c.f2134a, "Impression to " + c.this.e.o + " failed!");
                            } else {
                                h.c(c.f2134a, "Impression to " + c.this.e.o + " success!");
                            }
                            com.duapps.ad.stats.c.a(c.this.f2135b, c.this.e, statusCode);
                        } catch (Exception e) {
                            h.c(c.f2134a, "Impression to " + c.this.e.o + " exception!");
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return this.e != null;
    }

    @Override // com.duapps.ad.entity.a.a
    public void b() {
        if (this.d != null) {
            if (!this.f.containsKey(this.d) || this.f.get(this.d).get() != this) {
                h.b(f2134a, "unregisterView() -> View not regitered with this NativeAd");
                return;
            }
            this.f.remove(this.d);
            r();
            this.d = null;
        }
    }

    private void r() {
        synchronized (this.c) {
            Iterator<View> it = this.c.iterator();
            while (it.hasNext()) {
                View next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    next.setOnClickListener(null);
                    next.setOnTouchListener(null);
                }
            }
            this.c.clear();
        }
    }

    private void b(View view) {
        synchronized (this.c) {
            this.c.add(view);
        }
        view.setOnClickListener(this.g);
        view.setOnTouchListener(this.g);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        h.c(f2134a, "mClickHandler handleClick");
        if (this.h != null && this.e != null) {
            this.h.a(new f(this.e));
            if (this.e.G != null && this.e.G.length > 0 && com.duapps.ad.c.b.c.a(this.f2135b)) {
                com.duapps.ad.stats.h.a(this.e);
            }
        }
    }

    /* compiled from: NativeAdDLWrapper.java */
    class a implements View.OnClickListener, View.OnTouchListener {

        /* renamed from: b, reason: collision with root package name */
        private int f2141b;
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
            if (c.this.i != null) {
                c.this.i.a();
            }
            if (this.j) {
                h.c(c.f2134a, "No touch data recorded,please ensure touch events reach the ad View by returing false if you intercept the event.");
            }
            if (c.this.h == null) {
                c.this.h = new com.duapps.ad.stats.d(c.this.f2135b);
                c.this.h.a(c.this.k);
            }
            if (!c.this.q() || c.this.h.e()) {
                h.c(c.f2134a, "mClickHandler isWorking");
                return;
            }
            h.c(c.f2134a, "mClickHandler handleClick");
            if (!AdData.b(c.this.e) || !l.a(c.this.f2135b).b(c.this.e)) {
                c.this.s();
            } else if (!c.this.l) {
                c.this.l = true;
                c.this.t();
                c.n.postDelayed(c.this.o, 4000L);
            }
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && c.this.d != null) {
                this.d = c.this.d.getWidth();
                this.e = c.this.d.getHeight();
                int[] iArr = new int[2];
                c.this.d.getLocationInWindow(iArr);
                this.f = iArr[0];
                this.g = iArr[1];
                Rect rect = new Rect();
                c.this.d.getGlobalVisibleRect(rect);
                this.i = rect.width();
                this.h = rect.height();
                int[] iArr2 = new int[2];
                view.getLocationInWindow(iArr2);
                this.f2141b = (((int) motionEvent.getX()) + iArr2[0]) - iArr[0];
                this.c = (iArr2[1] + ((int) motionEvent.getY())) - iArr[1];
                this.j = true;
            }
            return c.this.j != null && c.this.j.onTouch(view, motionEvent);
        }
    }

    @Override // com.duapps.ad.entity.a.a
    public String d() {
        if (q()) {
            return this.e.t;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String e() {
        if (q()) {
            return this.e.h;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String f() {
        if (q()) {
            return this.e.B;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String g() {
        if (q()) {
            return this.e.f;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public String h() {
        if (q()) {
            return this.e.c;
        }
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    public float i() {
        if (q()) {
            return this.e.l;
        }
        return 0.0f;
    }

    @Override // com.duapps.ad.entity.a.a
    public void c() {
        this.k = null;
    }

    public AdData a() {
        return this.e;
    }

    @Override // com.duapps.ad.entity.a.a
    public int j() {
        return 1;
    }

    @Override // com.duapps.ad.entity.a.a
    public String l() {
        return "dl";
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(e eVar) {
        this.k = eVar;
    }

    @Override // com.duapps.ad.entity.a.a
    public Object k() {
        return null;
    }

    @Override // com.duapps.ad.entity.a.a
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public AdData m() {
        return this.e;
    }

    @Override // com.duapps.ad.entity.a.a
    public void a(String str) {
        this.m = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        try {
            LocalBroadcastManager.getInstance(this.f2135b).registerReceiver(this.p, new IntentFilter("action_notify_preparse_cache_result"));
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        try {
            LocalBroadcastManager.getInstance(this.f2135b).unregisterReceiver(this.p);
        } catch (Exception e) {
        }
    }
}
