package com.facebook.ads.internal.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.view.c;
import com.facebook.ads.internal.view.d;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i implements d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3063a = i.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final d.a f3064b;
    private final c c;
    private final com.facebook.ads.internal.adapters.p d;
    private com.facebook.ads.internal.adapters.o e;
    private long f = System.currentTimeMillis();
    private long g;
    private b.a h;

    public i(final AudienceNetworkActivity audienceNetworkActivity, d.a aVar) {
        this.f3064b = aVar;
        this.c = new c(audienceNetworkActivity, new c.b() { // from class: com.facebook.ads.internal.view.i.1
            private long c = 0;

            @Override // com.facebook.ads.internal.view.c.b
            public void a() {
                i.this.d.b();
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(int i) {
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(String str, Map<String, String> map) {
                Uri parse = Uri.parse(str);
                if ("fbad".equals(parse.getScheme()) && "close".equals(parse.getAuthority())) {
                    audienceNetworkActivity.finish();
                    return;
                }
                long j = this.c;
                this.c = System.currentTimeMillis();
                if (this.c - j >= 1000) {
                    if ("fbad".equals(parse.getScheme()) && com.facebook.ads.internal.a.b.a(parse.getAuthority())) {
                        i.this.f3064b.a("com.facebook.ads.interstitial.clicked");
                    }
                    com.facebook.ads.internal.a.a a2 = com.facebook.ads.internal.a.b.a(audienceNetworkActivity, i.this.e.D(), parse, map);
                    if (a2 != null) {
                        try {
                            i.this.h = a2.a();
                            i.this.g = System.currentTimeMillis();
                            a2.b();
                        } catch (Exception e) {
                            Log.e(i.f3063a, "Error executing action", e);
                        }
                    }
                }
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void b() {
                i.this.d.a();
            }
        }, 1);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.d = new com.facebook.ads.internal.adapters.p(audienceNetworkActivity, this.c, this.c.getViewabilityChecker(), new com.facebook.ads.internal.adapters.b() { // from class: com.facebook.ads.internal.view.i.2
            @Override // com.facebook.ads.internal.adapters.b
            public void d() {
                i.this.f3064b.a("com.facebook.ads.interstitial.impression.logged");
            }
        });
        aVar.a(this.c);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        if (bundle != null && bundle.containsKey("dataModel")) {
            this.e = com.facebook.ads.internal.adapters.o.a(bundle.getBundle("dataModel"));
            if (this.e != null) {
                this.c.loadDataWithBaseURL(com.facebook.ads.internal.util.h.a(), this.e.a(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
                this.c.a(this.e.e(), this.e.f());
                return;
            }
            return;
        }
        this.e = com.facebook.ads.internal.adapters.o.b(intent);
        if (this.e != null) {
            this.d.a(this.e);
            this.c.loadDataWithBaseURL(com.facebook.ads.internal.util.h.a(), this.e.a(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
            this.c.a(this.e.e(), this.e.f());
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
        if (this.e != null) {
            bundle.putBundle("dataModel", this.e.g());
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void h() {
        this.c.onPause();
    }

    @Override // com.facebook.ads.internal.view.d
    public void i() {
        if (this.g > 0 && this.h != null && this.e != null) {
            com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(this.g, this.h, this.e.d()));
        }
        this.c.onResume();
    }

    @Override // com.facebook.ads.internal.view.d
    public void onDestroy() {
        if (this.e != null) {
            com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(this.f, b.a.XOUT, this.e.d()));
            if (!TextUtils.isEmpty(this.e.D())) {
                HashMap hashMap = new HashMap();
                this.c.getViewabilityChecker().a(hashMap);
                hashMap.put("touch", com.facebook.ads.internal.util.g.a(this.c.getTouchData()));
                com.facebook.ads.internal.g.g.a(this.c.getContext()).d(this.e.D(), hashMap);
            }
        }
        com.facebook.ads.internal.util.h.a(this.c);
        this.c.destroy();
    }
}
