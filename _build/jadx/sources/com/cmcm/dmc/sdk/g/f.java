package com.cmcm.dmc.sdk.g;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.cmcm.dmc.sdk.a.q;
import com.cmcm.dmc.sdk.g.j;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final String f774a = f.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static f f775b;
    private List<h> c;
    private Context d;
    private AtomicBoolean e;
    private boolean f = false;
    private File g;
    private i h;
    private Handler i;

    private class a implements j.c {

        /* renamed from: b, reason: collision with root package name */
        private h f777b;
        private File c;

        private a() {
        }

        private void a() {
            if (this.c != null) {
                if (!this.c.delete()) {
                    com.cmcm.dmc.sdk.a.i.a(f.f774a, "failed to delete the temp file");
                }
                this.c = null;
            }
        }

        public void a(File file, h hVar) {
            this.f777b = hVar;
            this.c = file;
            f.this.e.set(true);
            f.this.h.a(com.cmcm.dmc.sdk.a.d.a().b(), file, this);
        }

        @Override // com.cmcm.dmc.sdk.g.j.c
        public void a(boolean z) {
            a();
            if (z) {
                com.cmcm.dmc.sdk.a.k.a().c().putInt("report_sequence", com.cmcm.dmc.sdk.a.k.a().b("report_sequence") + 1).apply();
                com.cmcm.dmc.sdk.a.i.a(f.f774a, "report success\n " + this.f777b.toString());
            } else {
                com.cmcm.dmc.sdk.a.i.a(f.f774a, "report error, insert into database\n " + this.f777b.toString());
                f.this.c(this.f777b);
            }
            synchronized (f.this.c) {
                if (f.this.c.size() > 0) {
                    f.this.b((h) f.this.c.remove(0));
                } else {
                    f.this.e.set(false);
                    com.cmcm.dmc.sdk.a.i.a(f.f774a, "report end\n ");
                }
            }
        }
    }

    private f() {
    }

    public static f a() {
        if (f775b == null) {
            synchronized (f.class) {
                if (f775b == null) {
                    f775b = new f();
                }
            }
        }
        return f775b;
    }

    private File a(int i) {
        return new File(this.g, f774a + "_" + i + ".tmp");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(h hVar) {
        com.cmcm.dmc.sdk.a.i.a(f774a, "begin report \n" + hVar.toString());
        File a2 = a(50);
        this.h.a(hVar, a2);
        new a().a(a2, hVar);
    }

    private void c() {
        HandlerThread handlerThread = new HandlerThread(f774a + "_thread");
        handlerThread.start();
        this.i = new Handler(handlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(h hVar) {
        j.a().a(hVar);
    }

    private void d() {
        synchronized (this.c) {
            if (this.c.size() > 0) {
                Iterator<h> it = this.c.iterator();
                while (it.hasNext()) {
                    c(it.next());
                    it.remove();
                }
            }
        }
    }

    public void a(Context context, File file) {
        if (this.f) {
            return;
        }
        this.d = context;
        this.e = new AtomicBoolean(false);
        this.c = new ArrayList();
        this.g = file;
        c();
        this.h = new i(this.d, this.i);
        this.f = true;
    }

    public void a(h hVar) {
        if (!this.f) {
            com.cmcm.dmc.sdk.a.i.a(f774a, "realtimeReporter is not init");
            return;
        }
        if (hVar == null) {
            com.cmcm.dmc.sdk.a.i.a(f774a, "report data is null");
            return;
        }
        if (!q.h(this.d)) {
            com.cmcm.dmc.sdk.a.i.a(f774a, "net work is unavailable");
            c(hVar);
            d();
        } else {
            if (!this.e.get()) {
                b(hVar);
                return;
            }
            synchronized (this.c) {
                this.c.add(hVar);
            }
        }
    }

    public void a(List list) {
        if (this.f) {
            this.h.a(list);
        } else {
            com.cmcm.dmc.sdk.a.i.a(f774a, "realtimeReporter is not init");
        }
    }
}
