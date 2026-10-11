package com.mopub.network;

import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.Event;
import com.mopub.common.event.EventDetails;
import com.mopub.common.event.MoPubEvents;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.ResponseHeader;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdRequest extends Request<AdResponse> {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Listener f4709a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final AdFormat f4710b;

    @Nullable
    private final String c;

    @NonNull
    private final Context d;

    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    public AdRequest(@NonNull String url, @NonNull AdFormat adFormat, @Nullable String adUnitId, @NonNull Context context, @NonNull Listener listener) {
        super(0, url, listener);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(listener);
        this.c = adUnitId;
        this.f4709a = listener;
        this.f4710b = adFormat;
        this.d = context.getApplicationContext();
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f));
        setShouldCache(false);
    }

    @NonNull
    public Listener getListener() {
        return this.f4709a;
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getHeaders() {
        TreeMap treeMap = new TreeMap();
        String language = Locale.getDefault().getLanguage();
        Locale locale = this.d.getResources().getConfiguration().locale;
        if (locale != null && !locale.getLanguage().trim().isEmpty()) {
            language = locale.getLanguage().trim();
        }
        if (!language.isEmpty()) {
            treeMap.put(ResponseHeader.ACCEPT_LANGUAGE.getKey(), language);
        }
        return treeMap;
    }

    @Override // com.mopub.volley.Request
    protected Response<AdResponse> a(NetworkResponse networkResponse) {
        Map<String, String> map = networkResponse.headers;
        if (HeaderUtils.extractBooleanHeader(map, ResponseHeader.WARMUP, false)) {
            return Response.error(new MoPubNetworkError("Ad Unit is warming up.", MoPubNetworkError.Reason.WARMING_UP));
        }
        Location lastKnownLocation = LocationService.getLastKnownLocation(this.d, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        AdResponse.Builder builder = new AdResponse.Builder();
        builder.setAdUnitId(this.c);
        String extractHeader = HeaderUtils.extractHeader(map, ResponseHeader.AD_TYPE);
        String extractHeader2 = HeaderUtils.extractHeader(map, ResponseHeader.FULL_AD_TYPE);
        builder.setAdType(extractHeader);
        builder.setFullAdType(extractHeader2);
        Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(map, ResponseHeader.REFRESH_TIME);
        Integer valueOf = extractIntegerHeader == null ? null : Integer.valueOf(extractIntegerHeader.intValue() * 1000);
        builder.setRefreshTimeMilliseconds(valueOf);
        if (AdType.CLEAR.equals(extractHeader)) {
            a(builder.build(), networkResponse, lastKnownLocation);
            return Response.error(new MoPubNetworkError("No ads found for ad unit.", MoPubNetworkError.Reason.NO_FILL, valueOf));
        }
        String extractHeader3 = HeaderUtils.extractHeader(map, ResponseHeader.DSP_CREATIVE_ID);
        builder.setDspCreativeId(extractHeader3);
        String extractHeader4 = HeaderUtils.extractHeader(map, ResponseHeader.NETWORK_TYPE);
        builder.setNetworkType(extractHeader4);
        String extractHeader5 = HeaderUtils.extractHeader(map, ResponseHeader.REDIRECT_URL);
        builder.setRedirectUrl(extractHeader5);
        String extractHeader6 = HeaderUtils.extractHeader(map, ResponseHeader.CLICK_TRACKING_URL);
        builder.setClickTrackingUrl(extractHeader6);
        builder.setImpressionTrackingUrl(HeaderUtils.extractHeader(map, ResponseHeader.IMPRESSION_URL));
        String extractHeader7 = HeaderUtils.extractHeader(map, ResponseHeader.FAIL_URL);
        builder.setFailoverUrl(extractHeader7);
        String a2 = a(extractHeader7);
        builder.setRequestId(a2);
        boolean extractBooleanHeader = HeaderUtils.extractBooleanHeader(map, ResponseHeader.SCROLLABLE, false);
        builder.setScrollable(Boolean.valueOf(extractBooleanHeader));
        Integer extractIntegerHeader2 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.WIDTH);
        Integer extractIntegerHeader3 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.HEIGHT);
        builder.setDimensions(extractIntegerHeader2, extractIntegerHeader3);
        Integer extractIntegerHeader4 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.AD_TIMEOUT);
        builder.setAdTimeoutDelayMilliseconds(extractIntegerHeader4 == null ? null : Integer.valueOf(extractIntegerHeader4.intValue() * 1000));
        String b2 = b(networkResponse);
        builder.setResponseBody(b2);
        if (AdType.STATIC_NATIVE.equals(extractHeader) || AdType.VIDEO_NATIVE.equals(extractHeader)) {
            try {
                builder.setJsonBody(new JSONObject(b2));
            } catch (JSONException e) {
                return Response.error(new MoPubNetworkError("Failed to decode body JSON for native ad format", e, MoPubNetworkError.Reason.BAD_BODY));
            }
        }
        builder.setCustomEventClassName(AdTypeTranslator.getCustomEventName(this.f4710b, extractHeader, extractHeader2, map));
        MoPub.BrowserAgent fromHeader = MoPub.BrowserAgent.fromHeader(HeaderUtils.extractIntegerHeader(map, ResponseHeader.BROWSER_AGENT));
        MoPub.setBrowserAgentFromAdServer(fromHeader);
        builder.setBrowserAgent(fromHeader);
        String extractHeader8 = HeaderUtils.extractHeader(map, ResponseHeader.CUSTOM_EVENT_DATA);
        if (TextUtils.isEmpty(extractHeader8)) {
            extractHeader8 = HeaderUtils.extractHeader(map, ResponseHeader.NATIVE_PARAMS);
        }
        try {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(extractHeader8);
            if (extractHeader5 != null) {
                jsonStringToMap.put(DataKeys.REDIRECT_URL_KEY, extractHeader5);
            }
            if (extractHeader6 != null) {
                jsonStringToMap.put(DataKeys.CLICKTHROUGH_URL_KEY, extractHeader6);
            }
            if (a(extractHeader, extractHeader2)) {
                jsonStringToMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, b2);
                jsonStringToMap.put(DataKeys.SCROLLABLE_KEY, Boolean.toString(extractBooleanHeader));
                jsonStringToMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, HeaderUtils.extractHeader(map, ResponseHeader.ORIENTATION));
            }
            if (AdType.VIDEO_NATIVE.equals(extractHeader)) {
                jsonStringToMap.put(DataKeys.PLAY_VISIBLE_PERCENT, HeaderUtils.extractPercentHeaderString(map, ResponseHeader.PLAY_VISIBLE_PERCENT));
                jsonStringToMap.put(DataKeys.PAUSE_VISIBLE_PERCENT, HeaderUtils.extractPercentHeaderString(map, ResponseHeader.PAUSE_VISIBLE_PERCENT));
                jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT, HeaderUtils.extractPercentHeaderString(map, ResponseHeader.IMPRESSION_MIN_VISIBLE_PERCENT));
                jsonStringToMap.put(DataKeys.IMPRESSION_VISIBLE_MS, HeaderUtils.extractHeader(map, ResponseHeader.IMPRESSION_VISIBLE_MS));
                jsonStringToMap.put(DataKeys.MAX_BUFFER_MS, HeaderUtils.extractHeader(map, ResponseHeader.MAX_BUFFER_MS));
                builder.setEventDetails(new EventDetails.Builder().adUnitId(this.c).adType(extractHeader).adNetworkType(extractHeader4).adWidthPx(extractIntegerHeader2).adHeightPx(extractIntegerHeader3).dspCreativeId(extractHeader3).geoLatitude(lastKnownLocation == null ? null : Double.valueOf(lastKnownLocation.getLatitude())).geoLongitude(lastKnownLocation == null ? null : Double.valueOf(lastKnownLocation.getLongitude())).geoAccuracy(lastKnownLocation == null ? null : Float.valueOf(lastKnownLocation.getAccuracy())).performanceDurationMs(Long.valueOf(networkResponse.networkTimeMs)).requestId(a2).requestStatusCode(Integer.valueOf(networkResponse.statusCode)).requestUri(getUrl()).build());
            }
            String extractHeader9 = HeaderUtils.extractHeader(map, ResponseHeader.VIDEO_TRACKERS);
            if (extractHeader9 != null) {
                jsonStringToMap.put(DataKeys.VIDEO_TRACKERS_KEY, extractHeader9);
            }
            builder.setServerExtras(jsonStringToMap);
            if (AdType.REWARDED_VIDEO.equals(extractHeader) || AdType.CUSTOM.equals(extractHeader) || AdType.REWARDED_PLAYABLE.equals(extractHeader)) {
                String extractHeader10 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_VIDEO_CURRENCY_NAME);
                String extractHeader11 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_VIDEO_CURRENCY_AMOUNT);
                String extractHeader12 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_CURRENCIES);
                String extractHeader13 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_VIDEO_COMPLETION_URL);
                Integer extractIntegerHeader5 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.REWARDED_DURATION);
                boolean extractBooleanHeader2 = HeaderUtils.extractBooleanHeader(map, ResponseHeader.SHOULD_REWARD_ON_CLICK, false);
                builder.setRewardedVideoCurrencyName(extractHeader10);
                builder.setRewardedVideoCurrencyAmount(extractHeader11);
                builder.setRewardedCurrencies(extractHeader12);
                builder.setRewardedVideoCompletionUrl(extractHeader13);
                builder.setRewardedDuration(extractIntegerHeader5);
                builder.setShouldRewardOnClick(extractBooleanHeader2);
            }
            a(builder.build(), networkResponse, lastKnownLocation);
            return Response.success(builder.build(), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (JSONException e2) {
            return Response.error(new MoPubNetworkError("Failed to decode server extras for custom event data.", e2, MoPubNetworkError.Reason.BAD_HEADER_DATA));
        }
    }

    private boolean a(@Nullable String str, @Nullable String str2) {
        return AdType.MRAID.equals(str) || AdType.HTML.equals(str) || (AdType.INTERSTITIAL.equals(str) && FullAdType.VAST.equals(str2)) || ((AdType.REWARDED_VIDEO.equals(str) && FullAdType.VAST.equals(str2)) || AdType.REWARDED_PLAYABLE.equals(str));
    }

    protected String b(NetworkResponse networkResponse) {
        try {
            return new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            return new String(networkResponse.data);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(AdResponse adResponse) {
        this.f4709a.onSuccess(adResponse);
    }

    @Nullable
    @VisibleForTesting
    String a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return Uri.parse(str).getQueryParameter("request_id");
        } catch (UnsupportedOperationException e) {
            MoPubLog.d("Unable to obtain request id from fail url.");
            return null;
        }
    }

    @VisibleForTesting
    void a(@NonNull AdResponse adResponse, @NonNull NetworkResponse networkResponse, @Nullable Location location) {
        Preconditions.checkNotNull(adResponse);
        Preconditions.checkNotNull(networkResponse);
        MoPubEvents.log(new Event.Builder(BaseEvent.Name.AD_REQUEST, BaseEvent.Category.REQUESTS, BaseEvent.SamplingRate.AD_REQUEST.getSamplingRate()).withAdUnitId(this.c).withDspCreativeId(adResponse.getDspCreativeId()).withAdType(adResponse.getAdType()).withAdNetworkType(adResponse.getNetworkType()).withAdWidthPx(adResponse.getWidth() != null ? Double.valueOf(adResponse.getWidth().doubleValue()) : null).withAdHeightPx(adResponse.getHeight() != null ? Double.valueOf(adResponse.getHeight().doubleValue()) : null).withGeoLat(location != null ? Double.valueOf(location.getLatitude()) : null).withGeoLon(location != null ? Double.valueOf(location.getLongitude()) : null).withGeoAccuracy(location != null ? Double.valueOf(location.getAccuracy()) : null).withPerformanceDurationMs(Double.valueOf(networkResponse.networkTimeMs)).withRequestId(adResponse.getRequestId()).withRequestStatusCode(Integer.valueOf(networkResponse.statusCode)).withRequestUri(getUrl()).build());
    }
}
