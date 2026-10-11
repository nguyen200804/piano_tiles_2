package com.cmplay.internalpush;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.cmplay.util.NativeUtil;

/* compiled from: CMPlaySDK.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static Context f1466a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f1467b = false;

    public static void a(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        f1466a = context.getApplicationContext();
        try {
            boolean z = f1466a.getPackageManager().getApplicationInfo(f1466a.getPackageName(), 128).metaData.getBoolean("SET_PROMOTION_LOG");
            Log.d("zzb_log", "isDebug =" + z);
            if (z) {
                com.cmplay.base.util.g.a(true);
                com.ijinshan.cloudconfig.d.a.f3591a = true;
                com.ijinshan.cloudconfig.a.f3584b = "com.cmplay.tiles4";
            }
        } catch (Exception e) {
            Log.d("zzb_log", "isDebug =" + e.getMessage());
            e.printStackTrace();
        }
        com.cmplay.base.util.i.a("whitetile2");
        com.cmplay.base.util.i.b("Nativeutil");
        com.cmplay.base.util.i.a(3);
        com.cmplay.base.util.q.a(context);
        b(context);
        d(context);
        if (com.cmplay.base.util.q.a()) {
            t.a().a(context);
        }
        if (com.cmplay.base.util.q.b()) {
            com.cmplay.base.util.k.b(f1466a);
        }
        com.cmplay.base.util.g.a("zzb", "内推初始化时间：" + (System.currentTimeMillis() - currentTimeMillis));
    }

    public static void b(Context context) {
        if (com.cmplay.base.util.q.b() || com.cmplay.base.util.q.a() || com.cmplay.base.util.q.c()) {
            f.a(context, NativeUtil.getChannel(), "tiles2", com.cmplay.base.util.q.b(), com.cmplay.base.util.q.a());
            k.a(context, new c());
        }
        if (com.cmplay.base.util.q.b()) {
            c(context);
        }
    }

    public static void c(Context context) {
        Intent intent = new Intent(context, (Class<?>) InnerPushService.class);
        intent.putExtra("command_key", "pull_cloud_config");
        context.startService(intent);
    }

    public static void d(Context context) {
        d c = d.c();
        com.cmplay.internalpush.video.e.a(context, true, (com.cmplay.internalpush.video.b.a) c, (com.cmplay.base.util.c.c) c);
        com.ijinshan.cloudconfig.a.a(com.cmplay.internalpush.video.e.a());
        if (com.cmplay.base.util.q.b()) {
            d.c().a(context);
        }
    }

    public static void a(final String str, final String str2, final boolean z) {
        com.cmplay.base.util.d.a(new Runnable() { // from class: com.cmplay.internalpush.e.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NativeUtil.reportData(str, str2, z);
                    com.cmplay.base.util.g.a("Kinfoc", "reportNeituiSdkApp  strTableName:" + str + "  strParams:" + str2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
