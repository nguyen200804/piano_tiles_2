package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSize;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.view.c;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends BannerAdapter {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2597a = h.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private com.facebook.ads.internal.view.c f2598b;
    private p c;
    private BannerAdapterListener d;
    private Map<String, Object> e;
    private Context f;
    private long g;
    private b.a h;

    private void a(com.facebook.ads.internal.f.e eVar) {
        this.g = 0L;
        this.h = null;
        final o a2 = o.a((JSONObject) this.e.get("data"));
        if (com.facebook.ads.internal.util.f.a(this.f, a2)) {
            this.d.onBannerError(this, AdError.NO_FILL);
            return;
        }
        this.f2598b = new com.facebook.ads.internal.view.c(this.f, new c.b() { // from class: com.facebook.ads.internal.adapters.h.1
            @Override // com.facebook.ads.internal.view.c.b
            public void a() {
                h.this.c.b();
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(int i) {
                if (i != 0 || h.this.g <= 0 || h.this.h == null) {
                    return;
                }
                com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(h.this.g, h.this.h, a2.d()));
                h.this.g = 0L;
                h.this.h = null;
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(String str, Map<String, String> map) {
                Uri parse = Uri.parse(str);
                if ("fbad".equals(parse.getScheme()) && com.facebook.ads.internal.a.b.a(parse.getAuthority()) && h.this.d != null) {
                    h.this.d.onBannerAdClicked(h.this);
                }
                com.facebook.ads.internal.a.a a3 = com.facebook.ads.internal.a.b.a(h.this.f, a2.D(), parse, map);
                if (a3 != null) {
                    try {
                        h.this.h = a3.a();
                        h.this.g = System.currentTimeMillis();
                        a3.b();
                    } catch (Exception e) {
                        Log.e(h.f2597a, "Error executing action", e);
                    }
                }
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void b() {
                if (h.this.c != null) {
                    h.this.c.a();
                }
            }
        }, eVar.f());
        this.f2598b.a(eVar.h(), eVar.i());
        this.c = new p(this.f, this.f2598b, this.f2598b.getViewabilityChecker(), new b() { // from class: com.facebook.ads.internal.adapters.h.2
            @Override // com.facebook.ads.internal.adapters.b
            public void d() {
                if (h.this.d != null) {
                    h.this.d.onBannerLoggingImpression(h.this);
                }
            }
        });
        this.c.a(a2);
        this.f2598b.loadDataWithBaseURL(com.facebook.ads.internal.util.h.a(), a2.a(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        if (this.d != null) {
            this.d.onBannerAdLoaded(this, this.f2598b);
        }
    }

    @Override // com.facebook.ads.internal.adapters.BannerAdapter
    public void loadBannerAd(Context context, AdSize adSize, BannerAdapterListener bannerAdapterListener, Map<String, Object> map) {
        this.f = context;
        this.d = bannerAdapterListener;
        this.e = map;
        a((com.facebook.ads.internal.f.e) map.get("definition"));
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.f2598b != null) {
            com.facebook.ads.internal.util.h.a(this.f2598b);
            this.f2598b.destroy();
            this.f2598b = null;
        }
    }
}
