package com.facebook.ads.internal.f;

import android.content.Context;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.ao;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    protected String f2712a;

    /* renamed from: b, reason: collision with root package name */
    protected AdPlacementType f2713b;
    protected c c;
    public Context d;
    public com.facebook.ads.internal.f e;
    public boolean f;
    private com.facebook.ads.internal.d g;
    private int h;
    private AdSize i;
    private final Map<String, String> j;
    private final com.facebook.ads.internal.util.j k;

    public f(Context context, h hVar, String str, AdSize adSize, com.facebook.ads.internal.f fVar, com.facebook.ads.internal.d dVar, int i, boolean z, com.facebook.ads.internal.util.j jVar) {
        this.f2712a = str;
        this.i = adSize;
        this.e = fVar;
        this.c = c.a(fVar);
        this.g = dVar;
        this.h = i;
        this.f = z;
        this.j = hVar.b();
        this.k = jVar;
        this.d = context;
        g();
        j.a(context);
    }

    private void a(Map<String, String> map, String str, String str2) {
        map.put(str, str2);
    }

    private void g() {
        if (this.c == null) {
            this.c = c.UNKNOWN;
        }
        switch (this.c) {
            case INTERSTITIAL:
                this.f2713b = AdPlacementType.INTERSTITIAL;
                break;
            case BANNER:
                this.f2713b = AdPlacementType.BANNER;
                break;
            case NATIVE:
                this.f2713b = AdPlacementType.NATIVE;
                break;
            case REWARDED_VIDEO:
                this.f2713b = AdPlacementType.REWARDED_VIDEO;
                break;
            default:
                this.f2713b = AdPlacementType.UNKNOWN;
                break;
        }
    }

    public String a() {
        return this.f2712a;
    }

    public c b() {
        return this.c;
    }

    public AdSize c() {
        return this.i;
    }

    public int d() {
        return this.h;
    }

    public com.facebook.ads.internal.util.j e() {
        return this.k;
    }

    public Map<String, String> f() {
        HashMap hashMap = new HashMap(this.j);
        a(hashMap, "IDFA", j.o);
        a(hashMap, "IDFA_FLAG", j.p ? "0" : "1");
        a(hashMap, "COPPA", String.valueOf(AdSettings.isChildDirected()));
        a(hashMap, "PLACEMENT_ID", this.f2712a);
        if (this.f2713b != AdPlacementType.UNKNOWN) {
            a(hashMap, "PLACEMENT_TYPE", this.f2713b.toString().toLowerCase());
        }
        if (this.i != null) {
            a(hashMap, "WIDTH", String.valueOf(this.i.getWidth()));
            a(hashMap, "HEIGHT", String.valueOf(this.i.getHeight()));
        }
        a(hashMap, "ADAPTERS", com.facebook.ads.internal.adapters.d.a(this.f2713b));
        if (this.e != null) {
            a(hashMap, "TEMPLATE_ID", String.valueOf(this.e.a()));
        }
        if (this.g != null) {
            a(hashMap, "REQUEST_TYPE", String.valueOf(this.g.a()));
        }
        if (this.f) {
            a(hashMap, "TEST_MODE", "1");
        }
        if (AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT) {
            a(hashMap, "DEMO_AD_ID", AdSettings.getTestAdType().getAdTypeString());
        }
        if (this.h != 0) {
            a(hashMap, "NUM_ADS_REQUESTED", String.valueOf(this.h));
        }
        a(hashMap, "CLIENT_EVENTS", com.facebook.ads.internal.util.c.a());
        a(hashMap, "KG_RESTRICTED", String.valueOf(ao.b(this.d)));
        a(hashMap, "REQUEST_TIME", com.facebook.ads.internal.util.g.a(System.currentTimeMillis()));
        if (this.k.c()) {
            a(hashMap, "BID_ID", this.k.d());
        }
        return hashMap;
    }
}
