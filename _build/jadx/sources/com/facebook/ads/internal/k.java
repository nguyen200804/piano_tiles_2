package com.facebook.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.v;
import com.facebook.ads.internal.adapters.w;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.server.a;
import com.facebook.ads.internal.util.an;
import com.facebook.ads.internal.util.p;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k implements a.InterfaceC0077a {

    /* renamed from: a, reason: collision with root package name */
    private final Context f2808a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2809b;
    private final com.facebook.ads.internal.server.a c;
    private final f d;
    private final d e;
    private final AdSize f;
    private final int g;
    private boolean h;
    private final Handler i;
    private final Runnable j;
    private a k;
    private com.facebook.ads.internal.f.d l;

    public interface a {
        void a(com.facebook.ads.internal.b bVar);

        void a(List<v> list);
    }

    private static final class b extends an<k> {
        public b(k kVar) {
            super(kVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            k a2 = a();
            if (a2 == null) {
                return;
            }
            if (p.a(a2.f2808a)) {
                a2.a();
            } else {
                a2.i.postDelayed(a2.j, 5000L);
            }
        }
    }

    public k(Context context, String str, f fVar, AdSize adSize, d dVar, int i, EnumSet<NativeAd.MediaCacheFlag> enumSet) {
        this.f2808a = context;
        this.f2809b = str;
        this.d = fVar;
        this.f = adSize;
        this.e = dVar;
        this.g = i;
        this.c = new com.facebook.ads.internal.server.a(context);
        this.c.a(this);
        this.h = true;
        this.i = new Handler();
        this.j = new b(this);
        com.facebook.ads.internal.d.a.a(context).a();
    }

    private List<v> d() {
        com.facebook.ads.internal.f.d dVar = this.l;
        com.facebook.ads.internal.f.a d = dVar.d();
        final ArrayList arrayList = new ArrayList(dVar.c());
        for (com.facebook.ads.internal.f.a aVar = d; aVar != null; aVar = dVar.d()) {
            AdAdapter a2 = com.facebook.ads.internal.adapters.d.a(aVar.a(), AdPlacementType.NATIVE);
            if (a2 != null && a2.getPlacementType() == AdPlacementType.NATIVE) {
                HashMap hashMap = new HashMap();
                hashMap.put("data", aVar.b());
                hashMap.put("definition", dVar.a());
                ((v) a2).a(this.f2808a, new w() { // from class: com.facebook.ads.internal.k.1
                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar) {
                        arrayList.add(vVar);
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar, AdError adError) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void b(v vVar) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void c(v vVar) {
                    }
                }, com.facebook.ads.internal.g.g.a(this.f2808a), hashMap);
            }
        }
        return arrayList;
    }

    public void a() {
        try {
            this.c.a(new com.facebook.ads.internal.f.f(this.f2808a, new com.facebook.ads.internal.f.h(this.f2808a, false), this.f2809b, this.f, this.d, this.e, this.g, AdSettings.isTestMode(this.f2808a), new com.facebook.ads.internal.util.j(this.f2808a, null, null, null)));
        } catch (c e) {
            a(e.a());
        }
    }

    @Override // com.facebook.ads.internal.server.a.InterfaceC0077a
    public void a(com.facebook.ads.internal.b bVar) {
        if (this.h) {
            this.i.postDelayed(this.j, 1800000L);
        }
        if (this.k != null) {
            this.k.a(bVar);
        }
    }

    public void a(a aVar) {
        this.k = aVar;
    }

    @Override // com.facebook.ads.internal.server.a.InterfaceC0077a
    public void a(com.facebook.ads.internal.server.e eVar) {
        com.facebook.ads.internal.f.d b2 = eVar.b();
        if (b2 == null) {
            throw new IllegalStateException("no placement in response");
        }
        if (this.h) {
            long c = b2.a().c();
            if (c == 0) {
                c = 1800000;
            }
            this.i.postDelayed(this.j, c);
        }
        this.l = b2;
        List<v> d = d();
        if (this.k != null) {
            if (d.isEmpty()) {
                this.k.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
            } else {
                this.k.a(d);
            }
        }
    }

    public void b() {
    }

    public void c() {
        this.h = false;
        this.i.removeCallbacks(this.j);
    }
}
