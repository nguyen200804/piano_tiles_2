package com.mopub.volley;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.util.Collections;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetworkResponse {
    public final byte[] data;
    public final Map<String, String> headers;
    public final long networkTimeMs;
    public final boolean notModified;
    public final int statusCode;

    public NetworkResponse(int statusCode, byte[] data, Map<String, String> headers, boolean notModified, long networkTimeMs) {
        this.statusCode = statusCode;
        this.data = data;
        this.headers = headers;
        this.notModified = notModified;
        this.networkTimeMs = networkTimeMs;
    }

    public NetworkResponse(int statusCode, byte[] data, Map<String, String> headers, boolean notModified) {
        this(statusCode, data, headers, notModified, 0L);
    }

    public NetworkResponse(byte[] data) {
        this(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, data, Collections.emptyMap(), false, 0L);
    }

    public NetworkResponse(byte[] data, Map<String, String> headers) {
        this(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, data, headers, false, 0L);
    }
}
