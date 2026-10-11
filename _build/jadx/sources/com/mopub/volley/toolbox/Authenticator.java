package com.mopub.volley.toolbox;

import com.mopub.volley.AuthFailureError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface Authenticator {
    String getAuthToken() throws AuthFailureError;

    void invalidateAuthToken(String str);
}
