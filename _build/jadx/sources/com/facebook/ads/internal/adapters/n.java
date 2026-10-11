package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.VideoAutoplayBehavior;
import com.flurry.android.FlurryAgent;
import com.flurry.android.ads.FlurryAdErrorType;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdNativeAsset;
import com.flurry.android.ads.FlurryAdNativeListener;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n extends v implements t {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f2630a;

    /* renamed from: b, reason: collision with root package name */
    private w f2631b;
    private FlurryAdNative c;
    private boolean d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private NativeAd.Image j;
    private NativeAd.Image k;
    private NativeAd.Image l;

    @Override // com.facebook.ads.internal.adapters.v
    public List<NativeAd> A() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int B() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int C() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String D() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public AdNetwork E() {
        return AdNetwork.FLURRY;
    }

    @Override // com.facebook.ads.internal.adapters.t
    public e F() {
        return e.YAHOO;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a() {
        if (this.c != null) {
            this.c.removeTrackingView();
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(int i) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(final Context context, w wVar, com.facebook.ads.internal.g.f fVar, Map<String, Object> map) {
        JSONObject jSONObject = (JSONObject) map.get("data");
        String optString = jSONObject.optString("api_key");
        String optString2 = jSONObject.optString("placement_id");
        synchronized (n.class) {
            if (!f2630a) {
                com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(F()) + " Initializing");
                FlurryAgent.setLogEnabled(true);
                FlurryAgent.init(context, optString);
                f2630a = true;
            }
        }
        com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(F()) + " Loading");
        this.f2631b = wVar;
        this.c = new FlurryAdNative(context, optString2);
        this.c.setListener(new FlurryAdNativeListener() { // from class: com.facebook.ads.internal.adapters.n.1
            public void onAppExit(FlurryAdNative flurryAdNative) {
            }

            public void onClicked(FlurryAdNative flurryAdNative) {
                if (n.this.f2631b != null) {
                    n.this.f2631b.c(n.this);
                }
            }

            public void onCloseFullscreen(FlurryAdNative flurryAdNative) {
            }

            public void onCollapsed(FlurryAdNative flurryAdNative) {
            }

            public void onError(FlurryAdNative flurryAdNative, FlurryAdErrorType flurryAdErrorType, int i) {
                com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(n.this.F()) + " Failed with FlurryError: " + flurryAdErrorType.toString());
                if (n.this.f2631b != null) {
                    n.this.f2631b.a(n.this, new AdError(3001, flurryAdErrorType.toString()));
                }
            }

            public void onExpanded(FlurryAdNative flurryAdNative) {
            }

            public void onFetched(FlurryAdNative flurryAdNative) {
                if (n.this.f2631b == null) {
                    return;
                }
                if (flurryAdNative.isVideoAd()) {
                    com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(n.this.F()) + " Failed. AN does not support Flurry video ads");
                    n.this.f2631b.a(n.this, new AdError(3001, "video ad"));
                    return;
                }
                n.this.d = true;
                FlurryAdNativeAsset asset = flurryAdNative.getAsset("headline");
                if (asset != null) {
                    n.this.e = asset.getValue();
                }
                FlurryAdNativeAsset asset2 = flurryAdNative.getAsset("summary");
                if (asset2 != null) {
                    n.this.f = asset2.getValue();
                }
                FlurryAdNativeAsset asset3 = flurryAdNative.getAsset("source");
                if (asset3 != null) {
                    n.this.g = asset3.getValue();
                }
                FlurryAdNativeAsset asset4 = flurryAdNative.getAsset("appCategory");
                if (asset4 != null) {
                    n.this.i = asset4.getValue();
                }
                FlurryAdNativeAsset asset5 = flurryAdNative.getAsset("callToAction");
                if (asset5 != null) {
                    n.this.h = asset5.getValue();
                } else if (flurryAdNative.getAsset("appRating") != null) {
                    n.this.h = "Install Now";
                } else {
                    n.this.h = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
                }
                FlurryAdNativeAsset asset6 = flurryAdNative.getAsset("secImage");
                if (asset6 != null) {
                    n.this.j = new NativeAd.Image(asset6.getValue(), 82, 82);
                }
                FlurryAdNativeAsset asset7 = flurryAdNative.getAsset("secHqImage");
                if (asset7 != null) {
                    n.this.k = new NativeAd.Image(asset7.getValue(), 1200, 627);
                }
                FlurryAdNativeAsset asset8 = flurryAdNative.getAsset("secBrandingLogo");
                if (asset8 != null) {
                    n.this.l = new NativeAd.Image(asset8.getValue(), 20, 20);
                }
                com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(n.this.F()) + " Loaded");
                n.this.f2631b.a(n.this);
            }

            public void onImpressionLogged(FlurryAdNative flurryAdNative) {
                if (n.this.f2631b != null) {
                    n.this.f2631b.b(n.this);
                }
            }

            public void onShowFullscreen(FlurryAdNative flurryAdNative) {
            }
        });
        this.c.fetchAd();
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(View view, List<View> list) {
        if (this.c != null) {
            this.c.setTrackingView(view);
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(w wVar) {
        this.f2631b = wVar;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(Map<String, String> map) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void b(Map<String, String> map) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean b() {
        return this.d;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean c() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean d() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean e() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean f() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean g() {
        return true;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int h() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int i() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public int j() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image k() {
        return this.j;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image l() {
        return this.k;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAdViewAttributes m() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String n() {
        return this.e;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String o() {
        return this.g;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        a();
        this.f2631b = null;
        if (this.c != null) {
            this.c.destroy();
            this.c = null;
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String p() {
        return this.f;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String q() {
        return this.h;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String r() {
        return this.i;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Rating s() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image t() {
        return this.l;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String u() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String v() {
        return "Ad";
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String w() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String x() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public VideoAutoplayBehavior y() {
        return VideoAutoplayBehavior.DEFAULT;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String z() {
        return null;
    }
}
