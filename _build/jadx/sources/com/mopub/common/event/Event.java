package com.mopub.common.event;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Event extends BaseEvent {
    private Event(@NonNull Builder builder) {
        super(builder);
    }

    public static class Builder extends BaseEvent.Builder {
        public Builder(@NonNull BaseEvent.Name name, @NonNull BaseEvent.Category category, double samplingRate) {
            super(BaseEvent.ScribeCategory.EXCHANGE_CLIENT_EVENT, name, category, samplingRate);
        }

        @Override // com.mopub.common.event.BaseEvent.Builder
        @NonNull
        public Event build() {
            return new Event(this);
        }
    }

    @Nullable
    public static BaseEvent createEventFromDetails(@NonNull BaseEvent.Name name, @NonNull BaseEvent.Category category, @NonNull BaseEvent.SamplingRate samplingRate, @Nullable EventDetails eventDetails) {
        Preconditions.checkNotNull(name);
        Preconditions.checkNotNull(category);
        Preconditions.checkNotNull(samplingRate);
        if (eventDetails == null) {
            MoPubLog.d("Unable to log event due to no details present");
            return null;
        }
        return new Builder(name, category, samplingRate.getSamplingRate()).withAdUnitId(eventDetails.getAdUnitId()).withAdCreativeId(eventDetails.getDspCreativeId()).withAdType(eventDetails.getAdType()).withAdNetworkType(eventDetails.getAdNetworkType()).withAdWidthPx(eventDetails.getAdWidthPx()).withAdHeightPx(eventDetails.getAdHeightPx()).withGeoLat(eventDetails.getGeoLatitude()).withGeoLon(eventDetails.getGeoLongitude()).withGeoAccuracy(eventDetails.getGeoAccuracy()).withPerformanceDurationMs(eventDetails.getPerformanceDurationMs()).withRequestId(eventDetails.getRequestId()).withRequestStatusCode(eventDetails.getRequestStatusCode()).withRequestUri(eventDetails.getRequestUri()).build();
    }
}
