package com.mopub.common.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum ResponseHeader {
    AD_TIMEOUT("X-AdTimeout"),
    AD_TYPE("X-Adtype"),
    CLICK_TRACKING_URL("X-Clickthrough"),
    CUSTOM_EVENT_DATA("X-Custom-Event-Class-Data"),
    CUSTOM_EVENT_NAME("X-Custom-Event-Class-Name"),
    CUSTOM_EVENT_HTML_DATA("X-Custom-Event-Html-Data"),
    CREATIVE_ID("X-CreativeId"),
    DSP_CREATIVE_ID("X-DspCreativeid"),
    FAIL_URL("X-Failurl"),
    FULL_AD_TYPE("X-Fulladtype"),
    HEIGHT("X-Height"),
    IMPRESSION_URL("X-Imptracker"),
    REDIRECT_URL("X-Launchpage"),
    NATIVE_PARAMS("X-Nativeparams"),
    NETWORK_TYPE("X-Networktype"),
    ORIENTATION("X-Orientation"),
    REFRESH_TIME("X-Refreshtime"),
    SCROLLABLE("X-Scrollable"),
    WARMUP("X-Warmup"),
    WIDTH("X-Width"),
    LOCATION("Location"),
    USER_AGENT("User-Agent"),
    ACCEPT_LANGUAGE("Accept-Language"),
    BROWSER_AGENT("X-Browser-Agent"),
    PLAY_VISIBLE_PERCENT("X-Play-Visible-Percent"),
    PAUSE_VISIBLE_PERCENT("X-Pause-Visible-Percent"),
    IMPRESSION_MIN_VISIBLE_PERCENT("X-Impression-Min-Visible-Percent"),
    IMPRESSION_VISIBLE_MS("X-Impression-Visible-Ms"),
    MAX_BUFFER_MS("X-Max-Buffer-Ms"),
    REWARDED_VIDEO_CURRENCY_NAME("X-Rewarded-Video-Currency-Name"),
    REWARDED_VIDEO_CURRENCY_AMOUNT("X-Rewarded-Video-Currency-Amount"),
    REWARDED_CURRENCIES("X-Rewarded-Currencies"),
    REWARDED_VIDEO_COMPLETION_URL("X-Rewarded-Video-Completion-Url"),
    REWARDED_DURATION("X-Rewarded-Duration"),
    SHOULD_REWARD_ON_CLICK("X-Should-Reward-On-Click"),
    VIDEO_TRACKERS("X-Video-Trackers"),
    CUSTOM_SELECTOR("X-Customselector");


    /* renamed from: a, reason: collision with root package name */
    private final String f4239a;

    ResponseHeader(String key) {
        this.f4239a = key;
    }

    public String getKey() {
        return this.f4239a;
    }
}
