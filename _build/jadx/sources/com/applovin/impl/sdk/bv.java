package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bv extends au {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f475a;

    /* renamed from: b, reason: collision with root package name */
    private final JSONObject f476b;

    bv(JSONObject jSONObject, AppLovinSdkImpl appLovinSdkImpl, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        super("TaskRenderWidget", appLovinSdkImpl);
        this.f475a = appLovinNativeAdLoadListener;
        this.f476b = jSONObject;
    }

    private String a(Map map, String str) {
        String str2 = (String) map.get("simp_url");
        if (AppLovinSdkUtils.isValidString(str2)) {
            return str2.replace("{CLCODE}", str);
        }
        throw new IllegalArgumentException("No impression URL available");
    }

    private String a(Map map, String str, String str2) {
        String str3 = (String) map.get("click_url");
        if (!AppLovinSdkUtils.isValidString(str3)) {
            throw new IllegalArgumentException("No impression URL available");
        }
        if (str2 == null) {
            str2 = "";
        }
        return str3.replace("{CLCODE}", str).replace("{EVENT_ID}", str2);
    }

    private void a(JSONObject jSONObject) {
        List<Map> a2 = ax.a(jSONObject.getJSONArray("native_ads"));
        Map a3 = ax.a(jSONObject.getJSONObject("native_settings"));
        ArrayList arrayList = new ArrayList(a2.size());
        for (Map map : a2) {
            String str = (String) map.get("clcode");
            NativeAdImpl a4 = new ba().e((String) map.get("title")).f((String) map.get("description")).g((String) map.get("caption")).p((String) map.get("cta")).a((String) map.get("icon_url")).b((String) map.get("image_url")).d((String) map.get(BaseVideoPlayerActivity.VIDEO_URL)).c((String) map.get("star_rating_url")).h((String) map.get("icon_url")).i((String) map.get("image_url")).j((String) map.get(BaseVideoPlayerActivity.VIDEO_URL)).a(Float.parseFloat((String) map.get("star_rating"))).o(str).k(a(a3, str)).l(a(a3, str, (String) map.get("event_id"))).m(b(a3, str)).n(c(a3, str)).a(Long.parseLong((String) map.get("ad_id"))).a(this.f).a();
            arrayList.add(a4);
            this.f.getLogger().d("TaskRenderWidget", "Prepared slot: " + a4.getAdId());
        }
        if (this.f475a != null) {
            this.f475a.onNativeAdsLoaded(arrayList);
        }
    }

    private String b(Map map, String str) {
        String str2 = (String) map.get("video_start_url");
        if (str2 != null) {
            return str2.replace("{CLCODE}", str);
        }
        return null;
    }

    private String c(Map map, String str) {
        String str2 = (String) map.get("video_end_url");
        if (str2 != null) {
            return str2.replace("{CLCODE}", str);
        }
        return null;
    }

    void a(int i) {
        try {
            if (this.f475a != null) {
                this.f475a.onNativeAdsFailedToLoad(i);
            }
        } catch (Exception e) {
            this.f.getLogger().e("TaskRenderWidget", "Unable to notify listener about failure.", e);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f476b == null || this.f476b.length() == 0) {
                a(AppLovinErrorCodes.UNABLE_TO_PREPARE_NATIVE_AD);
            } else {
                a(this.f476b);
            }
        } catch (Exception e) {
            this.f.getLogger().e("TaskRenderWidget", "Unable to render widget.", e);
            a(AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES);
        }
    }
}
