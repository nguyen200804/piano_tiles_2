package com.mopub.volley.toolbox;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class JsonArrayRequest extends JsonRequest<JSONArray> {
    public JsonArrayRequest(String url, Response.Listener<JSONArray> listener, Response.ErrorListener errorListener) {
        super(0, url, null, listener, errorListener);
    }

    @Override // com.mopub.volley.toolbox.JsonRequest, com.mopub.volley.Request
    protected Response<JSONArray> a(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONArray(new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers))), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e) {
            return Response.error(new ParseError(e));
        } catch (JSONException e2) {
            return Response.error(new ParseError(e2));
        }
    }
}
