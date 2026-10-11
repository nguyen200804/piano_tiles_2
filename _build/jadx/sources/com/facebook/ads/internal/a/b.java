package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2562a = b.class.getSimpleName();

    public static a a(Context context, String str, Uri uri, Map<String, String> map) {
        String queryParameter;
        String authority = uri.getAuthority();
        queryParameter = uri.getQueryParameter(BaseVideoPlayerActivity.VIDEO_URL);
        if (!TextUtils.isEmpty(uri.getQueryParameter("data"))) {
            try {
                JSONObject jSONObject = new JSONObject(uri.getQueryParameter("data"));
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    map.put(next, jSONObject.getString(next));
                }
            } catch (JSONException e) {
                Log.w(f2562a, "Unable to parse json data in AdActionFactory.", e);
            }
        }
        switch (authority) {
            case "store":
                if (queryParameter != null) {
                    return null;
                }
                return new c(context, str, uri, map);
            case "open_link":
                return new d(context, str, uri, map);
            case "passthrough":
                return new e(context, str, uri, map);
            default:
                return new f(context, str, uri);
        }
    }

    public static boolean a(String str) {
        return "store".equalsIgnoreCase(str) || "open_link".equalsIgnoreCase(str);
    }
}
