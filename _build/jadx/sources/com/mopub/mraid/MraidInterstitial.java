package com.mopub.mraid;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.MraidActivity;
import com.mopub.mobileads.ResponseBodyInterstitial;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class MraidInterstitial extends ResponseBodyInterstitial {

    @Nullable
    protected String d;

    MraidInterstitial() {
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(Map<String, String> map) {
        this.d = map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    protected void a(@NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MraidActivity.preRenderHtml(this.f4399a, customEventInterstitialListener, this.d);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MraidActivity.start(this.f4399a, this.f4400b, this.d, this.c);
    }
}
