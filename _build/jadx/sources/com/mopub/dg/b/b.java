package com.mopub.dg.b;

import android.content.Context;
import java.net.URLEncoder;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public String f4253a;

    /* renamed from: b, reason: collision with root package name */
    public String f4254b;
    public String c;
    Context d;

    public b(Context context) {
        this.d = context;
    }

    public static String b(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            return str;
        }
    }

    public String a() {
        return "";
    }

    public ArrayList a(String str) {
        return new ArrayList();
    }
}
