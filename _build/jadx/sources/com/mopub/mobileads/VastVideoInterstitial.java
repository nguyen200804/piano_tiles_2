package com.mopub.mobileads;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.CacheService;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.factories.VastManagerFactory;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class VastVideoInterstitial extends ResponseBodyInterstitial implements VastManager.VastManagerListener {
    private CustomEventInterstitial.CustomEventInterstitialListener d;
    private String e;
    private VastManager f;
    private VastVideoConfig g;

    @Nullable
    private JSONObject h;

    VastVideoInterstitial() {
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(Map<String, String> map) {
        this.e = map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
        String str = map.get(DataKeys.VIDEO_TRACKERS_KEY);
        if (!TextUtils.isEmpty(str)) {
            try {
                this.h = new JSONObject(str);
            } catch (JSONException e) {
                MoPubLog.d("Failed to parse video trackers to JSON: " + str, e);
                this.h = null;
            }
        }
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        this.d = customEventInterstitialListener;
        if (!CacheService.initializeDiskCache(this.f4399a)) {
            this.d.onInterstitialFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
        } else {
            this.f = VastManagerFactory.create(this.f4399a);
            this.f.prepareVastVideoConfiguration(this.e, this, this.f4400b.getDspCreativeId(), this.f4399a);
        }
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidVideoPlayerActivity.a(this.f4399a, this.g, this.c);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        if (this.f != null) {
            this.f.cancel();
        }
        super.onInvalidate();
    }

    @Override // com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null) {
            this.d.onInterstitialFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            return;
        }
        this.g = vastVideoConfig;
        this.g.addVideoTrackers(this.h);
        this.d.onInterstitialLoaded();
    }
}
