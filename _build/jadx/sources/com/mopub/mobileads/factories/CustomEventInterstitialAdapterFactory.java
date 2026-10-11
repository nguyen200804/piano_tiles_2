package com.mopub.mobileads.factories;

import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.MoPubInterstitial;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CustomEventInterstitialAdapterFactory {

    /* renamed from: a, reason: collision with root package name */
    protected static CustomEventInterstitialAdapterFactory f4499a = new CustomEventInterstitialAdapterFactory();

    @Deprecated
    public static void setInstance(CustomEventInterstitialAdapterFactory factory) {
        f4499a = factory;
    }

    public static CustomEventInterstitialAdapter create(MoPubInterstitial moPubInterstitial, String className, Map<String, String> serverExtras, long broadcastIdentifier, AdReport adReport) {
        return f4499a.a(moPubInterstitial, className, serverExtras, broadcastIdentifier, adReport);
    }

    protected CustomEventInterstitialAdapter a(MoPubInterstitial moPubInterstitial, String str, Map<String, String> map, long j, AdReport adReport) {
        return new CustomEventInterstitialAdapter(moPubInterstitial, str, map, j, adReport);
    }
}
