package com.cmcm.dmc.sdk.g;

import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static e f772a;

    /* renamed from: b, reason: collision with root package name */
    private String f773b;
    private String c;

    public static e a() {
        if (f772a == null) {
            synchronized (e.class) {
                if (f772a == null) {
                    f772a = new e();
                }
            }
        }
        return f772a;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(this.c)) {
            this.c = str;
        }
    }

    public void b() {
        this.f773b = null;
        this.c = null;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(this.f773b)) {
            this.f773b = str;
        }
    }

    public String c() {
        StringBuffer stringBuffer = new StringBuffer();
        if (TextUtils.isEmpty(this.f773b)) {
            this.f773b = "00";
        }
        if (TextUtils.isEmpty(this.c)) {
            this.c = "00";
        }
        stringBuffer.append(this.f773b).append(",").append(this.c);
        return stringBuffer.toString();
    }
}
