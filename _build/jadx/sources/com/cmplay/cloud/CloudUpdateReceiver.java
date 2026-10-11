package com.cmplay.cloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.d;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CloudUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static CloudUpdateReceiver f1267a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f1268b = new Handler(Looper.getMainLooper()) { // from class: com.cmplay.cloud.CloudUpdateReceiver.3
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    b.a(GameApp.f1598a).b();
                    com.ijinshan.cloudconfig.c.a.a(GameApp.f1598a);
                    String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "none");
                    new com.cmplay.util.c.a.c().a((byte) 5, b2);
                    Log.d("cfg", "after cloud version = " + b2);
                    break;
            }
        }
    };

    public static CloudUpdateReceiver a(Context context) {
        if (f1267a == null) {
            synchronized (CloudUpdateReceiver.class) {
                if (f1267a == null) {
                    f1267a = new CloudUpdateReceiver(context);
                }
            }
        }
        return f1267a;
    }

    private CloudUpdateReceiver(Context context) {
        context.registerReceiver(this, new IntentFilter("com.cmplay.activesdk.cloud_cfg.update"));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        com.cmplay.i.c.a(context);
        if (com.cmplay.i.c.a()) {
            this.f1268b.sendEmptyMessage(0);
            aa.a("key_android_sdk_later_load", a.a().a(2, "section_common", "cloud_android_sdk_later_load", false));
            List<String> a2 = a.a().a(2, "section_ad_interception");
            if (a2.size() >= 1) {
                String str = a2.get(0);
                com.cmplay.util.c.b("ly", "AD_INTERCEPTION = " + str);
                aa.a("key_ad_interception", str);
            }
            List<String> a3 = a.a().a(2, "section_ad_new");
            if (a3.size() >= 1) {
                String str2 = a3.get(0);
                com.cmplay.util.c.b("ly", "ad_new = " + str2);
                aa.a("key_ad_new", str2);
            }
            NativeUtil.notifyCloudDataChanged();
        }
        int a4 = a.a().a(2, "section_common", "cloud_key_unityads_force_cache_num", 0);
        if (com.cmplay.i.c.b()) {
            aa.a("key_unityads_force_cache_num", a4);
        }
        if (com.cmplay.i.c.a()) {
            com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.cloud.CloudUpdateReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    com.cmplay.notification.c.a(context);
                    com.cmplay.e.b.a();
                }
            });
        }
        if (com.cmplay.i.c.b()) {
            com.cmplay.b.b.a().b();
            com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.cloud.CloudUpdateReceiver.2
                @Override // com.cmplay.util.d.a
                public void a() {
                    NativeUtil.cloudUpdateNotify();
                }
            });
        }
    }
}
