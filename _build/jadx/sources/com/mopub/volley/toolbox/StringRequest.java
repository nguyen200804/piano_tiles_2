package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class StringRequest extends Request<String> {

    /* renamed from: a, reason: collision with root package name */
    private final Response.Listener<String> f4813a;

    public StringRequest(int method, String url, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(method, url, errorListener);
        this.f4813a = listener;
    }

    public StringRequest(String url, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        this(0, url, listener, errorListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(String str) {
        this.f4813a.onResponse(str);
    }

    @Override // com.mopub.volley.Request
    protected Response<String> a(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }
}
