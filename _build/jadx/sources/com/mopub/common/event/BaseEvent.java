package com.mopub.common.event;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class BaseEvent {

    @Nullable
    private final String A;

    @Nullable
    private final Integer B;
    private final long C;

    @Nullable
    private ClientMetadata D;
    private final double E;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final ScribeCategory f4189a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Name f4190b;

    @NonNull
    private final Category c;

    @Nullable
    private final SdkProduct d;

    @Nullable
    private final String e;

    @Nullable
    private final String f;

    @Nullable
    private final String g;

    @Nullable
    private final String h;

    @Nullable
    private final Double i;

    @Nullable
    private final Double j;

    @Nullable
    private final String k;

    @Nullable
    private final Integer l;

    @Nullable
    private final Integer m;

    @Nullable
    private final Double n;

    @Nullable
    private final Double o;

    @Nullable
    private final Double p;

    @Nullable
    private final ClientMetadata.MoPubNetworkType q;

    @Nullable
    private final String r;

    @Nullable
    private final String s;

    @Nullable
    private final String t;

    @Nullable
    private final String u;

    @Nullable
    private final String v;

    @Nullable
    private final String w;

    @Nullable
    private final Double x;

    @Nullable
    private final String y;

    @Nullable
    private final Integer z;

    public enum ScribeCategory {
        EXCHANGE_CLIENT_EVENT("exchange_client_event"),
        EXCHANGE_CLIENT_ERROR("exchange_client_error");


        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final String f4202a;

        ScribeCategory(String scribeCategory) {
            this.f4202a = scribeCategory;
        }

        @NonNull
        public String getCategory() {
            return this.f4202a;
        }
    }

    public enum SdkProduct {
        NONE(0),
        WEB_VIEW(1),
        NATIVE(2);


        /* renamed from: a, reason: collision with root package name */
        private final int f4204a;

        SdkProduct(int type) {
            this.f4204a = type;
        }

        public int getType() {
            return this.f4204a;
        }
    }

    public enum AppPlatform {
        NONE(0),
        IOS(1),
        ANDROID(2),
        MOBILE_WEB(3);


        /* renamed from: a, reason: collision with root package name */
        private final int f4192a;

        AppPlatform(int type) {
            this.f4192a = type;
        }

        public int getType() {
            return this.f4192a;
        }
    }

    public enum Name {
        AD_REQUEST("ad_request"),
        IMPRESSION_REQUEST("impression_request"),
        CLICK_REQUEST("click_request"),
        DOWNLOAD_START("download_start"),
        DOWNLOAD_VIDEO_READY("download_video_ready"),
        DOWNLOAD_BUFFERING("download_video_buffering"),
        DOWNLOAD_FINISHED("download_finished"),
        ERROR_DURING_PLAYBACK("error_during_playback"),
        ERROR_FAILED_TO_PLAY("error_failed_to_play"),
        AD_DWELL_TIME("clickthrough_dwell_time");


        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final String f4198a;

        Name(String name) {
            this.f4198a = name;
        }

        @NonNull
        public String getName() {
            return this.f4198a;
        }
    }

    public enum Category {
        REQUESTS("requests"),
        NATIVE_VIDEO("native_video"),
        AD_INTERACTIONS("ad_interactions");


        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final String f4196a;

        Category(String category) {
            this.f4196a = category;
        }

        @NonNull
        public String getCategory() {
            return this.f4196a;
        }
    }

    public enum SamplingRate {
        AD_REQUEST(0.1d),
        NATIVE_VIDEO(0.1d),
        AD_INTERACTIONS(0.1d);


        /* renamed from: a, reason: collision with root package name */
        private final double f4200a;

        SamplingRate(double samplingRate) {
            this.f4200a = samplingRate;
        }

        public double getSamplingRate() {
            return this.f4200a;
        }
    }

    public BaseEvent(@NonNull Builder builder) {
        Preconditions.checkNotNull(builder);
        this.f4189a = builder.f4193a;
        this.f4190b = builder.f4194b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
        this.j = builder.j;
        this.k = builder.k;
        this.n = builder.l;
        this.o = builder.m;
        this.p = builder.n;
        this.x = builder.o;
        this.y = builder.p;
        this.z = builder.q;
        this.A = builder.r;
        this.B = builder.s;
        this.E = builder.t;
        this.C = System.currentTimeMillis();
        this.D = ClientMetadata.getInstance();
        if (this.D != null) {
            this.l = Integer.valueOf(this.D.getDeviceScreenWidthDip());
            this.m = Integer.valueOf(this.D.getDeviceScreenHeightDip());
            this.q = this.D.getActiveNetworkType();
            this.r = this.D.getNetworkOperator();
            this.s = this.D.getNetworkOperatorName();
            this.t = this.D.getIsoCountryCode();
            this.u = this.D.getSimOperator();
            this.v = this.D.getSimOperatorName();
            this.w = this.D.getSimIsoCountryCode();
            return;
        }
        this.l = null;
        this.m = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
    }

    @NonNull
    public ScribeCategory getScribeCategory() {
        return this.f4189a;
    }

    @NonNull
    public Name getName() {
        return this.f4190b;
    }

    @NonNull
    public Category getCategory() {
        return this.c;
    }

    @Nullable
    public SdkProduct getSdkProduct() {
        return this.d;
    }

    @Nullable
    public String getSdkVersion() {
        if (this.D == null) {
            return null;
        }
        return this.D.getSdkVersion();
    }

    @Nullable
    public String getAdUnitId() {
        return this.e;
    }

    @Nullable
    public String getAdCreativeId() {
        return this.f;
    }

    @Nullable
    public String getDspCreativeId() {
        return this.k;
    }

    @Nullable
    public String getAdType() {
        return this.g;
    }

    @Nullable
    public String getAdNetworkType() {
        return this.h;
    }

    @Nullable
    public Double getAdWidthPx() {
        return this.i;
    }

    @Nullable
    public Double getAdHeightPx() {
        return this.j;
    }

    @Nullable
    public AppPlatform getAppPlatform() {
        return AppPlatform.ANDROID;
    }

    @Nullable
    public String getAppName() {
        if (this.D == null) {
            return null;
        }
        return this.D.getAppName();
    }

    @Nullable
    public String getAppPackageName() {
        if (this.D == null) {
            return null;
        }
        return this.D.getAppPackageName();
    }

    @Nullable
    public String getAppVersion() {
        if (this.D == null) {
            return null;
        }
        return this.D.getAppVersion();
    }

    @Nullable
    public String getClientAdvertisingId() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceId();
    }

    @NonNull
    public String getObfuscatedClientAdvertisingId() {
        return "ifa:XXXX";
    }

    @NonNull
    public Boolean getClientDoNotTrack() {
        return Boolean.valueOf(this.D == null || this.D.isDoNotTrackSet());
    }

    @Nullable
    public String getDeviceManufacturer() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceManufacturer();
    }

    @Nullable
    public String getDeviceModel() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceModel();
    }

    @Nullable
    public String getDeviceProduct() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceProduct();
    }

    @Nullable
    public String getDeviceOsVersion() {
        if (this.D == null) {
            return null;
        }
        return this.D.getDeviceOsVersion();
    }

    @Nullable
    public Integer getDeviceScreenWidthDip() {
        return this.l;
    }

    @Nullable
    public Integer getDeviceScreenHeightDip() {
        return this.m;
    }

    @Nullable
    public Double getGeoLat() {
        return this.n;
    }

    @Nullable
    public Double getGeoLon() {
        return this.o;
    }

    @Nullable
    public Double getGeoAccuracy() {
        return this.p;
    }

    @Nullable
    public Double getPerformanceDurationMs() {
        return this.x;
    }

    @Nullable
    public ClientMetadata.MoPubNetworkType getNetworkType() {
        return this.q;
    }

    @Nullable
    public String getNetworkOperatorCode() {
        return this.r;
    }

    @Nullable
    public String getNetworkOperatorName() {
        return this.s;
    }

    @Nullable
    public String getNetworkIsoCountryCode() {
        return this.t;
    }

    @Nullable
    public String getNetworkSimCode() {
        return this.u;
    }

    @Nullable
    public String getNetworkSimOperatorName() {
        return this.v;
    }

    @Nullable
    public String getNetworkSimIsoCountryCode() {
        return this.w;
    }

    @Nullable
    public String getRequestId() {
        return this.y;
    }

    @Nullable
    public Integer getRequestStatusCode() {
        return this.z;
    }

    @Nullable
    public String getRequestUri() {
        return this.A;
    }

    @Nullable
    public Integer getRequestRetries() {
        return this.B;
    }

    public double getSamplingRate() {
        return this.E;
    }

    @NonNull
    public Long getTimestampUtcMs() {
        return Long.valueOf(this.C);
    }

    public String toString() {
        return "BaseEvent\nScribeCategory: " + getScribeCategory() + IOUtils.LINE_SEPARATOR_UNIX + "Name: " + getName() + IOUtils.LINE_SEPARATOR_UNIX + "Category: " + getCategory() + IOUtils.LINE_SEPARATOR_UNIX + "SdkProduct: " + getSdkProduct() + IOUtils.LINE_SEPARATOR_UNIX + "SdkVersion: " + getSdkVersion() + IOUtils.LINE_SEPARATOR_UNIX + "AdUnitId: " + getAdUnitId() + IOUtils.LINE_SEPARATOR_UNIX + "AdCreativeId: " + getAdCreativeId() + IOUtils.LINE_SEPARATOR_UNIX + "AdType: " + getAdType() + IOUtils.LINE_SEPARATOR_UNIX + "AdNetworkType: " + getAdNetworkType() + IOUtils.LINE_SEPARATOR_UNIX + "AdWidthPx: " + getAdWidthPx() + IOUtils.LINE_SEPARATOR_UNIX + "AdHeightPx: " + getAdHeightPx() + IOUtils.LINE_SEPARATOR_UNIX + "DspCreativeId: " + getDspCreativeId() + IOUtils.LINE_SEPARATOR_UNIX + "AppPlatform: " + getAppPlatform() + IOUtils.LINE_SEPARATOR_UNIX + "AppName: " + getAppName() + IOUtils.LINE_SEPARATOR_UNIX + "AppPackageName: " + getAppPackageName() + IOUtils.LINE_SEPARATOR_UNIX + "AppVersion: " + getAppVersion() + IOUtils.LINE_SEPARATOR_UNIX + "DeviceManufacturer: " + getDeviceManufacturer() + IOUtils.LINE_SEPARATOR_UNIX + "DeviceModel: " + getDeviceModel() + IOUtils.LINE_SEPARATOR_UNIX + "DeviceProduct: " + getDeviceProduct() + IOUtils.LINE_SEPARATOR_UNIX + "DeviceOsVersion: " + getDeviceOsVersion() + IOUtils.LINE_SEPARATOR_UNIX + "DeviceScreenWidth: " + getDeviceScreenWidthDip() + IOUtils.LINE_SEPARATOR_UNIX + "DeviceScreenHeight: " + getDeviceScreenHeightDip() + IOUtils.LINE_SEPARATOR_UNIX + "GeoLat: " + getGeoLat() + IOUtils.LINE_SEPARATOR_UNIX + "GeoLon: " + getGeoLon() + IOUtils.LINE_SEPARATOR_UNIX + "GeoAccuracy: " + getGeoAccuracy() + IOUtils.LINE_SEPARATOR_UNIX + "PerformanceDurationMs: " + getPerformanceDurationMs() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkType: " + getNetworkType() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkOperatorCode: " + getNetworkOperatorCode() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkOperatorName: " + getNetworkOperatorName() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkIsoCountryCode: " + getNetworkIsoCountryCode() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkSimCode: " + getNetworkSimCode() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkSimOperatorName: " + getNetworkSimOperatorName() + IOUtils.LINE_SEPARATOR_UNIX + "NetworkSimIsoCountryCode: " + getNetworkSimIsoCountryCode() + IOUtils.LINE_SEPARATOR_UNIX + "RequestId: " + getRequestId() + IOUtils.LINE_SEPARATOR_UNIX + "RequestStatusCode: " + getRequestStatusCode() + IOUtils.LINE_SEPARATOR_UNIX + "RequestUri: " + getRequestUri() + IOUtils.LINE_SEPARATOR_UNIX + "RequestRetries: " + getRequestRetries() + IOUtils.LINE_SEPARATOR_UNIX + "SamplingRate: " + getSamplingRate() + IOUtils.LINE_SEPARATOR_UNIX + "TimestampUtcMs: " + new SimpleDateFormat().format(new Date(getTimestampUtcMs().longValue())) + IOUtils.LINE_SEPARATOR_UNIX;
    }

    public static abstract class Builder {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private ScribeCategory f4193a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private Name f4194b;

        @NonNull
        private Category c;

        @Nullable
        private SdkProduct d;

        @Nullable
        private String e;

        @Nullable
        private String f;

        @Nullable
        private String g;

        @Nullable
        private String h;

        @Nullable
        private Double i;

        @Nullable
        private Double j;

        @Nullable
        private String k;

        @Nullable
        private Double l;

        @Nullable
        private Double m;

        @Nullable
        private Double n;

        @Nullable
        private Double o;

        @Nullable
        private String p;

        @Nullable
        private Integer q;

        @Nullable
        private String r;

        @Nullable
        private Integer s;
        private double t;

        public abstract BaseEvent build();

        public Builder(@NonNull ScribeCategory scribeCategory, @NonNull Name name, @NonNull Category category, double samplingRate) {
            Preconditions.checkNotNull(scribeCategory);
            Preconditions.checkNotNull(name);
            Preconditions.checkNotNull(category);
            Preconditions.checkArgument(samplingRate >= 0.0d && samplingRate <= 1.0d);
            this.f4193a = scribeCategory;
            this.f4194b = name;
            this.c = category;
            this.t = samplingRate;
        }

        @NonNull
        public Builder withSdkProduct(@Nullable SdkProduct sdkProduct) {
            this.d = sdkProduct;
            return this;
        }

        @NonNull
        public Builder withAdUnitId(@Nullable String adUnitId) {
            this.e = adUnitId;
            return this;
        }

        @NonNull
        public Builder withAdCreativeId(@Nullable String adCreativeId) {
            this.f = adCreativeId;
            return this;
        }

        @NonNull
        public Builder withAdType(@Nullable String adType) {
            this.g = adType;
            return this;
        }

        @NonNull
        public Builder withAdNetworkType(@Nullable String adNetworkType) {
            this.h = adNetworkType;
            return this;
        }

        @NonNull
        public Builder withAdWidthPx(@Nullable Double adWidthPx) {
            this.i = adWidthPx;
            return this;
        }

        @NonNull
        public Builder withAdHeightPx(@Nullable Double adHeightPx) {
            this.j = adHeightPx;
            return this;
        }

        @NonNull
        public Builder withDspCreativeId(@Nullable String dspCreativeId) {
            this.k = dspCreativeId;
            return this;
        }

        @NonNull
        public Builder withGeoLat(@Nullable Double geoLat) {
            this.l = geoLat;
            return this;
        }

        @NonNull
        public Builder withGeoLon(@Nullable Double geoLon) {
            this.m = geoLon;
            return this;
        }

        @NonNull
        public Builder withGeoAccuracy(@Nullable Double geoAccuracy) {
            this.n = geoAccuracy;
            return this;
        }

        @NonNull
        public Builder withPerformanceDurationMs(@Nullable Double performanceDurationMs) {
            this.o = performanceDurationMs;
            return this;
        }

        @NonNull
        public Builder withRequestId(@Nullable String requestId) {
            this.p = requestId;
            return this;
        }

        @NonNull
        public Builder withRequestStatusCode(@Nullable Integer requestStatusCode) {
            this.q = requestStatusCode;
            return this;
        }

        @NonNull
        public Builder withRequestUri(@Nullable String requestUri) {
            this.r = requestUri;
            return this;
        }

        @NonNull
        public Builder withRequestRetries(@Nullable Integer requestRetries) {
            this.s = requestRetries;
            return this;
        }
    }
}
