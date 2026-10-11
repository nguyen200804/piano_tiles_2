package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.facebook.ads.AdError;
import com.facebook.ads.AdNetwork;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.VideoAutoplayBehavior;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiNative;
import com.inmobi.sdk.InMobiSdk;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q extends v implements t {

    /* renamed from: a, reason: collision with root package name */
    private w f2637a;

    /* renamed from: b, reason: collision with root package name */
    private InMobiNative f2638b;
    private boolean c;
    private View d;
    private String e;
    private String f;
    private String g;
    private NativeAd.Rating h;
    private NativeAd.Image i;
    private NativeAd.Image j;

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
        return AdNetwork.INMOBI;
    }

    @Override // com.facebook.ads.internal.adapters.t
    public e F() {
        return e.INMOBI;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a() {
        if (b()) {
            InMobiNative inMobiNative = this.f2638b;
            InMobiNative.unbind(this.d);
        }
        this.d = null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(int i) {
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(final Context context, w wVar, com.facebook.ads.internal.g.f fVar, Map<String, Object> map) {
        com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(F()) + " Loading");
        JSONObject jSONObject = (JSONObject) map.get("data");
        String optString = jSONObject.optString("account_id");
        Long valueOf = Long.valueOf(jSONObject.optLong("placement_id"));
        if (TextUtils.isEmpty(optString) || valueOf == null) {
            wVar.a(this, AdError.MEDIATION_ERROR);
            return;
        }
        this.f2637a = wVar;
        InMobiSdk.init(context, optString);
        this.f2638b = new InMobiNative(valueOf.longValue(), new InMobiNative.NativeAdListener() { // from class: com.facebook.ads.internal.adapters.q.1
            public void onAdDismissed(InMobiNative inMobiNative) {
            }

            public void onAdDisplayed(InMobiNative inMobiNative) {
            }

            public void onAdLoadFailed(InMobiNative inMobiNative, InMobiAdRequestStatus inMobiAdRequestStatus) {
                com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(q.this.F()) + " Failed with InMobi error: " + inMobiAdRequestStatus.getMessage());
                if (q.this.f2637a != null) {
                    q.this.f2637a.a(q.this, new AdError(3001, inMobiAdRequestStatus.getMessage()));
                }
            }

            public void onAdLoadSucceeded(InMobiNative inMobiNative) {
                try {
                    JSONObject jSONObject2 = new JSONObject((String) inMobiNative.getAdContent());
                    q.this.e = jSONObject2.optString("title");
                    q.this.f = jSONObject2.optString("description");
                    q.this.g = jSONObject2.optString("cta");
                    JSONObject optJSONObject = jSONObject2.optJSONObject("icon");
                    if (optJSONObject != null) {
                        int optInt = optJSONObject.optInt(VastIconXmlManager.WIDTH);
                        int optInt2 = optJSONObject.optInt(VastIconXmlManager.HEIGHT);
                        q.this.i = new NativeAd.Image(optJSONObject.optString("url"), optInt, optInt2);
                    }
                    JSONObject optJSONObject2 = jSONObject2.optJSONObject("screenshots");
                    if (optJSONObject2 != null) {
                        int optInt3 = optJSONObject2.optInt(VastIconXmlManager.WIDTH);
                        int optInt4 = optJSONObject2.optInt(VastIconXmlManager.HEIGHT);
                        q.this.j = new NativeAd.Image(optJSONObject2.optString("url"), optInt3, optInt4);
                    }
                    try {
                        q.this.h = new NativeAd.Rating(Double.parseDouble(jSONObject2.optString("rating")), 5.0d);
                    } catch (Exception e) {
                    }
                    q.this.c = true;
                    if (q.this.d != null) {
                        InMobiNative unused = q.this.f2638b;
                        InMobiNative.bind(q.this.d, inMobiNative);
                    }
                    if (q.this.f2637a != null) {
                        com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(q.this.F()) + " Loaded");
                        q.this.f2637a.a(q.this);
                    }
                } catch (Exception e2) {
                    if (q.this.f2637a != null) {
                        com.facebook.ads.internal.util.g.a(context, com.facebook.ads.internal.util.x.a(q.this.F()) + " Failed. Internal AN SDK error");
                        q.this.f2637a.a(q.this, AdError.INTERNAL_ERROR);
                    }
                }
            }

            public void onUserLeftApplication(InMobiNative inMobiNative) {
            }
        });
        this.f2638b.load();
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(View view, List<View> list) {
        this.d = view;
        if (b()) {
            InMobiNative inMobiNative = this.f2638b;
            InMobiNative.bind(this.d, this.f2638b);
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(w wVar) {
        this.f2637a = wVar;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void a(Map<String, String> map) {
        this.f2637a.b(this);
    }

    @Override // com.facebook.ads.internal.adapters.v
    public void b(Map<String, String> map) {
        if (b()) {
            this.f2637a.c(this);
            this.f2638b.reportAdClickAndOpenLandingPage((Map) null);
        }
    }

    @Override // com.facebook.ads.internal.adapters.v
    public boolean b() {
        return this.f2638b != null && this.c;
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
        return this.i;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image l() {
        return this.j;
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
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        a();
        this.f2638b = null;
        this.f2637a = null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String p() {
        return this.f;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String q() {
        return this.g;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public String r() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Rating s() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.v
    public NativeAd.Image t() {
        return null;
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
