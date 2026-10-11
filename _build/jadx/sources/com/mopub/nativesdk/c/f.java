package com.mopub.nativesdk.c;

import android.net.Uri;
import com.facebook.ads.AudienceNetworkActivity;

/* compiled from: AdApiLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f {

    /* renamed from: a, reason: collision with root package name */
    private StringBuilder f4626a;

    private f() {
        this.f4626a = new StringBuilder();
    }

    /* synthetic */ f(byte b2) {
        this();
    }

    public final f a(String str, Object obj) {
        String str2;
        String valueOf = String.valueOf(obj);
        if (valueOf == null || valueOf.trim().length() == 0) {
            str2 = "";
        } else {
            str2 = Uri.encode(valueOf, AudienceNetworkActivity.WEBVIEW_ENCODING);
        }
        this.f4626a.append(str).append('=').append(str2).append('&');
        return this;
    }

    public final String toString() {
        if (this.f4626a.charAt(this.f4626a.length() - 1) == '&') {
            this.f4626a.deleteCharAt(this.f4626a.length() - 1);
        }
        return this.f4626a.toString();
    }
}
