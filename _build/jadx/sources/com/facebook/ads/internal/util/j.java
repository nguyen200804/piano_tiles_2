package com.facebook.ads.internal.util;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.ads.internal.AdErrorType;
import com.mopub.mobileads.VastExtensionXmlManager;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private final a f2885a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final Long f2886b;

    @Nullable
    private final String c;

    @Nullable
    private final String d;

    private enum a {
        ID,
        CREATIVE,
        NONE
    }

    public j(Context context, String str, String str2, com.facebook.ads.internal.f fVar) {
        if (TextUtils.isEmpty(str)) {
            this.f2885a = a.NONE;
            this.f2886b = null;
            this.d = null;
            this.c = null;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            switch (a.valueOf(jSONObject.getString(VastExtensionXmlManager.TYPE).toUpperCase())) {
                case ID:
                    this.f2885a = a.ID;
                    this.f2886b = Long.valueOf(jSONObject.getString("bid_id"));
                    this.d = jSONObject.getString("device_id");
                    this.c = null;
                    break;
                case CREATIVE:
                    this.f2885a = a.CREATIVE;
                    this.f2886b = Long.valueOf(jSONObject.getString("bid_id"));
                    this.d = jSONObject.getString("device_id");
                    this.c = new JSONObject(jSONObject.getString("payload")).toString();
                    break;
                default:
                    throw new com.facebook.ads.internal.c(AdErrorType.BID_PAYLOAD_ERROR, "Unsupported BidPayload type " + jSONObject.getString(VastExtensionXmlManager.TYPE));
            }
            if (!jSONObject.getString("sdk_version").equals("4.26.1")) {
                throw new com.facebook.ads.internal.c(AdErrorType.BID_IMPRESSION_MISMATCH, String.format("Bid %d for SDK version %s being used on SDK version %s", this.f2886b, jSONObject.getString("sdk_version"), "4.26.1"));
            }
            if (!jSONObject.getString("resolved_placement_id").equals(str2)) {
                throw new com.facebook.ads.internal.c(AdErrorType.BID_IMPRESSION_MISMATCH, String.format("Bid %d for placement %s being used on placement %s", this.f2886b, jSONObject.getString("resolved_placement_id"), str2));
            }
            if (!a(jSONObject.getInt("template"), fVar.a())) {
                throw new com.facebook.ads.internal.c(AdErrorType.BID_IMPRESSION_MISMATCH, String.format("Bid %d for template %s being used on template %s", this.f2886b, Integer.valueOf(jSONObject.getInt("template")), fVar));
            }
        } catch (JSONException e) {
            o.a(e, context);
            throw new com.facebook.ads.internal.c(AdErrorType.BID_PAYLOAD_ERROR, "Invalid BidPayload", e);
        }
    }

    private boolean a(int i, int i2) {
        if (i2 == com.facebook.ads.internal.f.WEBVIEW_INTERSTITIAL_UNKNOWN.a()) {
            return i == com.facebook.ads.internal.f.WEBVIEW_INTERSTITIAL_UNKNOWN.a() || i == com.facebook.ads.internal.f.WEBVIEW_INTERSTITIAL_HORIZONTAL.a() || i == com.facebook.ads.internal.f.WEBVIEW_INTERSTITIAL_VERTICAL.a() || i == com.facebook.ads.internal.f.WEBVIEW_INTERSTITIAL_TABLET.a();
        }
        return i == i2;
    }

    public void a(String str) {
        if (!this.d.equals(str)) {
            throw new com.facebook.ads.internal.c(AdErrorType.BID_IMPRESSION_MISMATCH, String.format("Bid %d for IDFA %s being used on IDFA %s", this.f2886b, this.d, str));
        }
    }

    public boolean a() {
        return this.f2885a == a.CREATIVE;
    }

    @Nullable
    public String b() {
        return this.c;
    }

    public boolean c() {
        return this.f2885a != a.NONE;
    }

    @Nullable
    public String d() {
        if (this.f2886b == null) {
            return null;
        }
        return this.f2886b.toString();
    }
}
