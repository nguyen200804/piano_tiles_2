package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class BaseUrlGenerator {

    /* renamed from: a, reason: collision with root package name */
    private StringBuilder f4116a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4117b;

    public abstract String generateUrlString(String str);

    protected void a(String str, String str2) {
        this.f4116a = new StringBuilder(Networking.getScheme()).append("://").append(str).append(str2);
        this.f4117b = true;
    }

    protected String a() {
        return this.f4116a.toString();
    }

    protected void b(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.f4116a.append(c());
            this.f4116a.append(str);
            this.f4116a.append("=");
            this.f4116a.append(Uri.encode(str2));
        }
    }

    private String c() {
        if (!this.f4117b) {
            return "&";
        }
        this.f4117b = false;
        return "?";
    }

    protected void k(String str) {
        b("v", str);
    }

    protected void l(String str) {
        b("av", str);
    }

    protected void b(boolean z) {
        b("android_perms_ext_storage", z ? "1" : "0");
    }

    protected void a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr != null && strArr.length >= 1) {
            for (int i = 0; i < strArr.length - 1; i++) {
                sb.append(strArr[i]).append(",");
            }
            sb.append(strArr[strArr.length - 1]);
            b("dn", sb.toString());
        }
    }

    protected void b() {
        b("udid", PlayServicesUrlRewriter.UDID_TEMPLATE);
        b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
    }

    protected void a(@NonNull Point point) {
        b("w", "" + point.x);
        b("h", "" + point.y);
    }
}
