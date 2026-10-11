package com.cmplay.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.ReportService;
import com.ijinshan.cloudconfig.deepcloudconfig.ConfigInfo;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CloudConfigGetter.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements c {

    /* renamed from: b, reason: collision with root package name */
    private static a f1273b;
    private String c = "unknow";
    private Handler d = new Handler(Looper.getMainLooper()) { // from class: com.cmplay.cloud.a.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    a.this.f1274a.a(null, msg.arg1 > 0);
                    break;
                case 2:
                    a.this.f1274a.a(null);
                    break;
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private c f1274a = new com.cmplay.cloud.a.a();

    private a() {
    }

    public static a a() {
        if (f1273b == null) {
            synchronized (a.class) {
                if (f1273b == null) {
                    f1273b = new a();
                }
            }
        }
        return f1273b;
    }

    public synchronized List<String> a(int i, String str) {
        ArrayList arrayList;
        List<ConfigInfo> a2 = com.ijinshan.cloudconfig.deepcloudconfig.a.a().a(Integer.valueOf(i), str);
        arrayList = new ArrayList();
        if (a2 != null) {
            for (ConfigInfo configInfo : a2) {
                if (configInfo != null && configInfo.a() != null) {
                    arrayList.add(configInfo.a());
                }
            }
        }
        return arrayList;
    }

    public synchronized String b(int i, String str) {
        return com.ijinshan.cloudconfig.deepcloudconfig.a.a().b(Integer.valueOf(i), str);
    }

    public synchronized String a(int i, String str, String str2, String str3) {
        return com.ijinshan.cloudconfig.deepcloudconfig.b.a(Integer.valueOf(i), str, str2, str3);
    }

    public synchronized int a(int i, String str, String str2, int i2) {
        return com.ijinshan.cloudconfig.deepcloudconfig.b.a(Integer.valueOf(i), str, str2, i2);
    }

    public synchronized long a(int i, String str, String str2, long j) {
        return com.ijinshan.cloudconfig.deepcloudconfig.b.a(Integer.valueOf(i), str, str2, j);
    }

    public synchronized boolean a(int i, String str, String str2, boolean z) {
        return com.ijinshan.cloudconfig.deepcloudconfig.b.a(Integer.valueOf(i), str, str2, z);
    }

    public synchronized double a(int i, String str, String str2, double d) {
        return com.ijinshan.cloudconfig.deepcloudconfig.b.a(Integer.valueOf(i), str, str2, d);
    }

    @Override // com.cmplay.cloud.c
    public synchronized void a(Context context, boolean z) {
        synchronized (this) {
            if (context == null) {
                context = GameApp.f1598a;
            }
            if (com.cmplay.i.c.a()) {
                if (z) {
                    ReportService.a(context);
                }
                b.a(context).a(z);
            } else {
                Message.obtain(this.d, 1, z ? 1 : 0, -1).sendToTarget();
            }
        }
    }

    @Override // com.cmplay.cloud.c
    public synchronized void a(Context context) {
        if (context == null) {
            context = GameApp.f1598a;
        }
        if (com.cmplay.i.c.a()) {
            ReportService.a(context);
            b.a(context).a();
        } else {
            Message.obtain(this.d, 2).sendToTarget();
        }
    }
}
