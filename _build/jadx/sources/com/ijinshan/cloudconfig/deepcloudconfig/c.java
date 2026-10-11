package com.ijinshan.cloudconfig.deepcloudconfig;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.ijinshan.cloudconfig.d.d;
import java.io.File;
import java.text.SimpleDateFormat;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PullCloudConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f3600a = false;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f3601b = false;
    public static boolean c = false;
    private static c e;
    private Context h;
    private String i;
    private String j;
    private StringBuffer k;
    private volatile String l;
    private boolean m;
    private long n;
    private long o;
    private final String d = "local_version";
    private volatile boolean f = false;
    private boolean g = false;
    private String q = "http://magic.cmcm.com/api/";
    private String r = "http://magic.cmcm.com/api/magic/notify";
    private String s = "/getversions";
    private String t = "/getversions";
    private SimpleDateFormat p = new SimpleDateFormat("yyyyMMdd");

    public static c a() {
        if (e == null) {
            synchronized (c.class) {
                if (e == null) {
                    e = new c();
                }
            }
        }
        return e;
    }

    private c() {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!com.ijinshan.cloudconfig.c.a.b(this.h)) {
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "没有网络 本地加载数据\tFileUtil.loadJsonFromFile");
            a.a().a(com.ijinshan.cloudconfig.d.b.a(g()));
            e();
            d();
            this.f = false;
            return;
        }
        if (this.m) {
            f3601b = false;
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "请求魔方版本号：" + this.t);
            String a2 = com.ijinshan.cloudconfig.d.c.a(this.t, AdError.SERVER_ERROR_CODE, 3, 1);
            this.o = System.currentTimeMillis();
            com.ijinshan.cloudconfig.b.a.a().a("last_request_version_time", Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.isEmpty(a2)) {
                try {
                    JSONObject optJSONObject = new JSONObject(a2).optJSONObject("data");
                    if (optJSONObject != null) {
                        this.l = optJSONObject.optString("business_config", "");
                    } else {
                        f3601b = true;
                    }
                } catch (JSONException e2) {
                    f3601b = true;
                }
            } else {
                f3601b = true;
            }
        }
        b(this.l);
        this.f = false;
    }

    private void b(String str) {
        char c2;
        boolean c3 = c(str);
        if (!c3) {
            if (!f3600a && !f3601b) {
                com.ijinshan.cloudconfig.a.b.a(b(), 3, "", "");
            }
            if (f3600a) {
                com.ijinshan.cloudconfig.a.b.a(b(), 4, "1", "");
                f3600a = false;
            }
            if (f3601b) {
                com.ijinshan.cloudconfig.a.b.a(b(), 4, "2", "");
                f3601b = false;
            }
        }
        if (c3) {
            c = true;
            f3600a = false;
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "请求数据：" + this.k.toString());
            String a2 = com.ijinshan.cloudconfig.d.c.a(this.k.toString(), AdError.SERVER_ERROR_CODE, 3, 2);
            if (!this.m) {
                com.ijinshan.cloudconfig.a.b.a(b(), 5, "2", "");
            }
            if (!TextUtils.isEmpty(a2)) {
                try {
                    JSONObject jSONObject = new JSONObject(a2);
                    if (jSONObject.optInt("error", -1) != 0) {
                        c2 = 1;
                    } else if (com.ijinshan.cloudconfig.d.b.a(jSONObject, g())) {
                        if (com.ijinshan.cloudconfig.c.a.b()) {
                            a.a().a(jSONObject);
                        }
                        com.ijinshan.cloudconfig.a.b.a(b(), 3, "", "");
                        if (com.ijinshan.cloudconfig.c.a.c()) {
                            e();
                        }
                        d();
                        if (!TextUtils.isEmpty(this.j)) {
                            e(this.j);
                        }
                        this.n = System.currentTimeMillis();
                        com.ijinshan.cloudconfig.b.a.a().a("last_update_time", Long.valueOf(System.currentTimeMillis()));
                        c2 = 0;
                    } else {
                        c2 = 2;
                    }
                    com.ijinshan.cloudconfig.a.b.a(b(), 7, "", "");
                } catch (Exception e2) {
                    e2.fillInStackTrace();
                    com.ijinshan.cloudconfig.a.b.a(b(), 6, "", Uri.encode(this.k.toString()));
                    c2 = 1;
                }
            } else {
                com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "updateConfig  请求魔方数据为空，从本地加载数据\tFileUtil.loadJsonFromFile");
                a.a().a(com.ijinshan.cloudconfig.d.b.a(g()));
                e();
                d();
                c2 = 1;
            }
        } else {
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "updateConfig  不需要从服务器请求更新数据，从本地加载数据\tFileUtil.loadJsonFromFile");
            a.a().a(com.ijinshan.cloudconfig.d.b.a(g()));
            e();
            d();
            c2 = 0;
        }
        if (c3) {
            if (f3600a) {
                com.ijinshan.cloudconfig.a.b.a(b(), 4, "1", "");
                f3600a = false;
            } else if (c2 == 1) {
                com.ijinshan.cloudconfig.a.b.a(b(), 4, "3", Uri.encode(this.k.toString()));
            } else if (c2 == 2) {
                com.ijinshan.cloudconfig.a.b.a(b(), 4, "3", "");
            }
        }
    }

    private void d() {
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "notifiUpdataOver");
        String g = d.g(this.h);
        Intent intent = new Intent();
        intent.setPackage(g);
        intent.setAction("com.cmplay.activesdk.cloud_cfg.update");
        this.h.sendBroadcast(intent);
    }

    private void e() {
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "notifiUIProcessUpdataData");
        Intent intent = new Intent();
        intent.setPackage(d.g(this.h));
        intent.setAction("com.ijinshan.krcmd.deepcloudconfig.CloudDataChangeReceiver.datachange");
        this.h.sendBroadcast(intent);
    }

    private boolean c(String str) {
        this.i = f();
        this.k = new StringBuffer();
        this.k.append(this.r).append(this.i);
        String a2 = d.a(this.i);
        String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_params", "");
        if (TextUtils.isEmpty(str) || d(str)) {
            com.ijinshan.cloudconfig.b.a.a().a("local_params", a2);
            return true;
        }
        if (!a2.equalsIgnoreCase(b2)) {
            com.ijinshan.cloudconfig.b.a.a().a("local_params", a2);
            return true;
        }
        return false;
    }

    private boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "");
        if (TextUtils.isEmpty(b2)) {
            this.j = str;
            return true;
        }
        int a2 = a(str, b2);
        if (a2 > 0) {
            this.j = str;
        }
        return a2 > 0;
    }

    private void e(String str) {
        if (!TextUtils.isEmpty(str)) {
            com.ijinshan.cloudconfig.b.a.a().a("local_version", str);
        }
    }

    public void a(boolean z, boolean z2) {
        if (TextUtils.isEmpty(com.ijinshan.cloudconfig.c.a.a())) {
            throw new IllegalAccessError("PullCloudConfig init error, the prodect is empty, please check...");
        }
        this.h = com.ijinshan.cloudconfig.c.a.d();
        b(z, z2);
        if (z2) {
            this.t = this.q + com.ijinshan.cloudconfig.c.a.a() + this.s + "?v=" + g(com.ijinshan.cloudconfig.a.b.a());
            this.g = true;
        }
    }

    private void b(boolean z, boolean z2) {
        if (z2) {
            EnvChangeReceiver envChangeReceiver = new EnvChangeReceiver();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
            try {
                this.h.registerReceiver(envChangeReceiver, intentFilter);
            } catch (Exception e2) {
                this.h.getApplicationContext().registerReceiver(envChangeReceiver, intentFilter);
            }
        }
        if (z && com.ijinshan.cloudconfig.c.a.c()) {
            CloudDataChangeReceiver cloudDataChangeReceiver = new CloudDataChangeReceiver();
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("com.ijinshan.krcmd.deepcloudconfig.CloudDataChangeReceiver.datachange");
            try {
                this.h.registerReceiver(cloudDataChangeReceiver, intentFilter2);
            } catch (Exception e3) {
                this.h.getApplicationContext().registerReceiver(cloudDataChangeReceiver, intentFilter2);
            }
        }
    }

    public synchronized void a(String str) {
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "拉取version：" + str);
        if (!TextUtils.isEmpty(str) && f(str) && this.g && !this.f) {
            this.l = str;
            this.m = false;
            this.f = true;
            new Thread(this).start();
        }
    }

    private boolean f(String str) {
        if (TextUtils.isEmpty(str) || str.length() != 15) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd.HHmmss");
        try {
            return str.equals(simpleDateFormat.format(simpleDateFormat.parse(str)));
        } catch (Exception e2) {
            return false;
        }
    }

    public synchronized void a(boolean z) {
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "拉取 " + z);
        if (!this.g) {
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "cloud没有初始化");
        } else if (this.f) {
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "正在请求-----");
        } else {
            if (!z) {
                if (this.o == 0) {
                    this.o = com.ijinshan.cloudconfig.b.a.a().a("last_request_version_time", 0L);
                }
                if (System.currentTimeMillis() - this.o < 7200000) {
                    com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "cloud6小时限制");
                } else {
                    if (this.n == 0) {
                        this.n = com.ijinshan.cloudconfig.b.a.a().a("last_update_time", 0L);
                    }
                    if (System.currentTimeMillis() - this.n < 21600000) {
                        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "cloud数据6小时限制");
                    }
                }
            }
            this.m = true;
            this.f = true;
            new Thread(this).start();
        }
    }

    private String f() {
        StringBuffer stringBuffer = new StringBuffer();
        String c2 = com.ijinshan.cloudconfig.a.b.c();
        if (TextUtils.isEmpty(c2)) {
            c2 = d.a(this.h) + "_" + d.b(this.h);
        }
        String g = g(c2);
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "云语言：" + c2);
        stringBuffer.append("?lan=" + g);
        stringBuffer.append("&apkversion=" + g(com.ijinshan.cloudconfig.a.b.a()));
        String d = com.ijinshan.cloudconfig.a.b.d();
        if (TextUtils.isEmpty(d)) {
            d = com.ijinshan.cloudconfig.c.a.e();
        }
        stringBuffer.append("&channelid=" + g(d));
        stringBuffer.append("&osversion=" + g(Build.VERSION.RELEASE));
        stringBuffer.append("&mcc=" + g(d.c(this.h)));
        String str = Build.MODEL;
        if (!TextUtils.isEmpty(str)) {
            stringBuffer.append("&device=");
            stringBuffer.append(str.replaceAll(" ", "_"));
        } else {
            stringBuffer.append("&device=null");
        }
        stringBuffer.append("&resolution=" + g(d.e(this.h)));
        stringBuffer.append("&mem_size=" + d.a(d.f(this.h)));
        String b2 = com.ijinshan.cloudconfig.a.b.b();
        com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "PullCloudConfig  InnerCallBackHelper.getPkgName():" + b2);
        if (TextUtils.isEmpty(b2)) {
            b2 = d.g(this.h);
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "PullCloudConfig  UtilsHelper.getPkgName(mContext):" + b2);
        }
        stringBuffer.append("&pkg=" + g(b2));
        stringBuffer.append("&version=1");
        stringBuffer.append("&aid=" + g(d.h(this.h)));
        stringBuffer.append("&branch=" + g(d.b()));
        stringBuffer.append("&mnc=" + g(d.d(this.h)));
        stringBuffer.append("&gaid=" + g(com.ijinshan.cloudconfig.a.b.e()));
        stringBuffer.append("&net=" + (com.ijinshan.cloudconfig.c.a.c(com.ijinshan.cloudconfig.c.a.d()) ? 1 : 2));
        stringBuffer.append("&dpi=" + g(d.i(this.h)));
        stringBuffer.append("&hunter_v=" + g(com.ijinshan.cloudconfig.a.b.f()));
        stringBuffer.append("&append=" + g(com.ijinshan.cloudconfig.a.b.g()));
        return stringBuffer.toString().replaceAll(" ", "");
    }

    private String g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.replaceAll(" ", "_");
    }

    private String g() {
        return this.h.getApplicationContext().getDir("deep_cloud_config", 0).getAbsolutePath() + File.separator + "cloudmsgadv.json";
    }

    private int a(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        if (split == null && split2 == null) {
            return 0;
        }
        if (split == null) {
            return -1;
        }
        if (split2 == null) {
            return 1;
        }
        for (int i = 0; i < split.length && i < split2.length; i++) {
            try {
                long parseLong = Long.parseLong(split[i]);
                try {
                    long parseLong2 = Long.parseLong(split2[i]);
                    if (parseLong > parseLong2) {
                        return 1;
                    }
                    if (parseLong < parseLong2) {
                        return -1;
                    }
                } catch (NumberFormatException e2) {
                    return 1;
                }
            } catch (NumberFormatException e3) {
                return -1;
            }
        }
        return split.length - split2.length;
    }

    public String b() {
        if (TextUtils.isEmpty(this.j)) {
            this.j = com.ijinshan.cloudconfig.b.a.a().b("local_version", "");
        }
        return this.j;
    }

    public String c() {
        return !TextUtils.isEmpty(this.k) ? this.k.toString() : "";
    }
}
