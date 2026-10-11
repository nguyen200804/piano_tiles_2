package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HtmlInterstitialWebView extends BaseHtmlWebView {

    /* renamed from: b, reason: collision with root package name */
    private Handler f4370b;

    public HtmlInterstitialWebView(Context context, AdReport adReport) {
        super(context, adReport);
        this.f4370b = new Handler();
    }

    public void init(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean isScrollable, String redirectUrl, String clickthroughUrl, String dspCreativeId) {
        super.init(isScrollable);
        setWebViewClient(new b(new a(customEventInterstitialListener), this, clickthroughUrl, redirectUrl, dspCreativeId));
    }

    static class a implements HtmlWebViewListener {

        /* renamed from: a, reason: collision with root package name */
        private final CustomEventInterstitial.CustomEventInterstitialListener f4371a;

        public a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f4371a = customEventInterstitialListener;
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onLoaded(BaseHtmlWebView mHtmlWebView) {
            this.f4371a.onInterstitialLoaded();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onFailed(MoPubErrorCode errorCode) {
            this.f4371a.onInterstitialFailed(errorCode);
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onClicked() {
            this.f4371a.onInterstitialClicked();
        }

        @Override // com.mopub.mobileads.HtmlWebViewListener
        public void onCollapsed() {
        }
    }
}
