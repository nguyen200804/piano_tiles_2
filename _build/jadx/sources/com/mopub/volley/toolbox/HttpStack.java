package com.mopub.volley.toolbox;

import com.mopub.volley.AuthFailureError;
import com.mopub.volley.Request;
import java.io.IOException;
import java.util.Map;
import org.apache.http.HttpResponse;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface HttpStack {
    HttpResponse performRequest(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError;
}
