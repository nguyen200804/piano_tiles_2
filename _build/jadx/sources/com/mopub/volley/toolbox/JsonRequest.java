package com.mopub.volley.toolbox;

import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
import java.io.UnsupportedEncodingException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class JsonRequest<T> extends Request<T> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4802a = String.format("application/json; charset=%s", AudienceNetworkActivity.WEBVIEW_ENCODING);

    /* renamed from: b, reason: collision with root package name */
    private final Response.Listener<T> f4803b;
    private final String c;

    @Override // com.mopub.volley.Request
    protected abstract Response<T> a(NetworkResponse networkResponse);

    public JsonRequest(String url, String requestBody, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, url, requestBody, listener, errorListener);
    }

    public JsonRequest(int method, String url, String requestBody, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        super(method, url, errorListener);
        this.f4803b = listener;
        this.c = requestBody;
    }

    @Override // com.mopub.volley.Request
    protected void deliverResponse(T response) {
        this.f4803b.onResponse(response);
    }

    @Override // com.mopub.volley.Request
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.mopub.volley.Request
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.mopub.volley.Request
    public String getBodyContentType() {
        return f4802a;
    }

    @Override // com.mopub.volley.Request
    public byte[] getBody() {
        try {
            if (this.c == null) {
                return null;
            }
            return this.c.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (UnsupportedEncodingException e) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.c, AudienceNetworkActivity.WEBVIEW_ENCODING);
            return null;
        }
    }
}
