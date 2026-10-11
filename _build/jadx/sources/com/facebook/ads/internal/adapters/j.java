package com.facebook.ads.internal.adapters;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAdActivity;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.util.EnumSet;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j extends InterstitialAdapter {

    /* renamed from: a, reason: collision with root package name */
    private static final ConcurrentMap<String, com.facebook.ads.internal.view.d> f2610a = new ConcurrentHashMap();
    private String c;
    private long d;
    private Context e;
    private s f;
    private InterstitialAdapterListener g;
    private o i;
    private a j;

    /* renamed from: b, reason: collision with root package name */
    private final String f2611b = UUID.randomUUID().toString();
    private boolean h = false;

    public enum a {
        UNSPECIFIED,
        VERTICAL,
        HORIZONTAL;

        public static a a(int i) {
            return i == 0 ? UNSPECIFIED : i == 2 ? HORIZONTAL : VERTICAL;
        }
    }

    public static com.facebook.ads.internal.view.d a(String str) {
        return f2610a.get(str);
    }

    public static void a(com.facebook.ads.internal.view.d dVar) {
        for (Map.Entry<String, com.facebook.ads.internal.view.d> entry : f2610a.entrySet()) {
            if (entry.getValue() == dVar) {
                f2610a.remove(entry.getKey());
            }
        }
    }

    private int b() {
        int rotation = ((WindowManager) this.e.getSystemService("window")).getDefaultDisplay().getRotation();
        if (this.j == a.UNSPECIFIED) {
            return -1;
        }
        if (this.j == a.HORIZONTAL) {
            switch (rotation) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        switch (rotation) {
            case 2:
                return 9;
            default:
                return 1;
        }
    }

    @Override // com.facebook.ads.internal.adapters.InterstitialAdapter
    public void loadInterstitialAd(Context context, InterstitialAdapterListener interstitialAdapterListener, Map<String, Object> map, com.facebook.ads.internal.g.f fVar, EnumSet<CacheFlag> enumSet) {
        this.e = context;
        this.g = interstitialAdapterListener;
        this.c = (String) map.get(AudienceNetworkActivity.PLACEMENT_ID);
        this.d = ((Long) map.get(AudienceNetworkActivity.REQUEST_TIME)).longValue();
        JSONObject jSONObject = (JSONObject) map.get("data");
        if (!jSONObject.has("markup")) {
            this.f = new s(context, this.f2611b, this, this.g);
            this.f.a();
            final k kVar = new k();
            kVar.a(context, new com.facebook.ads.a.a() { // from class: com.facebook.ads.internal.adapters.j.1
                @Override // com.facebook.ads.a.a
                public void a(r rVar) {
                    j.this.h = true;
                    if (j.this.g == null) {
                        return;
                    }
                    j.this.g.onInterstitialAdLoaded(j.this);
                }

                @Override // com.facebook.ads.a.a
                public void a(r rVar, View view) {
                    j.this.j = kVar.j();
                    j.f2610a.put(j.this.f2611b, kVar);
                }

                @Override // com.facebook.ads.a.a
                public void a(r rVar, AdError adError) {
                    kVar.k();
                    j.this.g.onInterstitialError(j.this, adError);
                }

                @Override // com.facebook.ads.a.a
                public void b(r rVar) {
                    j.this.g.onInterstitialAdClicked(j.this, "", true);
                }

                @Override // com.facebook.ads.a.a
                public void c(r rVar) {
                    j.this.g.onInterstitialLoggingImpression(j.this);
                }

                @Override // com.facebook.ads.a.a
                public void d(r rVar) {
                }
            }, map, fVar, enumSet);
            return;
        }
        this.i = o.a(jSONObject);
        if (com.facebook.ads.internal.util.f.a(context, this.i)) {
            interstitialAdapterListener.onInterstitialError(this, AdError.NO_FILL);
            return;
        }
        this.f = new s(context, this.f2611b, this, this.g);
        this.f.a();
        Map<String, String> c = this.i.c();
        if (c.containsKey(AdUnitActivity.EXTRA_ORIENTATION)) {
            this.j = a.a(Integer.parseInt(c.get(AdUnitActivity.EXTRA_ORIENTATION)));
        }
        this.h = true;
        if (this.g != null) {
            this.g.onInterstitialAdLoaded(this);
        }
        if (com.facebook.ads.internal.j.p(context)) {
            new com.facebook.ads.internal.view.c(context, null, 0).loadDataWithBaseURL(com.facebook.ads.internal.util.h.a(), this.i.a(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        }
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.f != null) {
            this.f.b();
        }
    }

    @Override // com.facebook.ads.internal.adapters.InterstitialAdapter
    public boolean show() {
        if (!this.h) {
            if (this.g != null) {
                this.g.onInterstitialError(this, AdError.INTERNAL_ERROR);
            }
            return false;
        }
        Intent intent = new Intent(this.e, (Class<?>) AudienceNetworkActivity.class);
        intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, b());
        intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.f2611b);
        intent.putExtra(AudienceNetworkActivity.PLACEMENT_ID, this.c);
        intent.putExtra(AudienceNetworkActivity.REQUEST_TIME, this.d);
        if (f2610a.containsKey(this.f2611b)) {
            intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.NATIVE);
        } else {
            intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.DISPLAY);
            this.i.a(intent);
        }
        intent.addFlags(268435456);
        try {
            this.e.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            intent.setClass(this.e, InterstitialAdActivity.class);
            this.e.startActivity(intent);
        }
        return true;
    }
}
