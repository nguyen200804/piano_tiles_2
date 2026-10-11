package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.unity3d.ads.metadata.MediationMetaData;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FacebookWebFallbackDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j extends ac {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3204a = j.class.getName();

    /* renamed from: b, reason: collision with root package name */
    private boolean f3205b;

    public j(Context context, String str, String str2) {
        super(context, str);
        b(str2);
    }

    @Override // com.facebook.internal.ac
    protected Bundle a(String str) {
        Bundle c = aa.c(Uri.parse(str).getQuery());
        String string = c.getString("bridge_args");
        c.remove("bridge_args");
        if (!aa.a(string)) {
            try {
                c.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", d.a(new JSONObject(string)));
            } catch (JSONException e) {
                aa.a(f3204a, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = c.getString("method_results");
        c.remove("method_results");
        if (!aa.a(string2)) {
            if (aa.a(string2)) {
                string2 = "{}";
            }
            try {
                c.putBundle("com.facebook.platform.protocol.RESULT_ARGS", d.a(new JSONObject(string2)));
            } catch (JSONException e2) {
                aa.a(f3204a, "Unable to parse bridge_args JSON", e2);
            }
        }
        c.remove(MediationMetaData.KEY_VERSION);
        c.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", v.a());
        return c;
    }

    @Override // com.facebook.internal.ac, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView c = c();
        if (!b() || a() || c == null || !c.isShown()) {
            super.cancel();
        } else if (!this.f3205b) {
            this.f3205b = true;
            c.loadUrl("javascript:(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.j.1
                @Override // java.lang.Runnable
                public void run() {
                    j.super.cancel();
                }
            }, 1500L);
        }
    }
}
