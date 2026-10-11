package com.ijinshan.cloudconfig;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.ijinshan.cloudconfig.a.b;
import com.ijinshan.cloudconfig.d.d;
import com.ijinshan.cloudconfig.deepcloudconfig.c;
import java.util.ArrayList;

/* compiled from: CloudHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static InterfaceC0203a f3583a;
    private static String c = "en";
    private static String d = "gp";
    private static ArrayList<BroadcastReceiver> e = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public static String f3584b = "";

    /* compiled from: CloudHelper.java */
    /* renamed from: com.ijinshan.cloudconfig.a$a, reason: collision with other inner class name */
    public interface InterfaceC0203a {
        void a(String str, int i, String str2, String str3);
    }

    public static void a(Context context, String str, String str2, boolean z, boolean z2) {
        d = str;
        com.ijinshan.cloudconfig.c.a.a(str, str2, true, true);
        com.ijinshan.cloudconfig.c.a.a(context);
        c.a().a(z, z2);
        b.a(new b(context));
        if (z2) {
            new Thread(new Runnable() { // from class: com.ijinshan.cloudconfig.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "initNew  初始化时 reloadData()");
                    com.ijinshan.cloudconfig.deepcloudconfig.a.a().b();
                    com.ijinshan.cloudconfig.c.a.f();
                }
            }).start();
        } else {
            com.ijinshan.cloudconfig.c.a.f();
        }
    }

    public static void a(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null && com.ijinshan.cloudconfig.c.a.d() != null && !e.contains(broadcastReceiver)) {
            com.ijinshan.cloudconfig.c.a.d().registerReceiver(broadcastReceiver, new IntentFilter("com.cmplay.activesdk.cloud_cfg.update"));
            e.add(broadcastReceiver);
        }
    }

    public static void a(String str) {
        c = str;
    }

    public static String a() {
        return c.a().b();
    }

    public static String b() {
        return c.a().c();
    }

    public static boolean c() {
        return c.c;
    }

    public static void a(int i, String str) {
        switch (i) {
            case 1:
                c.a().a(false);
                break;
            case 2:
                c.a().a(true);
                break;
            case 3:
                c.a().a(str);
                break;
            default:
                c.a().a(false);
                break;
        }
    }

    public static void d() {
        com.ijinshan.cloudconfig.deepcloudconfig.a.a().b();
    }

    public static String b(int i, String str) {
        return com.ijinshan.cloudconfig.deepcloudconfig.a.a().b(Integer.valueOf(i), str);
    }

    public static int a(Integer num, String str, String str2, int i) {
        return com.ijinshan.cloudconfig.deepcloudconfig.b.a(num, str, str2, i);
    }

    public static void a(InterfaceC0203a interfaceC0203a) {
        f3583a = interfaceC0203a;
    }

    /* compiled from: CloudHelper.java */
    private static class b implements com.ijinshan.cloudconfig.a.a {

        /* renamed from: a, reason: collision with root package name */
        private Context f3586a;

        public b(Context context) {
            this.f3586a = context;
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String a() {
            return d.j(this.f3586a) + "";
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String b() {
            return !TextUtils.isEmpty(a.f3584b) ? a.f3584b : d.g(this.f3586a);
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String c() {
            return a.c;
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String d() {
            return a.d;
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String e() {
            return null;
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String f() {
            return null;
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public String g() {
            return null;
        }

        @Override // com.ijinshan.cloudconfig.a.a
        public void a(String str, int i, String str2, String str3) {
            if (a.f3583a != null) {
                a.f3583a.a(str, i, str2, str3);
            }
        }
    }
}
