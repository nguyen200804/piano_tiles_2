package com.cmplay.h;

import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.aa;
import com.cmplay.util.j;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/* compiled from: ShareContent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private String f1385a;

    /* renamed from: b, reason: collision with root package name */
    private String f1386b;
    private String c;
    private int e;
    private int f;
    private String g;
    private String i;
    private int h = 1;
    private String d = GameApp.f1598a.getResources().getString(2131034150);

    public void a(int i, int i2) {
        b(i);
        c(i2);
        e(a(i2));
        a(d.a(i, i2));
    }

    public static String a(int i) {
        String string;
        if (2 == i || 5 == i) {
            if (1 == d.n) {
                switch (d.m) {
                    case 3:
                        String b2 = aa.b("key_master_banner_url", "");
                        if (TextUtils.isEmpty(b2)) {
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                            return GameApp.f1598a.getResources().getString(R.string.masters_share_preview_img_url, simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())), d.b());
                        }
                        return b2;
                    default:
                        String b3 = aa.b("key_screenshot_url", "");
                        if (TextUtils.isEmpty(b3)) {
                            b3 = aa.b("key_share_bannner_url", "");
                        }
                        if (TextUtils.isEmpty(b3)) {
                            return "http://board.cmcm.com/beta/tmp/005.jpg";
                        }
                        return b3;
                }
            }
            if (d.n == 0) {
                if (d.i) {
                    string = aa.b("key_share_bannner_url", "");
                    if (TextUtils.isEmpty(string)) {
                        string = GameApp.f1598a.getResources().getString(R.string.result_page_share_preview_img_url, d.b());
                    }
                } else {
                    string = GameApp.f1598a.getResources().getString(R.string.result_page_share_preview_img_url, d.b());
                }
                int b4 = b.b(i);
                if (TextUtils.isEmpty(string)) {
                    b.a().a("at_use_default_cover");
                    f.b().a(b4, 6351, 0, 0);
                    return "http://board.cmcm.com/beta/tmp/003-1.jpg";
                }
                f.b().a(b4, 6352, 0, 0);
                return string;
            }
            if (3 != d.n) {
                return null;
            }
            String b5 = aa.b("key_screenshot_url", "");
            if (TextUtils.isEmpty(b5)) {
                b5 = aa.b("key_share_bannner_url", "");
            }
            if (TextUtils.isEmpty(b5)) {
                return "http://board.cmcm.com/beta/tmp/005.jpg";
            }
            return b5;
        }
        if (6 == i || 8 == i) {
            String b6 = aa.b("key_top_charts_url", "");
            return TextUtils.isEmpty(b6) ? GameApp.f1598a.getResources().getString(R.string.ranking_screen_shoot_share_preview_img_url, d.b()) : b6;
        }
        if (7 == i || 9 == i) {
            String b7 = aa.b("key_singles_ranking_url", "");
            return TextUtils.isEmpty(b7) ? GameApp.f1598a.getResources().getString(R.string.ranking_screen_shoot_share_preview_img_url, d.b()) : b7;
        }
        if (12 == i) {
            String b8 = aa.b("key_vip_banner_url", "");
            return TextUtils.isEmpty(b8) ? GameApp.f1598a.getResources().getString(R.string.vip_subscription_preview_img_url, f.h(), d.b()) : b8;
        }
        if (13 == i || 14 == i) {
            String b9 = aa.b("key_halloween_banner_url", "");
            return TextUtils.isEmpty(b9) ? GameApp.f1598a.getResources().getString(R.string.halloween_share_preview_img_url, Integer.valueOf(d.p), j.e(), Integer.valueOf(d.q)) : b9;
        }
        if (15 == i) {
            String b10 = aa.b("key_copy_url", "");
            if (TextUtils.isEmpty(b10)) {
                return aa.b("key_share_bannner_url", "");
            }
            return b10;
        }
        if (16 == i) {
            String b11 = aa.b("key_christmas_card_url", "");
            if (TextUtils.isEmpty(b11)) {
                return aa.b("key_share_bannner_url", "");
            }
            return b11;
        }
        if (17 == i) {
            String b12 = aa.b("key_valentine_card_url", "");
            return TextUtils.isEmpty(b12) ? GameApp.f1598a.getResources().getString(R.string.valentine_2017_2_14_img_url, f.h(), d.b()) : b12;
        }
        if (18 == i) {
            return aa.b("key_screenshot_url", "");
        }
        if (20 == i) {
            return aa.b("key_share_bannner_url", "");
        }
        return "http://board.cmcm.com/beta/tmp/001-1.png";
    }

    public String a() {
        return this.f1385a;
    }

    public void a(String str) {
        this.f1385a = str;
    }

    public String b() {
        return this.f1386b;
    }

    public void b(String str) {
        this.f1386b = str;
        d.h = str;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public String d() {
        return this.d;
    }

    public void d(String str) {
        this.d = str;
    }

    public String e() {
        return this.g;
    }

    public void e(String str) {
        this.g = str;
    }

    public int f() {
        return this.e;
    }

    public void b(int i) {
        this.e = i;
    }

    public int g() {
        return this.f;
    }

    public void c(int i) {
        this.f = i;
        d.l = i;
    }

    public int h() {
        return this.h;
    }

    public void d(int i) {
        this.h = i;
    }

    public String i() {
        return this.i;
    }

    public void f(String str) {
        this.i = str;
    }
}
