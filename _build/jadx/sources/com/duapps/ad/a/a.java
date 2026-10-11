package com.duapps.ad.a;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.duapps.ad.base.h;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: AdmobCacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1984a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final List<c> f1985b;
    private String o;
    private NativeAdOptions.Builder p;
    private int q;
    private Handler r;
    private long s;

    public a(Context context, int i, long j, int i2, String str, String str2) {
        super(context, i, j, str2);
        this.f1985b = Collections.synchronizedList(new LinkedList());
        this.q = i2;
        this.o = str;
        f();
        HandlerThread handlerThread = new HandlerThread("adnative", 10);
        handlerThread.start();
        this.r = new Handler(handlerThread.getLooper(), this);
    }

    private void f() {
        this.p = new NativeAdOptions.Builder();
        this.p.setReturnUrlsForImageAssets(true);
        this.p.setImageOrientation(2);
    }

    @Override // com.duapps.ad.entity.a.b
    public void a(boolean z) {
        super.a(z);
        h.c(f1984a, "refresh request....!");
        if (!com.duapps.ad.c.b.c.a(this.h)) {
            h.c(f1984a, "No Network!");
        } else {
            this.e = true;
            this.r.obtainMessage(0).sendToTarget();
        }
    }

    @Override // com.duapps.ad.entity.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.a.a d() {
        c cVar;
        c cVar2 = null;
        synchronized (this.f1985b) {
            while (this.f1985b.size() > 0 && ((cVar2 = this.f1985b.remove(0)) == null || !cVar2.a())) {
            }
            cVar = cVar2;
        }
        com.duapps.ad.stats.c.c(this.h, cVar == null ? "FAIL" : "OK", this.i);
        return cVar;
    }

    @Override // com.duapps.ad.entity.a.b
    public int b() {
        return this.q;
    }

    @Override // com.duapps.ad.entity.a.b
    public int c() {
        int i;
        synchronized (this.f1985b) {
            Iterator<c> it = this.f1985b.iterator();
            i = 0;
            while (it.hasNext()) {
                c next = it.next();
                if (next == null || !next.a()) {
                    it.remove();
                } else {
                    i++;
                }
            }
        }
        return i;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            this.r.removeMessages(0);
            if (this.d) {
                h.c(f1984a, "Refresh request failed: already refreshing");
                return true;
            }
            this.d = true;
            int c = this.q - c();
            if (c > 0) {
                this.r.obtainMessage(2, c, 0).sendToTarget();
                return true;
            }
            h.c(f1984a, "Refresh request OK: green is full");
            this.d = false;
            return true;
        }
        if (i != 2) {
            return false;
        }
        int i2 = message.arg1;
        if (i2 > 0) {
            a(i2);
            return true;
        }
        this.d = false;
        h.c(f1984a, "Refresh result: DONE for geeen count");
        return true;
    }

    private void a(final int i) {
        final c cVar = new c(this.h, this.i, this.k);
        cVar.a(new d() { // from class: com.duapps.ad.a.a.1
            @Override // com.duapps.ad.a.d
            public void a() {
                com.duapps.ad.stats.h.b(a.this.h, a.this.i, a.this.k);
                if (a.this.n != null) {
                    a.this.n.a();
                }
            }

            @Override // com.duapps.ad.a.d
            public void b() {
                a.this.a(i, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                h.c(a.f1984a, "load Admob ad success");
            }

            @Override // com.duapps.ad.a.d
            public void c() {
            }

            @Override // com.duapps.ad.a.d
            public void a(int i2) {
                a.this.a(i, i2);
                h.c(a.f1984a, "load Admob ad fail errorCode==" + i2);
                if (!a.this.l && a.this.n != null) {
                    a.this.n.a(new com.duapps.ad.a(i2, "No details msg from Admob"));
                }
            }

            @Override // com.duapps.ad.a.d
            public void d() {
            }
        });
        AdLoader.Builder builder = new AdLoader.Builder(this.h, this.o);
        builder.forAppInstallAd(new NativeAppInstallAd.OnAppInstallAdLoadedListener() { // from class: com.duapps.ad.a.a.2
            @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
            public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
                if (nativeAppInstallAd != null) {
                    synchronized (a.this.f1985b) {
                        h.c(a.f1984a, "AdmobCacheManager get NativeAppInstallAd");
                        cVar.a(new b(nativeAppInstallAd));
                        a.this.f1985b.add(cVar);
                    }
                }
            }
        });
        builder.forContentAd(new NativeContentAd.OnContentAdLoadedListener() { // from class: com.duapps.ad.a.a.3
            @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
            public void onContentAdLoaded(NativeContentAd nativeContentAd) {
                if (nativeContentAd != null) {
                    synchronized (a.this.f1985b) {
                        h.c(a.f1984a, "AdmobCacheManager get NativeContentAd");
                        cVar.a(new b(nativeContentAd));
                        a.this.f1985b.add(cVar);
                    }
                }
            }
        });
        if (builder.withAdListener(cVar).withNativeAdOptions(this.p.build()).build() != null) {
            this.d = true;
            h.c(f1984a, "AdmobCacheManager start refresh ad!");
            new AdRequest.Builder().build();
            this.s = SystemClock.elapsedRealtime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        com.duapps.ad.stats.c.e(this.h, this.i, i2, SystemClock.elapsedRealtime() - this.s);
        if (i > 1) {
            this.r.obtainMessage(2, i - 1, 0).sendToTarget();
            return;
        }
        this.d = false;
        h.c(f1984a, "Refresh result: DONE for geeen count");
        if (i2 != 200) {
            this.c = true;
        }
    }
}
