package com.cmplay.internalpush;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;

/* compiled from: CMPPromotion.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static boolean a(String str, String str2) {
        return f.a(str, str2);
    }

    public static boolean a(Context context, int i, boolean z) {
        boolean a2 = n.a().a(context, i, z);
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowOpenScreen  scenes:" + i + "    isNewPlayer:" + z + "   canShowOpenScreen:" + a2);
        return a2;
    }

    public static void a(Activity activity) {
        n.a().a(activity);
    }

    public static boolean a(Context context) {
        return j.a().a(context, 0, false);
    }

    public static void b(Activity activity) {
        j.a().a(activity);
    }

    public static boolean b(Context context, int i, boolean z) {
        boolean a2 = p.a().a(context, i, z);
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowResultCard:" + a2);
        return a2;
    }

    public static String b(Context context) {
        return p.a().a(context);
    }

    public static void a(Context context, String str) {
        p.a().a(context, new com.cmplay.internalpush.data.h(str));
    }

    public static boolean c(Context context) {
        boolean a2 = s.a().a(context);
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowSettingCardRedDot  设置页是否有红点:" + a2);
        if (a2 && k.e && g.a().a(context)) {
            boolean d = g.a().d(context);
            a2 = a2 && !d;
            com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowSettingCardRedDot   家族游戏是否展示红点优先:" + d);
        }
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowSettingCardRedDot 最终优先级展示红点:" + a2);
        return a2;
    }

    public static boolean d(Context context) {
        return s.a().b(context);
    }

    public static String e(Context context) {
        String c = s.a().c(context);
        com.cmplay.base.util.g.a("internal_push", "getSettingCardData  data:" + c);
        return c;
    }

    public static void b(Context context, String str) {
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.clickSettingCard");
        s.a().a(context, new com.cmplay.internalpush.data.i(str));
    }

    public static boolean f(Context context) {
        boolean a2 = g.a().a(context);
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowFamilyGamesRedDot  家族游戏是否有红点:" + a2);
        if (a2 && k.d && s.a().a(context)) {
            boolean d = g.a().d(context);
            a2 = a2 && d;
            com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowFamilyGamesRedDot   家族游戏是否展示红点优先:" + d);
        }
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.canShowFamilyGamesRedDot 最终优先级展示红点:" + a2);
        return a2;
    }

    public static boolean g(Context context) {
        return g.a().b(context);
    }

    public static String h(Context context) {
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.getFamilyGamesData");
        return g.a().c(context);
    }

    public static void c(Context context, String str) {
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.clickFamilyGameCard");
        g.a().a(context, new com.cmplay.internalpush.data.e(str));
    }

    public static boolean d(Context context, String str) {
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.isInnerPushAppInstalled  jsonDataForShow:" + str);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        com.cmplay.internalpush.data.d dVar = new com.cmplay.internalpush.data.d();
        dVar.a(str);
        boolean c = com.cmplay.internalpush.a.b.c(context, dVar);
        com.cmplay.base.util.g.a("internal_push", "CMPPromotion.isInnerPushAppInstalled  isInstalled:" + c);
        return c;
    }

    public static boolean a(int i, boolean z) {
        return com.cmplay.internalpush.video.e.a(i, z);
    }

    public static boolean b(int i, boolean z) {
        return com.cmplay.internalpush.video.e.b(i, z);
    }

    public static boolean a(int i) {
        return com.cmplay.internalpush.video.e.a(i);
    }
}
