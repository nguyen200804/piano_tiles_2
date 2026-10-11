package com.facebook.ads.internal.i.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class g {

    /* renamed from: b, reason: collision with root package name */
    private final String f2792b;
    private volatile e c;
    private final b e;
    private final c f;

    /* renamed from: a, reason: collision with root package name */
    private final AtomicInteger f2791a = new AtomicInteger(0);
    private final List<b> d = new CopyOnWriteArrayList();

    private static final class a extends Handler implements b {

        /* renamed from: a, reason: collision with root package name */
        private final String f2793a;

        /* renamed from: b, reason: collision with root package name */
        private final List<b> f2794b;

        public a(String str, List<b> list) {
            super(Looper.getMainLooper());
            this.f2793a = str;
            this.f2794b = list;
        }

        @Override // com.facebook.ads.internal.i.b.b
        public void a(File file, String str, int i) {
            Message obtainMessage = obtainMessage();
            obtainMessage.arg1 = i;
            obtainMessage.obj = file;
            sendMessage(obtainMessage);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Iterator<b> it = this.f2794b.iterator();
            while (it.hasNext()) {
                it.next().a((File) message.obj, this.f2793a, message.arg1);
            }
        }
    }

    public g(String str, c cVar) {
        this.f2792b = (String) j.a(str);
        this.f = (c) j.a(cVar);
        this.e = new a(str, this.d);
    }

    private synchronized void c() {
        this.c = this.c == null ? e() : this.c;
    }

    private synchronized void d() {
        if (this.f2791a.decrementAndGet() <= 0) {
            this.c.a();
            this.c = null;
        }
    }

    private e e() {
        e eVar = new e(new h(this.f2792b), new com.facebook.ads.internal.i.b.a.b(this.f.a(this.f2792b), this.f.c));
        eVar.a(this.e);
        return eVar;
    }

    public void a() {
        this.d.clear();
        if (this.c != null) {
            this.c.a((b) null);
            this.c.a();
            this.c = null;
        }
        this.f2791a.set(0);
    }

    public void a(d dVar, Socket socket) {
        c();
        try {
            this.f2791a.incrementAndGet();
            this.c.a(dVar, socket);
        } finally {
            d();
        }
    }

    public int b() {
        return this.f2791a.get();
    }
}
