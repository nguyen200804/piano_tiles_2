package com.cmplay.a;

import android.app.Activity;
import android.text.TextUtils;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;

/* compiled from: GPLogin.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements com.cmplay.sharebase.b {

    /* renamed from: a, reason: collision with root package name */
    public static int f1138a = 2;

    /* compiled from: GPLogin.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static b f1139a = new b();
    }

    public static b a() {
        return a.f1139a;
    }

    @Override // com.cmplay.sharebase.b
    public void a(Activity activity) {
        f1138a = 1;
        g();
    }

    @Override // com.cmplay.sharebase.b
    public void b() {
        aa.a("gp_auth_token", "");
    }

    @Override // com.cmplay.sharebase.b
    public boolean c() {
        return TextUtils.isEmpty(aa.b("authAccount", ""));
    }

    @Override // com.cmplay.sharebase.b
    public String e() {
        String b2 = aa.b("gp_auth_token", "");
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        return b2;
    }

    @Override // com.cmplay.sharebase.b
    public void g() {
        NativeUtil.reqPlayGamesUserInfo();
    }

    @Override // com.cmplay.sharebase.b
    public void h() {
    }

    @Override // com.cmplay.sharebase.b
    public void i() {
    }
}
