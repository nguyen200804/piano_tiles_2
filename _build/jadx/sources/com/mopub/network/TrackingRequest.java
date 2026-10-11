package com.mopub.network;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastErrorCode;
import com.mopub.mobileads.VastMacroHelper;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class TrackingRequest extends Request<Void> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Listener f4744a;

    public interface Listener extends Response.ErrorListener {
        void onResponse(@NonNull String str);
    }

    private TrackingRequest(@NonNull String url, @Nullable Listener listener) {
        super(0, url, listener);
        this.f4744a = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 0, 1.0f));
    }

    @Override // com.mopub.volley.Request
    protected Response<Void> a(NetworkResponse networkResponse) {
        return networkResponse.statusCode != 200 ? Response.error(new MoPubNetworkError("Failed to log tracking request. Response code: " + networkResponse.statusCode + " for url: " + getUrl(), MoPubNetworkError.Reason.TRACKING_FAILURE)) : Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    @Override // com.mopub.volley.Request
    public void deliverResponse(Void aVoid) {
        if (this.f4744a != null) {
            this.f4744a.onResponse(getUrl());
        }
    }

    public static void makeVastTrackingHttpRequest(@NonNull List<VastTracker> vastTrackers, @Nullable VastErrorCode vastErrorCode, @Nullable Integer contentPlayHead, @Nullable String assetUri, @Nullable Context context) {
        Preconditions.checkNotNull(vastTrackers);
        ArrayList arrayList = new ArrayList(vastTrackers.size());
        for (VastTracker vastTracker : vastTrackers) {
            if (vastTracker != null && (!vastTracker.isTracked() || vastTracker.isRepeatable())) {
                arrayList.add(vastTracker.getTrackingUrl());
                vastTracker.setTracked();
            }
        }
        makeTrackingHttpRequest(new VastMacroHelper(arrayList).withErrorCode(vastErrorCode).withContentPlayHead(contentPlayHead).withAssetUri(assetUri).getUris(), context);
    }

    public static void makeTrackingHttpRequest(@Nullable Iterable<String> urls, @Nullable Context context, @Nullable final Listener listener, BaseEvent.Name name) {
        if (urls != null && context != null) {
            MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
            for (final String str : urls) {
                if (!TextUtils.isEmpty(str)) {
                    requestQueue.add(new TrackingRequest(str, new Listener() { // from class: com.mopub.network.TrackingRequest.1
                        @Override // com.mopub.network.TrackingRequest.Listener
                        public void onResponse(@NonNull String url) {
                            MoPubLog.d("Successfully hit tracking endpoint: " + url);
                            if (Listener.this != null) {
                                Listener.this.onResponse(url);
                            }
                        }

                        @Override // com.mopub.volley.Response.ErrorListener
                        public void onErrorResponse(VolleyError volleyError) {
                            MoPubLog.d("Failed to hit tracking endpoint: " + str);
                            if (Listener.this != null) {
                                Listener.this.onErrorResponse(volleyError);
                            }
                        }
                    }));
                }
            }
        }
    }

    public static void makeTrackingHttpRequest(@Nullable String url, @Nullable Context context) {
        makeTrackingHttpRequest(url, context, (Listener) null, (BaseEvent.Name) null);
    }

    public static void makeTrackingHttpRequest(@Nullable String url, @Nullable Context context, @Nullable Listener listener) {
        makeTrackingHttpRequest(url, context, listener, (BaseEvent.Name) null);
    }

    public static void makeTrackingHttpRequest(@Nullable String url, @Nullable Context context, BaseEvent.Name name) {
        makeTrackingHttpRequest(url, context, (Listener) null, name);
    }

    public static void makeTrackingHttpRequest(@Nullable String url, @Nullable Context context, @Nullable Listener listener, BaseEvent.Name name) {
        if (url != null) {
            makeTrackingHttpRequest(Arrays.asList(url), context, listener, name);
        }
    }

    public static void makeTrackingHttpRequest(@Nullable Iterable<String> urls, @Nullable Context context) {
        makeTrackingHttpRequest(urls, context, (Listener) null, (BaseEvent.Name) null);
    }

    public static void makeTrackingHttpRequest(@Nullable Iterable<String> urls, @Nullable Context context, BaseEvent.Name name) {
        makeTrackingHttpRequest(urls, context, (Listener) null, name);
    }
}
