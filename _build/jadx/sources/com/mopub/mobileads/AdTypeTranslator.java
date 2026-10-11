package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.util.ResponseHeader;
import com.mopub.network.HeaderUtils;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdTypeTranslator {
    public static final String BANNER_SUFFIX = "_banner";
    public static final String INTERSTITIAL_SUFFIX = "_interstitial";

    public enum CustomEventType {
        GOOGLE_PLAY_SERVICES_BANNER("admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner", false),
        GOOGLE_PLAY_SERVICES_INTERSTITIAL("admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial", false),
        MILLENNIAL_BANNER("millennial_native_banner", "com.mopub.mobileads.MillennialBanner", false),
        MILLENNIAL_INTERSTITIAL("millennial_full_interstitial", "com.mopub.mobileads.MillennialInterstitial", false),
        MRAID_BANNER("mraid_banner", "com.mopub.mraid.MraidBanner", true),
        MRAID_INTERSTITIAL("mraid_interstitial", "com.mopub.mraid.MraidInterstitial", true),
        HTML_BANNER("html_banner", "com.mopub.mobileads.HtmlBanner", true),
        HTML_INTERSTITIAL("html_interstitial", "com.mopub.mobileads.HtmlInterstitial", true),
        VAST_VIDEO_INTERSTITIAL("vast_interstitial", "com.mopub.mobileads.VastVideoInterstitial", true),
        MOPUB_NATIVE("mopub_native", "com.mopub.nativeads.MoPubCustomEventNative", true),
        MOPUB_VIDEO_NATIVE("mopub_video_native", "com.mopub.nativeads.MoPubCustomEventVideoNative", true),
        MOPUB_REWARDED_VIDEO(AdType.REWARDED_VIDEO, "com.mopub.mobileads.MoPubRewardedVideo", true),
        MOPUB_REWARDED_PLAYABLE(AdType.REWARDED_PLAYABLE, "com.mopub.mobileads.MoPubRewardedPlayable", true),
        UNSPECIFIED("", null, false);


        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final String f4340a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private final String f4341b;
        private final boolean c;

        CustomEventType(String key, String className, boolean isMoPubSpecific) {
            this.f4340a = key;
            this.f4341b = className;
            this.c = isMoPubSpecific;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static CustomEventType b(@Nullable String str) {
            for (CustomEventType customEventType : values()) {
                if (customEventType.f4340a.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        private static CustomEventType c(@Nullable String str) {
            for (CustomEventType customEventType : values()) {
                if (customEventType.f4341b != null && customEventType.f4341b.equals(str)) {
                    return customEventType;
                }
            }
            return UNSPECIFIED;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4341b;
        }

        public static boolean isMoPubSpecific(@Nullable String className) {
            return c(className).c;
        }
    }

    public static String getCustomEventName(@NonNull AdFormat adFormat, @NonNull String adType, @Nullable String fullAdType, @NonNull Map<String, String> headers) {
        if (AdType.CUSTOM.equalsIgnoreCase(adType)) {
            return HeaderUtils.extractHeader(headers, ResponseHeader.CUSTOM_EVENT_NAME);
        }
        if (AdType.STATIC_NATIVE.equalsIgnoreCase(adType)) {
            return CustomEventType.MOPUB_NATIVE.toString();
        }
        if (AdType.VIDEO_NATIVE.equalsIgnoreCase(adType)) {
            return CustomEventType.MOPUB_VIDEO_NATIVE.toString();
        }
        if (AdType.REWARDED_VIDEO.equalsIgnoreCase(adType)) {
            return CustomEventType.MOPUB_REWARDED_VIDEO.toString();
        }
        if (AdType.REWARDED_PLAYABLE.equalsIgnoreCase(adType)) {
            return CustomEventType.MOPUB_REWARDED_PLAYABLE.toString();
        }
        if (AdType.HTML.equalsIgnoreCase(adType) || AdType.MRAID.equalsIgnoreCase(adType)) {
            return (AdFormat.INTERSTITIAL.equals(adFormat) ? CustomEventType.b(adType + INTERSTITIAL_SUFFIX) : CustomEventType.b(adType + BANNER_SUFFIX)).toString();
        }
        return AdType.INTERSTITIAL.equalsIgnoreCase(adType) ? CustomEventType.b(fullAdType + INTERSTITIAL_SUFFIX).toString() : CustomEventType.b(adType + BANNER_SUFFIX).toString();
    }
}
