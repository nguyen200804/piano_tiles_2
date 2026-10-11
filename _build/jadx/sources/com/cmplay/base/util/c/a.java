package com.cmplay.base.util.c;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: AsyncImageLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: b, reason: collision with root package name */
    private static HashSet<String> f1221b;
    private static Map<String, SoftReference<Bitmap>> c;
    private static e d;
    private static ExecutorService e;
    private static a g;

    /* renamed from: a, reason: collision with root package name */
    public Context f1222a;
    private Handler f;

    /* compiled from: AsyncImageLoader.java */
    /* renamed from: com.cmplay.base.util.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0034a {
        void a(Bitmap bitmap, String str);
    }

    public static a a(Context context) {
        if (g == null) {
            synchronized (a.class) {
                if (g == null) {
                    g = new a(context);
                }
            }
        }
        return g;
    }

    private a(Context context) {
        this.f1222a = context.getApplicationContext();
        f1221b = new HashSet<>();
        c = new HashMap();
        d = new e(c);
        this.f = new Handler(Looper.getMainLooper());
        a();
        b(context);
        File cacheDir = context.getCacheDir();
        if (cacheDir != null) {
            a(cacheDir.getAbsolutePath());
        }
    }

    public void b(Context context) {
        d.a(context);
    }

    public void a(boolean z) {
        d.a(z);
    }

    public void a(String str) {
        d.a(str);
    }

    public static void a() {
        if (e == null || e.isShutdown() || e.isTerminated()) {
            e = Executors.newFixedThreadPool(5);
        }
    }

    public void a(final String str, final boolean z, final InterfaceC0034a interfaceC0034a) {
        try {
            Bitmap a2 = d.a(this.f1222a, str);
            g.a("AsyncImageLoader", "取出bitmap=" + a2);
            if (a2 != null) {
                if (interfaceC0034a != null) {
                    interfaceC0034a.a(a2, str);
                }
            } else if (f1221b.contains(str)) {
                g.a("###该图片正在下载，不能重复下载！");
            } else {
                f1221b.add(str);
                if (TextUtils.equals(Build.VERSION.RELEASE, "4.0.3") && this.f1222a != null && ((ActivityManager) this.f1222a.getSystemService("activity")).getMemoryClass() - ((int) ((Runtime.getRuntime().totalMemory() / 1024) / 1024)) < 10) {
                    f1221b.remove(str);
                } else {
                    e.submit(new Runnable() { // from class: com.cmplay.base.util.c.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            final Bitmap a3 = a.d.a(a.this.f1222a, str, z);
                            a.this.f.post(new Runnable() { // from class: com.cmplay.base.util.c.a.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (interfaceC0034a != null) {
                                        synchronized (interfaceC0034a) {
                                            interfaceC0034a.a(a3, str);
                                        }
                                    }
                                    a.f1221b.remove(str);
                                }
                            });
                        }
                    });
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
