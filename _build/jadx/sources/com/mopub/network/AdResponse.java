package com.mopub.network;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.MoPub;
import com.mopub.common.event.EventDetails;
import com.mopub.common.util.DateAndTime;
import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdResponse implements Serializable {

    @NonNull
    private final Map<String, String> A;
    private final long B;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f4711a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final String f4712b;

    @Nullable
    private final String c;

    @Nullable
    private final String d;

    @Nullable
    private final String e;

    @Nullable
    private final String f;

    @Nullable
    private final String g;

    @Nullable
    private final String h;

    @Nullable
    private final Integer i;
    private final boolean j;

    @Nullable
    private final String k;

    @Nullable
    private final String l;

    @Nullable
    private final String m;

    @Nullable
    private final String n;

    @Nullable
    private final String o;

    @Nullable
    private final Integer p;

    @Nullable
    private final Integer q;

    @Nullable
    private final Integer r;

    @Nullable
    private final Integer s;

    @Nullable
    private final String t;
    private final boolean u;

    @Nullable
    private final String v;

    @Nullable
    private final JSONObject w;

    @Nullable
    private final EventDetails x;

    @Nullable
    private final String y;

    @Nullable
    private final MoPub.BrowserAgent z;

    private AdResponse(@NonNull Builder builder) {
        this.f4711a = builder.f4713a;
        this.f4712b = builder.f4714b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
        this.j = builder.j;
        this.k = builder.k;
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.p = builder.p;
        this.q = builder.q;
        this.r = builder.r;
        this.s = builder.s;
        this.t = builder.t;
        this.u = builder.u;
        this.v = builder.v;
        this.w = builder.w;
        this.x = builder.x;
        this.y = builder.y;
        this.z = builder.z;
        this.A = builder.A;
        this.B = DateAndTime.now().getTime();
    }

    public boolean hasJson() {
        return this.w != null;
    }

    @Nullable
    public JSONObject getJsonBody() {
        return this.w;
    }

    @Nullable
    public EventDetails getEventDetails() {
        return this.x;
    }

    @Nullable
    public String getStringBody() {
        return this.v;
    }

    @Nullable
    public String getAdType() {
        return this.f4711a;
    }

    @Nullable
    public String getFullAdType() {
        return this.c;
    }

    @Nullable
    public String getAdUnitId() {
        return this.f4712b;
    }

    @Nullable
    public String getNetworkType() {
        return this.d;
    }

    @Nullable
    public String getRewardedVideoCurrencyName() {
        return this.e;
    }

    @Nullable
    public String getRewardedVideoCurrencyAmount() {
        return this.f;
    }

    @Nullable
    public String getRewardedCurrencies() {
        return this.g;
    }

    @Nullable
    public String getRewardedVideoCompletionUrl() {
        return this.h;
    }

    @Nullable
    public Integer getRewardedDuration() {
        return this.i;
    }

    public boolean shouldRewardOnClick() {
        return this.j;
    }

    @Nullable
    public String getRedirectUrl() {
        return this.k;
    }

    @Nullable
    public String getClickTrackingUrl() {
        return this.l;
    }

    @Nullable
    public String getImpressionTrackingUrl() {
        return this.m;
    }

    @Nullable
    public String getFailoverUrl() {
        return this.n;
    }

    @Nullable
    public String getRequestId() {
        return this.o;
    }

    public boolean isScrollable() {
        return this.u;
    }

    @Nullable
    public Integer getWidth() {
        return this.p;
    }

    @Nullable
    public Integer getHeight() {
        return this.q;
    }

    @Nullable
    public Integer getAdTimeoutMillis() {
        return this.r;
    }

    @Nullable
    public Integer getRefreshTimeMillis() {
        return this.s;
    }

    @Nullable
    public String getDspCreativeId() {
        return this.t;
    }

    @Nullable
    public String getCustomEventClassName() {
        return this.y;
    }

    @Nullable
    public MoPub.BrowserAgent getBrowserAgent() {
        return this.z;
    }

    @NonNull
    public Map<String, String> getServerExtras() {
        return new TreeMap(this.A);
    }

    public long getTimestamp() {
        return this.B;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.f4711a).setNetworkType(this.d).setRewardedVideoCurrencyName(this.e).setRewardedVideoCurrencyAmount(this.f).setRewardedCurrencies(this.g).setRewardedVideoCompletionUrl(this.h).setRewardedDuration(this.i).setShouldRewardOnClick(this.j).setRedirectUrl(this.k).setClickTrackingUrl(this.l).setImpressionTrackingUrl(this.m).setFailoverUrl(this.n).setDimensions(this.p, this.q).setAdTimeoutDelayMilliseconds(this.r).setRefreshTimeMilliseconds(this.s).setDspCreativeId(this.t).setScrollable(Boolean.valueOf(this.u)).setResponseBody(this.v).setJsonBody(this.w).setEventDetails(this.x).setCustomEventClassName(this.y).setBrowserAgent(this.z).setServerExtras(this.A);
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        private String f4713a;

        /* renamed from: b, reason: collision with root package name */
        private String f4714b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g;
        private String h;
        private Integer i;
        private boolean j;
        private String k;
        private String l;
        private String m;
        private String n;
        private String o;
        private Integer p;
        private Integer q;
        private Integer r;
        private Integer s;
        private String t;
        private String v;
        private JSONObject w;
        private EventDetails x;
        private String y;
        private MoPub.BrowserAgent z;
        private boolean u = false;
        private Map<String, String> A = new TreeMap();

        public Builder setAdType(@Nullable String adType) {
            this.f4713a = adType;
            return this;
        }

        public Builder setAdUnitId(@Nullable String adUnitId) {
            this.f4714b = adUnitId;
            return this;
        }

        public Builder setFullAdType(@Nullable String fullAdType) {
            this.c = fullAdType;
            return this;
        }

        public Builder setNetworkType(@Nullable String networkType) {
            this.d = networkType;
            return this;
        }

        public Builder setRewardedVideoCurrencyName(@Nullable String rewardedVideoCurrencyName) {
            this.e = rewardedVideoCurrencyName;
            return this;
        }

        public Builder setRewardedVideoCurrencyAmount(@Nullable String rewardedVideoCurrencyAmount) {
            this.f = rewardedVideoCurrencyAmount;
            return this;
        }

        public Builder setRewardedCurrencies(@Nullable String rewardedCurrencies) {
            this.g = rewardedCurrencies;
            return this;
        }

        public Builder setRewardedVideoCompletionUrl(@Nullable String rewardedVideoCompletionUrl) {
            this.h = rewardedVideoCompletionUrl;
            return this;
        }

        public Builder setRewardedDuration(@Nullable Integer rewardedDuration) {
            this.i = rewardedDuration;
            return this;
        }

        public Builder setShouldRewardOnClick(boolean shouldRewardOnClick) {
            this.j = shouldRewardOnClick;
            return this;
        }

        public Builder setRedirectUrl(@Nullable String redirectUrl) {
            this.k = redirectUrl;
            return this;
        }

        public Builder setClickTrackingUrl(@Nullable String clickTrackingUrl) {
            this.l = clickTrackingUrl;
            return this;
        }

        public Builder setImpressionTrackingUrl(@Nullable String impressionTrackingUrl) {
            this.m = impressionTrackingUrl;
            return this;
        }

        public Builder setFailoverUrl(@Nullable String failoverUrl) {
            this.n = failoverUrl;
            return this;
        }

        public Builder setRequestId(@Nullable String requestId) {
            this.o = requestId;
            return this;
        }

        public Builder setDimensions(@Nullable Integer width, @Nullable Integer height) {
            this.p = width;
            this.q = height;
            return this;
        }

        public Builder setAdTimeoutDelayMilliseconds(@Nullable Integer adTimeoutDelayMilliseconds) {
            this.r = adTimeoutDelayMilliseconds;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(@Nullable Integer refreshTimeMilliseconds) {
            this.s = refreshTimeMilliseconds;
            return this;
        }

        public Builder setScrollable(@Nullable Boolean scrollable) {
            this.u = scrollable == null ? this.u : scrollable.booleanValue();
            return this;
        }

        public Builder setDspCreativeId(@Nullable String dspCreativeId) {
            this.t = dspCreativeId;
            return this;
        }

        public Builder setResponseBody(@Nullable String responseBody) {
            this.v = responseBody;
            return this;
        }

        public Builder setJsonBody(@Nullable JSONObject jsonBody) {
            this.w = jsonBody;
            return this;
        }

        public Builder setEventDetails(@Nullable EventDetails eventDetails) {
            this.x = eventDetails;
            return this;
        }

        public Builder setCustomEventClassName(@Nullable String customEventClassName) {
            this.y = customEventClassName;
            return this;
        }

        public Builder setBrowserAgent(@Nullable MoPub.BrowserAgent browserAgent) {
            this.z = browserAgent;
            return this;
        }

        public Builder setServerExtras(@Nullable Map<String, String> serverExtras) {
            if (serverExtras == null) {
                this.A = new TreeMap();
            } else {
                this.A = new TreeMap(serverExtras);
            }
            return this;
        }

        public AdResponse build() {
            return new AdResponse(this);
        }
    }
}
