package com.cmplay.internalpush;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: InternalPushManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public static Context f1477a;

    /* renamed from: b, reason: collision with root package name */
    public static CloudUpdateReceiver f1478b;
    public static boolean c = false;
    private static ArrayList<String> g = new ArrayList<>();
    private static boolean h = false;
    public static boolean d = false;
    public static boolean e = false;
    public static h f = null;

    public static h a() {
        return f;
    }

    public static void a(Context context, h hVar) {
        com.cmplay.base.util.g.b("zzb_pro", "Openscreen init2");
        f1477a = context.getApplicationContext();
        f = hVar;
        if (f == null) {
            throw new RuntimeException("error: innerPushCallBack is null");
        }
        com.cmplay.internalpush.a.a.b.a().a(f1477a);
        com.cmplay.internalpush.a.d.a(context);
        f.a(g);
        Iterator<String> it = g.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (TextUtils.equals(next, "open_screen_scene")) {
                com.cmplay.internalpush.data.n.a(context);
            } else if (TextUtils.equals(next, "section_result_card")) {
                com.cmplay.internalpush.data.p.a(context);
            } else if (TextUtils.equals(next, "section_setting_card")) {
                com.cmplay.internalpush.data.q.a(context);
                d = true;
            } else if (TextUtils.equals(next, "insert_screen_scene")) {
                com.cmplay.internalpush.data.k.a(context);
            } else if (TextUtils.equals(next, "section_family_popup")) {
                com.cmplay.internalpush.data.b.a(context);
                e = true;
            }
        }
        b();
        if (com.cmplay.base.util.q.b()) {
            int a2 = com.cmplay.internalpush.a.d.a("launch_time", 0);
            com.cmplay.internalpush.a.d.b("launch_time", a2 + 1);
            int a3 = com.cmplay.internalpush.a.d.a("hit_top_launch_time", 0);
            com.cmplay.internalpush.a.d.b("hit_top_launch_time", a3 + 1);
            com.cmplay.base.util.g.a("internal_push", "CMPlaySDK.init  LAUNCH_TIME   lastLaunchTime:" + a2 + "  curLaunchTime:" + com.cmplay.internalpush.a.d.a("launch_time", 0) + "    lastLaunchTimeOfHitTop:" + a3 + "  curLaunchTimeOfHitTop:" + com.cmplay.internalpush.a.d.a("hit_top_launch_time", 0));
        }
        h = true;
    }

    public static void b() {
        if (!c) {
            f1478b = new CloudUpdateReceiver();
            f.a(f1478b);
            c = true;
        }
    }
}
