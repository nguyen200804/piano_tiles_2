package com.mopub.network;

import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.EventSerializer;
import com.mopub.network.RequestManager;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ScribeRequest extends Request<Void> {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final List<BaseEvent> f4739a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final EventSerializer f4740b;

    @NonNull
    private final Listener c;

    public interface Listener extends Response.ErrorListener {
        void onResponse();
    }

    public interface ScribeRequestFactory extends RequestManager.RequestFactory {
        ScribeRequest createRequest(Listener listener);
    }

    public ScribeRequest(@NonNull String url, @NonNull List<BaseEvent> events, @NonNull EventSerializer eventSerializer, @NonNull Listener listener) {
        super(1, url, listener);
        this.f4739a = events;
        this.f4740b = eventSerializer;
        this.c = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy());
    }

    @Override // com.mopub.volley.Request
    protected Map<String, String> a() {
        JSONArray serializeAsJson = this.f4740b.serializeAsJson(this.f4739a);
        HashMap hashMap = new HashMap();
        hashMap.put("log", serializeAsJson.toString());
        return hashMap;
    }

    @Override // com.mopub.volley.Request
    protected Response<Void> a(NetworkResponse networkResponse) {
        return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(Void r2) {
        this.c.onResponse();
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    public List<BaseEvent> getEvents() {
        return this.f4739a;
    }
}
