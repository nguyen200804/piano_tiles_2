package com.duapps.ad;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ADRequestController.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k implements Handler.Callback, g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2191a = k.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private Context f2192b;
    private int c;
    private Handler d;
    private b e;
    private boolean f;
    private long j;
    private HandlerThread k;
    private volatile boolean l;
    private volatile boolean m;
    private String n;
    private com.duapps.ad.c.a.c o;
    private ConcurrentHashMap<String, com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a>> g = new ConcurrentHashMap<>();
    private List<String> h = Collections.synchronizedList(new ArrayList());
    private List<String> i = Collections.synchronizedList(new ArrayList());
    private com.duapps.ad.entity.a.d p = new com.duapps.ad.entity.a.d() { // from class: com.duapps.ad.k.1
        @Override // com.duapps.ad.entity.a.d
        public void a(final com.duapps.ad.entity.a.a aVar) {
            if (com.duapps.ad.c.b.b.a()) {
                b bVar = k.this.e;
                if (bVar != null) {
                    bVar.a(aVar);
                }
                k.this.m = false;
                return;
            }
            com.duapps.ad.c.b.b.a(new Runnable() { // from class: com.duapps.ad.k.1.1
                @Override // java.lang.Runnable
                public void run() {
                    b bVar2 = k.this.e;
                    if (bVar2 != null) {
                        bVar2.a(aVar);
                    }
                    k.this.m = false;
                }
            });
        }

        @Override // com.duapps.ad.entity.a.d
        public void a(com.duapps.ad.entity.a.b bVar, final a aVar) {
            if (com.duapps.ad.entity.a.c.f2129a.equals(bVar)) {
                if (com.duapps.ad.c.b.b.a()) {
                    b bVar2 = k.this.e;
                    if (bVar2 != null) {
                        bVar2.a(aVar);
                    }
                    k.this.m = false;
                    return;
                }
                com.duapps.ad.c.b.b.a(new Runnable() { // from class: com.duapps.ad.k.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        b bVar3 = k.this.e;
                        if (bVar3 != null) {
                            bVar3.a(aVar);
                        }
                        k.this.m = false;
                    }
                });
                return;
            }
            int b2 = bVar.b() - bVar.c();
            if (b2 > 0) {
                com.duapps.ad.base.h.c(k.f2191a, "channel-->" + bVar.toString() + " is filled error.");
                k.this.a(b2, bVar);
            }
        }

        @Override // com.duapps.ad.entity.a.d
        public void a(com.duapps.ad.entity.a.b bVar) {
            com.duapps.ad.c.b.b.a(new Runnable() { // from class: com.duapps.ad.k.1.3
                @Override // java.lang.Runnable
                public void run() {
                    b bVar2 = k.this.e;
                    if (bVar2 != null) {
                        bVar2.a();
                    }
                }
            });
        }
    };

    public k(Context context, int i, int i2, String str) {
        this.f2192b = context;
        this.c = i;
        this.n = str;
        a(i2);
    }

    public void a(int i) {
        this.o = com.duapps.ad.c.a.b.a(this.f2192b).a(this.c, true, TextUtils.equals(this.n, "offerwall"));
        this.h.addAll(com.duapps.ad.base.d.a(this.o.f2106b, this.f2192b, this.c, this.n));
        this.j = com.duapps.ad.base.d.a(this.f2192b, this.c, i, this.h, this.g, this.n);
        d();
        this.k = new HandlerThread("adRequest", 10);
        this.k.start();
        this.d = new Handler(this.k.getLooper(), this);
    }

    private void d() {
        synchronized (this.h) {
            for (String str : this.h) {
                if (c(str)) {
                    this.g.get(str).a(this.p);
                }
            }
        }
    }

    private void a(String str) {
        long a2 = this.o.a(str);
        Message obtainMessage = this.d.obtainMessage();
        obtainMessage.what = 101;
        obtainMessage.obj = str;
        this.d.sendMessageDelayed(obtainMessage, a2);
        com.duapps.ad.base.h.c(f2191a, "channelName:" + str + " send time out msg：" + a2);
    }

    public void a(b bVar) {
        this.e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, com.duapps.ad.entity.a.b bVar) {
        int i2;
        com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar2;
        if (i > 0 && (i2 = bVar.m) != this.h.size() - 1) {
            String str = this.h.get(i2 + 1);
            if (!TextUtils.isEmpty(str) && (bVar2 = this.g.get(str)) != null) {
                if (!bVar2.e) {
                    bVar2.a(true);
                    a(str);
                    int b2 = i - bVar2.b();
                    com.duapps.ad.base.h.c(f2191a, "channel-->" + str + " start to fill.need count:" + b2);
                    if (b2 > 0) {
                        a(b2, bVar2);
                        return;
                    }
                    return;
                }
                a(i, bVar2);
            }
        }
    }

    public void a() {
        if (!com.duapps.ad.c.b.c.a(this.f2192b)) {
            this.p.a(com.duapps.ad.entity.a.c.f2129a, a.f1982a);
            return;
        }
        if (this.h.size() == 0) {
            this.p.a(com.duapps.ad.entity.a.c.f2129a, a.h);
            return;
        }
        if (this.m) {
            com.duapps.ad.base.h.c(f2191a, "Current task is already refreshing.");
            return;
        }
        this.l = false;
        this.m = true;
        if (!e()) {
            this.i.clear();
            g();
            this.d.sendEmptyMessage(100);
        }
    }

    private boolean e() {
        boolean z;
        com.duapps.ad.entity.a.a d;
        if (!this.f) {
            return false;
        }
        this.f = false;
        synchronized (this.h) {
            Iterator<String> it = this.h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                String next = it.next();
                if (c(next)) {
                    com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar = this.g.get(next);
                    if (bVar.c() > 0 && (d = bVar.d()) != null) {
                        this.p.a(d);
                        com.duapps.ad.base.h.c(f2191a, "onAdLoaded in load method");
                        z = true;
                        break;
                    }
                }
            }
        }
        return z;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case DrawableConstants.BlurredLastVideoFrame.ALPHA /* 100 */:
                this.d.removeMessages(100);
                try {
                    f();
                    break;
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    return false;
                }
            case 101:
                this.d.removeMessages(101);
                String str = (String) message.obj;
                com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar = this.g.get(str);
                int b2 = bVar.b() - bVar.c();
                if (b2 > 0) {
                    bVar.l = true;
                    com.duapps.ad.base.h.c(f2191a, "channelName:" + str + " is time out");
                    a(b2, bVar);
                    break;
                }
                break;
        }
        return false;
    }

    private void f() {
        boolean z;
        com.duapps.ad.entity.a.a d;
        com.duapps.ad.base.h.c(f2191a, "scanResult");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (boolean z2 = false; !z2 && !this.l; z2 = z) {
            synchronized (this.h) {
                Iterator<String> it = this.h.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = z2;
                        break;
                    }
                    String next = it.next();
                    if (this.l) {
                        this.p.a(com.duapps.ad.entity.a.c.f2129a, a.f1983b);
                        com.duapps.ad.base.h.c(f2191a, "Current action has been canceled~");
                        z = z2;
                        break;
                    }
                    this.h.wait(10L);
                    long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
                    if (elapsedRealtime2 > this.j) {
                        this.p.a(com.duapps.ad.entity.a.c.f2129a, a.f);
                        z = true;
                        break;
                    }
                    if (!this.i.contains(next) && (this.g.containsKey(next) || this.g.get(next) != null)) {
                        com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar = this.g.get(next);
                        if (!bVar.c) {
                            if (bVar.c() > 0) {
                                if (a(next, elapsedRealtime2) && (d = bVar.d()) != null) {
                                    this.p.a(d);
                                    com.duapps.ad.base.h.c(f2191a, "onAdLoaded in load method");
                                    z = true;
                                    break;
                                }
                            } else if (!bVar.d && !bVar.e) {
                                bVar.a(false);
                                com.duapps.ad.base.h.c(f2191a, next + " is refreshing...");
                            }
                        } else {
                            b(next);
                            if (!this.i.contains(next)) {
                                this.i.add(next);
                            }
                            if (this.i.size() == this.g.keySet().size()) {
                                this.p.a(com.duapps.ad.entity.a.c.f2129a, a.f1983b);
                                z = true;
                                break;
                            }
                            com.duapps.ad.base.h.c(f2191a, "channel:" + next + " is error");
                        }
                    }
                }
            }
        }
    }

    private boolean a(String str, long j) {
        long j2 = this.g.get(str).g;
        com.duapps.ad.base.h.c(f2191a, "channel:" + str + "-->[" + j2 + "," + this.j + "]");
        return j > j2 && j < this.j;
    }

    private void b(String str) {
        int indexOf = this.h.indexOf(str);
        int size = this.h.size();
        if (indexOf != size - 1) {
            for (int i = size - 1; i > indexOf; i--) {
                if (i - 1 >= 0) {
                    String str2 = this.h.get(i);
                    String str3 = this.h.get(i - 1);
                    com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar = this.g.get(str2);
                    com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar2 = this.g.get(str3);
                    if (bVar != null && bVar2 != null) {
                        bVar.g = bVar2.g;
                        com.duapps.ad.base.h.c(f2191a, "channel :" + str2 + ", used --> channel :" + str3);
                    }
                }
            }
        }
    }

    private void g() {
        long j = this.j;
        synchronized (this.h) {
            for (int size = this.h.size() - 1; size >= 0; size--) {
                String str = this.h.get(size);
                com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar = this.g.get(str);
                bVar.c = false;
                bVar.e = false;
                if (size == 0) {
                    bVar.g = 0L;
                } else {
                    j -= bVar.f;
                    bVar.g = j;
                }
                com.duapps.ad.base.h.c(f2191a, "channel:" + str + ",startTime:" + bVar.g + ", wt:" + bVar.f);
            }
        }
    }

    private boolean c(String str) {
        return this.g.containsKey(str) && this.g.get(str) != null;
    }

    public void b() {
        this.m = false;
        this.l = true;
    }

    public void a(List<String> list) {
        com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> bVar;
        if (c("facebook") && (bVar = this.g.get("facebook")) != null) {
            ((com.duapps.ad.entity.b) bVar).a(list);
        }
    }
}
