package com.cmcm.dmc.sdk.g;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.cmcm.dmc.sdk.a.l;
import com.cmcm.dmc.sdk.a.q;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPOutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static final String f786a = j.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final j f787b = new j();
    private Context c;
    private File d;
    private Handler e;
    private volatile g f;
    private l g;
    private a i;
    private String l;
    private volatile com.cmcm.dmc.sdk.d m;
    private i n;
    private SimpleDateFormat o;
    private volatile long h = 7200000;
    private AtomicBoolean j = new AtomicBoolean(false);
    private AtomicBoolean k = new AtomicBoolean(true);

    private class a implements c {

        /* renamed from: b, reason: collision with root package name */
        private int f795b;
        private boolean c;
        private File d;
        private List<String> e;
        private long f;

        private a() {
            this.f = 300000L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (this.d != null) {
                if (!this.d.delete()) {
                    j.b(10, "failed to delete the temp file", new Object[0]);
                }
                this.d = null;
            }
            this.f795b = 0;
            this.c = false;
        }

        public void a(File file, List<String> list) {
            try {
                this.d = file;
                this.e = list;
                this.c = true;
                this.f = com.cmcm.dmc.sdk.a.c.a("reporter", "k_report_interval", 5) * 60000;
                if (this.f <= 0) {
                    this.f = 300000L;
                }
                j.this.f.a(this.e, true);
                j.this.n.a(com.cmcm.dmc.sdk.a.d.a().b(), this.d, this);
            } catch (Exception e) {
                j.b(j.f786a, "report fail, message:" + e.getMessage());
            }
        }

        @Override // com.cmcm.dmc.sdk.g.j.c
        public void a(boolean z) {
            try {
                if (z) {
                    b();
                    j.this.f.a(this.e);
                    com.cmcm.dmc.sdk.a.k a2 = com.cmcm.dmc.sdk.a.k.a();
                    a2.c().putLong("report_timestamp", System.currentTimeMillis()).apply();
                    j.this.e.postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            j.this.b(false);
                        }
                    }, this.f);
                    a2.c().putInt("report_sequence", a2.b("report_sequence") + 1).apply();
                    j.b(10, "success", new Object[0]);
                } else {
                    int i = this.f795b;
                    this.f795b = i + 1;
                    if (i == 3) {
                        b();
                        j.this.f.a(this.e, false);
                        j.b(10, "failed", new Object[0]);
                    } else {
                        j.this.e.postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.a.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (q.i(j.this.c)) {
                                    j.this.n.a(com.cmcm.dmc.sdk.a.d.a().b(), a.this.d, a.this);
                                } else {
                                    a.this.b();
                                    j.this.f.a(a.this.e, false);
                                }
                            }
                        }, this.f);
                        j.b(10, "trying", new Object[0]);
                    }
                }
            } catch (Exception e) {
            }
        }

        public boolean a() {
            return this.c;
        }
    }

    public static class b extends GZIPOutputStream {

        /* renamed from: a, reason: collision with root package name */
        private int f798a;

        private b(OutputStream outputStream) {
            super(outputStream);
        }

        public static b a(File file) {
            return new b(new FileOutputStream(file));
        }

        public int a() {
            return this.f798a;
        }

        public void a(String str) {
            byte[] bytes = str.getBytes();
            write(bytes, 0, bytes.length);
        }

        @Override // java.util.zip.GZIPOutputStream, java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.f798a += i2;
            super.write(bArr, i, i2);
        }
    }

    public interface c {
        void a(boolean z);
    }

    public static j a() {
        j jVar;
        synchronized (f787b) {
            jVar = f787b;
        }
        return jVar;
    }

    private File a(int i) {
        return new File(this.d, f786a + "_" + i + ".tmp");
    }

    private boolean a(String str) {
        return !"heartbeat".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i, String str, Object... objArr) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String format = String.format(str, objArr);
        if (i == 10) {
            b("[Batch] %s", format);
        } else {
            b("[Fast] %s", format);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, Object... objArr) {
        com.cmcm.dmc.sdk.a.i.a(f786a, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00bf -> B:30:0x0021). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00c1 -> B:30:0x0021). Please report as a decompilation issue!!! */
    public void b(boolean z) {
        b(10, "begin to check", new Object[0]);
        g();
        if (this.i == null || this.i.a()) {
            b(10, "reporting", new Object[0]);
            return;
        }
        if ((com.cmcm.dmc.sdk.a.c.a("reporter", "k_report_net_env", 1) == 1) && !q.i(this.c)) {
            b(10, "no Wifi", new Object[0]);
            return;
        }
        if (!h()) {
            b(10, "disabled", new Object[0]);
            return;
        }
        if (z && com.cmcm.dmc.sdk.a.k.a().c("report_timestamp") + this.h > System.currentTimeMillis()) {
            b(10, "no Time", new Object[0]);
            return;
        }
        Cursor cursor = null;
        try {
            try {
                cursor = this.f.a(10);
                if (cursor == null || cursor.getCount() == 0) {
                    b(10, "no Data", new Object[0]);
                    if (cursor != null) {
                        cursor.close();
                    }
                } else {
                    b(10, "start to report", new Object[0]);
                    File a2 = a(10);
                    this.i.a(a2, this.n.a(cursor, a2, 3145728));
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (Exception e) {
                b(10, e.getMessage(), new Object[0]);
                if (cursor != null) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private boolean b(String str) {
        if (str.equals(this.l)) {
            return true;
        }
        this.l = str;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            this.n = new i(this.c, this.e);
            com.cmcm.dmc.sdk.g.a.b().b(this.c);
            this.o = new SimpleDateFormat("yyyyMMdd");
            g gVar = new g(this.c);
            gVar.a();
            this.f = gVar;
            this.l = com.cmcm.dmc.sdk.a.k.a().d("report_heartbeat_day");
            f.a().a(this.c, this.d);
            g();
            this.e.postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.4
                @Override // java.lang.Runnable
                public void run() {
                    j.this.f();
                }
            }, 60000L);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            this.i = new a();
            this.g = new l(this.e);
            long j = this.h;
            long currentTimeMillis = System.currentTimeMillis();
            com.cmcm.dmc.sdk.a.k a2 = com.cmcm.dmc.sdk.a.k.a();
            long c2 = a2.c("report_timestamp");
            if (c2 == 0) {
                a2.c().putLong("report_timestamp", currentTimeMillis).apply();
                j = 120000;
            } else if (currentTimeMillis <= c2 || currentTimeMillis >= c2 + j) {
                b(false);
            } else {
                j -= currentTimeMillis - c2;
            }
            this.g.a(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.5
                @Override // java.lang.Runnable
                public void run() {
                    j.this.b(false);
                    j.this.g.a(j.this.h);
                }
            }, j);
            com.cmcm.dmc.sdk.a.i.a(f786a, "init finished");
        } catch (Exception e) {
        }
    }

    private void g() {
        if (b(this.o.format(new Date()))) {
            return;
        }
        com.cmcm.dmc.sdk.a.k.a().c().putString("report_heartbeat_day", this.l).apply();
        a(50, "heartbeat", (String) null);
    }

    private boolean h() {
        if (!b()) {
            return false;
        }
        com.cmcm.dmc.sdk.d dVar = this.m;
        if (dVar == null) {
            b("DmcReporterDelegate == null", new Object[0]);
            return true;
        }
        boolean a2 = dVar.a();
        b("DmcReporterDelegate.canReport() : " + a2, new Object[0]);
        return a2;
    }

    public void a(int i, String str, String str2) {
        try {
            if (this.e == null) {
                com.cmcm.dmc.sdk.a.i.a(f786a, "出现错误： mHandler == null");
            } else {
                if (i < 10) {
                    i = 10;
                }
                final h hVar = new h(i, str, str2);
                b("需要上报的数据： %s", hVar.toString());
                final boolean a2 = a(str);
                this.e.post(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!a2) {
                            f.a().a(hVar);
                        } else if (j.this.c()) {
                            j.this.f.a(hVar);
                        } else {
                            com.cmcm.dmc.sdk.a.i.a(j.f786a, "not init");
                        }
                    }
                });
            }
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a(f786a, "" + e.getMessage());
        }
    }

    public void a(long j) {
        if (j <= 0) {
            this.h = 7200000L;
        } else {
            this.h = Math.max(60000 * j, 300000L);
        }
    }

    public void a(Context context, File file) {
        try {
            this.c = context;
            this.d = file;
            HandlerThread handlerThread = new HandlerThread(f786a);
            handlerThread.start();
            this.e = new Handler(handlerThread.getLooper());
            this.e.post(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.1
                @Override // java.lang.Runnable
                public void run() {
                    j.this.e();
                }
            });
        } catch (Exception e) {
        }
    }

    public void a(h hVar) {
        if (this.f == null || hVar == null) {
            return;
        }
        this.f.a(hVar);
    }

    public void a(List list) {
        try {
            this.n.a(list);
            f.a().a(list);
        } catch (Exception e) {
        }
    }

    public void a(boolean z) {
        this.k.set(z);
    }

    public boolean b() {
        return this.k.get();
    }

    public boolean c() {
        return this.f != null;
    }

    public void d() {
        if (c()) {
            if (this.j.get()) {
                b("network changed ...", new Object[0]);
                return;
            }
            b("received", new Object[0]);
            try {
                this.j.set(true);
                this.e.postDelayed(new Runnable() { // from class: com.cmcm.dmc.sdk.g.j.2
                    @Override // java.lang.Runnable
                    public void run() {
                        j.this.j.set(false);
                        j.this.b(false);
                    }
                }, 10000L);
            } catch (Exception e) {
            }
        }
    }
}
