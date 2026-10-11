package com.duapps.ad.base;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.duapps.ad.base.i;
import com.duapps.ad.entity.AdData;
import java.util.Iterator;
import java.util.List;

/* compiled from: PreParseCacheParser.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2048a = l.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static l f2049b;
    private Context c;
    private i d;
    private i.a e = new a();
    private Object f = new Object();
    private long g;

    public static l a(Context context) {
        synchronized (l.class) {
            if (f2049b == null) {
                f2049b = new l(context.getApplicationContext());
            }
        }
        return f2049b;
    }

    private l(Context context) {
        this.c = context;
        this.d = i.a(this.c);
    }

    public void a(List<AdData> list) {
        Iterator<AdData> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public void a(AdData adData) {
        synchronized (this.f) {
            boolean a2 = com.duapps.ad.c.b.c.a(this.c, adData.d);
            boolean z = com.duapps.ad.stats.i.a(this.c).c(adData.d) == 1;
            if (adData != null && !TextUtils.isEmpty(adData.d) && !a2 && AdData.b(adData) && !z) {
                this.d.a(adData, adData.i, this.e);
            }
        }
    }

    public void a() {
        synchronized (this.f) {
            if (this.g + 14400000 < System.currentTimeMillis()) {
                com.duapps.ad.stats.i.a(this.c).a();
                com.duapps.ad.stats.i.a(this.c).b(this.c);
                this.g = System.currentTimeMillis();
            }
        }
    }

    public boolean b(AdData adData) {
        if (adData == null || TextUtils.isEmpty(adData.d)) {
            return false;
        }
        return this.d.a(adData, adData.d);
    }

    public j a(String str) {
        return com.duapps.ad.stats.i.a(this.c).d(str);
    }

    /* compiled from: PreParseCacheParser.java */
    private class a implements i.a {
        private a() {
        }

        @Override // com.duapps.ad.base.i.a
        public void a(AdData adData, int i, int i2, long j) {
            com.duapps.ad.stats.h.b(l.this.c, adData, i, i2, j);
        }

        @Override // com.duapps.ad.base.i.a
        public void a(AdData adData, j jVar) {
            com.duapps.ad.stats.i.a(l.this.c).b(jVar);
        }

        @Override // com.duapps.ad.base.i.a
        public void b(AdData adData, j jVar) {
            if (adData != null && jVar != null) {
                Intent intent = new Intent("action_notify_preparse_cache_result");
                intent.putExtra("ad_id", adData.f2122b);
                intent.putExtra("ad_pkgname", adData.d);
                intent.putExtra("parse_result_type", jVar.c);
                LocalBroadcastManager.getInstance(l.this.c).sendBroadcast(intent);
            }
        }
    }
}
