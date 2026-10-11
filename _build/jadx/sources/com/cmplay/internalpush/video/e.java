package com.cmplay.internalpush.video;

import android.content.BroadcastReceiver;
import android.content.Context;
import com.cmplay.base.util.g;
import com.cmplay.internalpush.data.ParseCloudDataVideo;
import com.cmplay.internalpush.ipc.IpcVideoHelper;
import com.cmplay.internalpush.o;

/* compiled from: InnerPushVideoManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static Context f1546a;
    public static com.cmplay.internalpush.video.b.a c;
    private static com.cmplay.internalpush.video.b.c e;
    private static CloudVideoReceiver f;
    private static com.cmplay.base.util.c.c g;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f1547b = true;
    public static boolean d = false;

    public static void a(Context context, boolean z, com.cmplay.internalpush.video.b.a aVar) {
        c = aVar;
        f1546a = context;
        com.cmplay.internalpush.a.d.a(context);
        com.cmplay.internalpush.a.e.a(context);
        com.cmplay.internalpush.video.a.a.a().a(context);
        d = z;
    }

    public static void a(Context context, boolean z, com.cmplay.internalpush.video.b.a aVar, com.cmplay.base.util.c.c cVar) {
        a(context, z, aVar);
        a(cVar);
    }

    public static void a(com.cmplay.internalpush.video.b.d dVar) {
        if (dVar != null) {
            ParseCloudDataVideo.a(f1546a).a(dVar);
        }
    }

    public static void a(com.cmplay.internalpush.video.b.c cVar) {
        if (cVar != null) {
            e = cVar;
        }
    }

    public static BroadcastReceiver a() {
        if (f == null) {
            f = new CloudVideoReceiver();
        }
        return f;
    }

    public static void a(boolean z) {
        f1547b = z;
    }

    public static void b() {
        if (f1546a != null) {
            g.a("通知到了-----" + c);
            if (c != null) {
                ParseCloudDataVideo.a(f1546a).a(c.c("section_video_distribution"), c, e);
            }
        }
    }

    public static boolean a(int i, boolean z) {
        if (z) {
            o.a().a(4, 19, "", 0L, "", 0, 0, 0L);
        }
        boolean c2 = ParseCloudDataVideo.a(f1546a).c(i);
        if (z && !c2) {
            ParseCloudDataVideo.a(f1546a).b(0L);
        }
        return c2;
    }

    public static boolean b(int i, boolean z) {
        if (z) {
            o.a().a(4, 19, "", 0L, "", 0, 0, 999L);
        }
        boolean d2 = ParseCloudDataVideo.a(f1546a).d(i);
        if (z && !d2) {
            ParseCloudDataVideo.a(f1546a).b(999L);
        }
        return d2;
    }

    public static boolean a(int i) {
        return ParseCloudDataVideo.a(f1546a).b(i);
    }

    public static void a(String str, String str2, String str3, String str4) {
        try {
            com.cmplay.internalpush.video.a.a.a().a(str, str2);
            ParseCloudDataVideo.a(f1546a).c(str3);
            ParseCloudDataVideo.a(f1546a).c(str4);
        } catch (Exception e2) {
            e2.printStackTrace();
            g.a("zzb", "startServiceLoadData 异常------- " + e2.getMessage());
        }
    }

    public static void b(String str, String str2, String str3, String str4) {
        IpcVideoHelper.getInstance().ipcServiceStartDown(str, str2, str3, str4);
    }

    public static void a(com.cmplay.base.util.c.c cVar) {
        g = cVar;
    }

    public static com.cmplay.base.util.c.c c() {
        return g;
    }
}
