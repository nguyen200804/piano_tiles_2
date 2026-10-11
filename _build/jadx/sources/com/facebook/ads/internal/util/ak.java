package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.b.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ak implements af<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final String f2858a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2859b;
    private final Context c;
    private final com.facebook.ads.internal.g.f d;
    private final a e;
    private final com.facebook.ads.internal.b.a f;
    private int g;
    private int h;
    private final ac i;

    public interface a {
        boolean a();

        boolean b();

        int getCurrentPosition();

        boolean getGlobalVisibleRect(Rect rect);

        long getInitialBufferTime();

        int getMeasuredHeight();

        int getMeasuredWidth();

        VideoStartReason getVideoStartReason();

        float getVolume();
    }

    protected enum b {
        PLAY(0),
        SKIP(1),
        TIME(2),
        MRC(3),
        PAUSE(4),
        RESUME(5),
        MUTE(6),
        UNMUTE(7),
        VIEWABLE_IMPRESSION(10);

        public final int j;

        b(int i) {
            this.j = i;
        }
    }

    public ak(Context context, com.facebook.ads.internal.g.f fVar, a aVar, List<com.facebook.ads.internal.b.b> list, String str) {
        this(context, fVar, aVar, list, str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ak(Context context, final com.facebook.ads.internal.g.f fVar, a aVar, List<com.facebook.ads.internal.b.b> list, final String str, @Nullable Bundle bundle) {
        this.f2859b = true;
        this.g = 0;
        this.h = 0;
        this.c = context;
        this.d = fVar;
        this.e = aVar;
        this.f2858a = str;
        list.add(new com.facebook.ads.internal.b.b(0.5d, -1.0d, 2.0d, true) { // from class: com.facebook.ads.internal.util.ak.1
            @Override // com.facebook.ads.internal.b.b
            protected void a(boolean z, boolean z2, com.facebook.ads.internal.b.c cVar) {
                fVar.b(str, ak.this.a(b.MRC));
            }
        });
        list.add(new com.facebook.ads.internal.b.b(1.0E-7d, -1.0d, 0.001d, false) { // from class: com.facebook.ads.internal.util.ak.2
            @Override // com.facebook.ads.internal.b.b
            protected void a(boolean z, boolean z2, com.facebook.ads.internal.b.c cVar) {
                fVar.b(str, ak.this.a(b.VIEWABLE_IMPRESSION));
            }
        });
        if (bundle != null) {
            this.f = new com.facebook.ads.internal.b.a(context, (View) aVar, list, bundle.getBundle("adQualityManager"));
            this.g = bundle.getInt("lastProgressTimeMS");
            this.h = bundle.getInt("lastBoundaryTimeMS");
        } else {
            this.f = new com.facebook.ads.internal.b.a(context, (View) aVar, list);
        }
        this.i = new ac(new Handler(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a(b bVar) {
        return a(bVar, this.e.getCurrentPosition());
    }

    private Map<String, String> a(b bVar, int i) {
        Map<String, String> c = c(i);
        c.put("action", String.valueOf(bVar.j));
        return c;
    }

    private void a(int i, boolean z) {
        if (i <= 0.0d || i < this.g) {
            return;
        }
        if (i > this.g) {
            this.f.a((i - this.g) / 1000.0f, d());
            this.g = i;
            if (i - this.h >= 5000) {
                this.d.b(this.f2858a, a(b.TIME, i));
                this.h = this.g;
                this.f.a();
                return;
            }
        }
        if (z) {
            this.d.b(this.f2858a, a(b.TIME, i));
        }
    }

    private void a(Map<String, String> map) {
        map.put("exoplayer", String.valueOf(this.e.a()));
        map.put("prep", Long.toString(this.e.getInitialBufferTime()));
    }

    private void a(Map<String, String> map, int i) {
        map.put("ptime", String.valueOf(this.h / 1000.0f));
        map.put("time", String.valueOf(i / 1000.0f));
    }

    private void b(Map<String, String> map) {
        com.facebook.ads.internal.b.c b2 = this.f.b();
        c.a b3 = b2.b();
        map.put("vwa", String.valueOf(b3.c()));
        map.put("vwm", String.valueOf(b3.b()));
        map.put("vwmax", String.valueOf(b3.d()));
        map.put("vtime_ms", String.valueOf(b3.f() * 1000.0d));
        map.put("mcvt_ms", String.valueOf(b3.g() * 1000.0d));
        c.a c = b2.c();
        map.put("vla", String.valueOf(c.c()));
        map.put("vlm", String.valueOf(c.b()));
        map.put("vlmax", String.valueOf(c.d()));
        map.put("atime_ms", String.valueOf(c.f() * 1000.0d));
        map.put("mcat_ms", String.valueOf(c.g() * 1000.0d));
    }

    private Map<String, String> c(int i) {
        HashMap hashMap = new HashMap();
        al.a(hashMap, this.e.getVideoStartReason() == VideoStartReason.AUTO_STARTED, this.e.b() ? false : true);
        a(hashMap);
        b(hashMap);
        a(hashMap, i);
        c(hashMap);
        return hashMap;
    }

    private void c(Map<String, String> map) {
        Rect rect = new Rect();
        this.e.getGlobalVisibleRect(rect);
        map.put("pt", String.valueOf(rect.top));
        map.put("pl", String.valueOf(rect.left));
        map.put("ph", String.valueOf(this.e.getMeasuredHeight()));
        map.put("pw", String.valueOf(this.e.getMeasuredWidth()));
        WindowManager windowManager = (WindowManager) this.c.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        map.put("vph", String.valueOf(displayMetrics.heightPixels));
        map.put("vpw", String.valueOf(displayMetrics.widthPixels));
    }

    public void a(int i) {
        a(i, false);
    }

    public void a(int i, int i2) {
        a(i, true);
        this.h = i2;
        this.g = i2;
        this.f.a();
    }

    public void b() {
        this.c.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.i);
    }

    public void b(int i) {
        a(i, true);
        this.h = 0;
        this.g = 0;
        this.f.a();
    }

    public void c() {
        this.c.getContentResolver().unregisterContentObserver(this.i);
    }

    protected float d() {
        return al.a(this.c) * this.e.getVolume();
    }

    public void e() {
        if (d() < 0.05d) {
            if (this.f2859b) {
                f();
                this.f2859b = false;
                return;
            }
            return;
        }
        if (this.f2859b) {
            return;
        }
        g();
        this.f2859b = true;
    }

    public void f() {
        this.d.b(this.f2858a, a(b.MUTE));
    }

    public void g() {
        this.d.b(this.f2858a, a(b.UNMUTE));
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        a(k(), k());
        Bundle bundle = new Bundle();
        bundle.putInt("lastProgressTimeMS", this.g);
        bundle.putInt("lastBoundaryTimeMS", this.h);
        bundle.putBundle("adQualityManager", this.f.getSaveInstanceState());
        return bundle;
    }

    public void h() {
        this.d.b(this.f2858a, a(b.SKIP));
    }

    public void i() {
        this.d.b(this.f2858a, a(b.PAUSE));
    }

    public void j() {
        this.d.b(this.f2858a, a(b.RESUME));
    }

    public int k() {
        return this.g;
    }
}
