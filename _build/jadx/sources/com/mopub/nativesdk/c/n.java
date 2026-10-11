package com.mopub.nativesdk.c;

import android.net.Uri;
import com.facebook.ads.AudienceNetworkActivity;

/* compiled from: StrategyLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class n {

    /* renamed from: a, reason: collision with root package name */
    private StringBuilder f4632a;

    private n() {
        this.f4632a = new StringBuilder();
    }

    /* synthetic */ n(byte b2) {
        this();
    }

    public final n a(String str, Object obj) {
        String str2;
        String valueOf = String.valueOf(obj);
        if (valueOf == null || valueOf.trim().length() == 0) {
            str2 = "";
        } else {
            str2 = Uri.encode(valueOf, AudienceNetworkActivity.WEBVIEW_ENCODING);
        }
        this.f4632a.append(str).append('=').append(str2).append('&');
        return this;
    }

    public final String toString() {
        if (this.f4632a.charAt(this.f4632a.length() - 1) == '&') {
            this.f4632a.deleteCharAt(this.f4632a.length() - 1);
        }
        return this.f4632a.toString();
    }
}
