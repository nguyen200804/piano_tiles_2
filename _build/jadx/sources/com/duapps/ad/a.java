package com.duapps.ad;

import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;

/* compiled from: AdError.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f1982a = new a(1000, "Network Error");

    /* renamed from: b, reason: collision with root package name */
    public static final a f1983b = new a(1001, "No Fill");
    public static final a c = new a(1002, "Ad was re-loaded too frequently");
    public static final a d = new a(AdError.SERVER_ERROR_CODE, "Server Error");
    public static final a e = new a(AdError.INTERNAL_ERROR_CODE, "Internal Error");
    public static final a f = new a(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, "Time Out");
    public static final a g = new a(3001, "unknow error");
    public static final a h = new a(AuthApiStatusCodes.AUTH_API_CLIENT_ERROR, "no channel error");

    @Deprecated
    public static final a i = new a(AdError.CACHE_ERROR_CODE, "Native ad failed to load due to missing properties");
    private final int j;
    private final String k;

    public a(int i2, String str) {
        str = TextUtils.isEmpty(str) ? "unknown error" : str;
        this.j = i2;
        this.k = str;
    }

    public int a() {
        return this.j;
    }

    public String b() {
        return this.k;
    }
}
