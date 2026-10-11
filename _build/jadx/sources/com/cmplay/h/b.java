package com.cmplay.h;

import android.os.Bundle;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.LoveShareActivity;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.i;
import com.facebook.l;
import java.util.Locale;

/* compiled from: FBInfocClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private com.facebook.appevents.a f1380a;

    /* compiled from: FBInfocClient.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static b f1382a = new b();
    }

    private b() {
        this.f1380a = null;
        l.a(GameApp.f1598a);
        this.f1380a = com.facebook.appevents.a.b(GameApp.f1598a);
    }

    public static b a() {
        return a.f1382a;
    }

    public com.facebook.appevents.a b() {
        return this.f1380a;
    }

    public void a(String str) {
        a(str, (Bundle) null);
    }

    public void a(String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            b().a("PT2_" + str, bundle);
        }
    }

    public void c() {
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (!TextUtils.isEmpty(language)) {
            String country = locale.getCountry();
            if (!TextUtils.isEmpty(country)) {
                language = String.format(Locale.US, "%s-%s", language, country);
            }
            Bundle bundle = new Bundle();
            bundle.putString("locale", language);
            bundle.putInt("app_version", com.cmplay.util.e.a(GameApp.f1598a, GameApp.f1598a.getPackageName()));
            a("app_Launch_Lan", bundle);
            i.a(new Runnable() { // from class: com.cmplay.h.b.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean isFBEverLoginBefore = NativeUtil.isFBEverLoginBefore();
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("login_state", String.valueOf(isFBEverLoginBefore));
                    b.this.a("login_state", bundle2);
                }
            });
        }
    }

    public void d() {
        Bundle bundle = new Bundle();
        bundle.putString("custom_id", NativeUtil.getAndroidId());
        a("complete_registration", bundle);
    }

    public static String a(int i) {
        switch (i) {
            case 1:
                return "_main";
            case 2:
                return "_result";
            case 3:
                return "_setting";
            case 4:
                return "_energy";
            case 5:
                return "_hall";
            case 6:
                return "_top_rank";
            case 7:
                return "_sub_rank";
            case 8:
                return "_top_rank_chg";
            case 9:
                return "_sub_rank_no1";
            case 10:
                return "_mf_invite";
            case 11:
                return "_h5";
            case 12:
                return "_subs";
            case 13:
                return "_hw_r";
            case 14:
                return "_hw_m";
            case 15:
                return "_chr_cp";
            case 16:
                return "_chr_cd";
            case 17:
                return "_vlt";
            case 18:
                return "_mix";
            case 19:
                return "_presl";
            case 20:
                return "_col_sys";
            case MotionEventCompat.AXIS_WHEEL /* 21 */:
                return "_chr_pic";
            default:
                return "";
        }
    }

    public static int b(int i) {
        switch (i) {
            case 2:
                if (LoveShareActivity.f1634a != 1) {
                }
                break;
            case 5:
                if (d.m == 3) {
                }
                break;
        }
        return 910;
    }

    public static int e() {
        switch (d.n) {
            case 0:
            case 3:
                return 6300;
            case 1:
                return 6200;
            case 2:
                return 6100;
            case 4:
                return 6356;
            default:
                return 0;
        }
    }

    public static int a(int i, int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 9:
                return 7001;
            case 3:
                return 7002;
            case 4:
                return 7003;
            case 5:
                return 7004;
            case 6:
                return 7006;
            case 7:
                return 7007;
            case 8:
            default:
                return 0;
        }
    }
}
