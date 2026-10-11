package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.HtmlInterstitialWebView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HtmlInterstitialWebViewFactory {

    /* renamed from: a, reason: collision with root package name */
    protected static HtmlInterstitialWebViewFactory f4501a = new HtmlInterstitialWebViewFactory();

    public static HtmlInterstitialWebView create(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        return f4501a.internalCreate(context, adReport, customEventInterstitialListener, isScrollable, redirectUrl, clickthroughUrl);
    }

    public HtmlInterstitialWebView internalCreate(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, boolean isScrollable, String redirectUrl, String clickthroughUrl) {
        HtmlInterstitialWebView htmlInterstitialWebView = new HtmlInterstitialWebView(context, adReport);
        htmlInterstitialWebView.init(customEventInterstitialListener, isScrollable, redirectUrl, clickthroughUrl, adReport.getDspCreativeId());
        return htmlInterstitialWebView;
    }

    @Deprecated
    public static void setInstance(HtmlInterstitialWebViewFactory factory) {
        f4501a = factory;
    }
}
