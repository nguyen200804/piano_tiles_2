package com.mopub.common.event;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Json;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EventDetails {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Map<String, String> f4209a;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final Map<String, String> f4210a = new HashMap();

        @NonNull
        public Builder adUnitId(@Nullable String adUnitId) {
            if (adUnitId != null) {
                this.f4210a.put("ad_unit_id", adUnitId);
            }
            return this;
        }

        @NonNull
        public Builder dspCreativeId(@Nullable String dspCreativeId) {
            if (dspCreativeId != null) {
                this.f4210a.put("dsp_creative_id", dspCreativeId);
            }
            return this;
        }

        @NonNull
        public Builder adType(@Nullable String adType) {
            if (adType != null) {
                this.f4210a.put("ad_type", adType);
            }
            return this;
        }

        @NonNull
        public Builder adNetworkType(@Nullable String adNetworkType) {
            if (adNetworkType != null) {
                this.f4210a.put("ad_network_type", adNetworkType);
            }
            return this;
        }

        @NonNull
        public Builder adWidthPx(@Nullable Integer adWidthPx) {
            if (adWidthPx != null) {
                this.f4210a.put("ad_width_px", String.valueOf(adWidthPx));
            }
            return this;
        }

        @NonNull
        public Builder adHeightPx(@Nullable Integer adHeightPx) {
            if (adHeightPx != null) {
                this.f4210a.put("ad_height_px_key", String.valueOf(adHeightPx));
            }
            return this;
        }

        @NonNull
        public Builder geoLatitude(@Nullable Double geoLatitude) {
            if (geoLatitude != null) {
                this.f4210a.put("geo_latitude", String.valueOf(geoLatitude));
            }
            return this;
        }

        @NonNull
        public Builder geoLongitude(@Nullable Double geoLongitude) {
            if (geoLongitude != null) {
                this.f4210a.put("geo_longitude", String.valueOf(geoLongitude));
            }
            return this;
        }

        @NonNull
        public Builder geoAccuracy(@Nullable Float geoAccuracy) {
            if (geoAccuracy != null) {
                this.f4210a.put("geo_accuracy_key", String.valueOf(geoAccuracy.floatValue()));
            }
            return this;
        }

        @NonNull
        public Builder performanceDurationMs(@Nullable Long performanceDurationMs) {
            if (performanceDurationMs != null) {
                this.f4210a.put("performance_duration_ms", String.valueOf(performanceDurationMs.longValue()));
            }
            return this;
        }

        @NonNull
        public Builder requestId(@Nullable String requestId) {
            if (requestId != null) {
                this.f4210a.put("request_id_key", requestId);
            }
            return this;
        }

        @NonNull
        public Builder requestStatusCode(@Nullable Integer requestStatusCode) {
            if (requestStatusCode != null) {
                this.f4210a.put("request_status_code", String.valueOf(requestStatusCode));
            }
            return this;
        }

        @NonNull
        public Builder requestUri(@Nullable String requestUri) {
            if (requestUri != null) {
                this.f4210a.put("request_uri_key", requestUri);
            }
            return this;
        }

        @NonNull
        public EventDetails build() {
            return new EventDetails(this.f4210a);
        }
    }

    private EventDetails(@NonNull Map<String, String> eventDetailsMap) {
        Preconditions.checkNotNull(eventDetailsMap);
        this.f4209a = eventDetailsMap;
    }

    @Nullable
    public String getAdUnitId() {
        return this.f4209a.get("ad_unit_id");
    }

    @Nullable
    public String getDspCreativeId() {
        return this.f4209a.get("dsp_creative_id");
    }

    @Nullable
    public String getAdType() {
        return this.f4209a.get("ad_type");
    }

    @Nullable
    public String getAdNetworkType() {
        return this.f4209a.get("ad_network_type");
    }

    @Nullable
    public Double getAdWidthPx() {
        return a(this.f4209a, "ad_width_px");
    }

    @Nullable
    public Double getAdHeightPx() {
        return a(this.f4209a, "ad_height_px_key");
    }

    @Nullable
    public Double getGeoLatitude() {
        return a(this.f4209a, "geo_latitude");
    }

    @Nullable
    public Double getGeoLongitude() {
        return a(this.f4209a, "geo_longitude");
    }

    @Nullable
    public Double getGeoAccuracy() {
        return a(this.f4209a, "geo_accuracy_key");
    }

    @Nullable
    public Double getPerformanceDurationMs() {
        return a(this.f4209a, "performance_duration_ms");
    }

    @Nullable
    public String getRequestId() {
        return this.f4209a.get("request_id_key");
    }

    @Nullable
    public Integer getRequestStatusCode() {
        return b(this.f4209a, "request_status_code");
    }

    @Nullable
    public String getRequestUri() {
        return this.f4209a.get("request_uri_key");
    }

    public String toJsonString() {
        return Json.mapToJsonString(this.f4209a);
    }

    public String toString() {
        return toJsonString();
    }

    @Nullable
    private static Double a(@NonNull Map<String, String> map, @NonNull String str) {
        String str2 = map.get(str);
        if (str2 == null) {
            return null;
        }
        try {
            return Double.valueOf(Double.parseDouble(str2));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    @Nullable
    private static Integer b(@NonNull Map<String, String> map, @NonNull String str) {
        String str2 = map.get(str);
        if (str2 == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(str2));
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
