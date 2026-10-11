package com.duapps.ad.entity;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.util.Log;
import com.duapps.ad.base.h;
import com.duapps.ad.base.m;
import com.duapps.ad.base.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: FacebookCacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    private List<String> f2130a;

    /* renamed from: b, reason: collision with root package name */
    private int f2131b;
    private int o;
    private final List<d> p;
    private Handler q;
    private Context r;

    private String e() {
        String str;
        synchronized (this.f2130a) {
            if (this.f2130a.size() <= 0) {
                str = null;
            } else if (this.o >= this.f2130a.size()) {
                str = this.f2130a.get(0);
            } else {
                str = this.f2130a.get(this.o);
                this.o = (this.o + 1) % this.f2130a.size();
            }
        }
        return str;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, int i, long j, int i2, String str) {
        super(context, i, j, str);
        List<String> list = null;
        this.f2130a = new ArrayList();
        this.o = 0;
        this.p = new LinkedList();
        this.r = null;
        this.r = context.getApplicationContext();
        com.duapps.ad.c.b.c.a(this.i);
        if (TextUtils.equals(str, "offerwall")) {
            String c = p.a(context).c(i);
            if (!TextUtils.isEmpty(c)) {
                list = new ArrayList<>();
                list.add(c);
            }
        } else {
            list = p.a(this.r).b(i);
        }
        b(list);
        HandlerThread handlerThread = new HandlerThread("fbnative", 10);
        handlerThread.start();
        this.q = new Handler(handlerThread.getLooper(), this);
        if (this.f2130a.size() <= 0) {
            h.c("FbCache", "Refresh request failed: no available Placement Id");
            Log.e("DuNativeAd", "Please setup fbids in DuAdNetwork init method");
        }
        this.f2131b = (i2 <= 0 || i2 > 5) ? 1 : i2;
        this.q.sendEmptyMessageDelayed(1, m.q(this.r));
    }

    @Override // com.duapps.ad.entity.a.b
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.a.a d() {
        d dVar;
        d dVar2 = null;
        synchronized (this.p) {
            while (true) {
                if (this.p.size() <= 0) {
                    dVar = dVar2;
                    break;
                }
                dVar2 = this.p.remove(0);
                if (dVar2 != null) {
                    if (dVar2.a()) {
                        dVar = dVar2;
                        break;
                    }
                    dVar2.c();
                }
            }
        }
        com.duapps.ad.stats.c.a(this.r, dVar == null ? "FAIL" : "OK", this.i);
        return dVar;
    }

    @Override // com.duapps.ad.entity.a.b
    public int b() {
        return this.f2131b;
    }

    @Override // com.duapps.ad.entity.a.b
    public int c() {
        int i;
        int i2 = 0;
        synchronized (this.p) {
            Iterator<d> it = this.p.iterator();
            while (it.hasNext()) {
                d next = it.next();
                if (next == null) {
                    it.remove();
                } else {
                    if (next.a()) {
                        i = i2 + 1;
                    } else {
                        it.remove();
                        next.c();
                        i = i2;
                    }
                    i2 = i;
                }
            }
        }
        return i2;
    }

    @Override // com.duapps.ad.entity.a.b
    public void a(boolean z) {
        super.a(z);
        if (!com.duapps.ad.c.b.c.a(this.r)) {
            h.c("FbCache", "network error && sid = " + this.i);
            return;
        }
        h.c("FbCache", "Refresh request...");
        if (this.f2131b <= 0) {
            h.c("FbCache", "Refresh request failed: no available Placement Id");
        } else {
            this.q.obtainMessage(0).sendToTarget();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i;
        int i2;
        int i3 = message.what;
        if (i3 == 0) {
            this.q.removeMessages(0);
            if (this.d) {
                h.c("FbCache", "Refresh request failed: already refreshing");
                return true;
            }
            this.d = true;
            this.e = true;
            synchronized (this.p) {
                Iterator<d> it = this.p.iterator();
                i = 0;
                while (it.hasNext()) {
                    d next = it.next();
                    if (next == null) {
                        it.remove();
                    } else {
                        if (next.a()) {
                            i2 = i + 1;
                        } else {
                            it.remove();
                            next.c();
                            i2 = i;
                        }
                        i = i2;
                    }
                }
            }
            if (i < this.f2131b) {
                int i4 = this.f2131b - i;
                if (h.a()) {
                    h.c("FbCache", "Refresh request send: green = " + i + " ,need = " + i4);
                }
                this.q.obtainMessage(2, i4, 0).sendToTarget();
            } else {
                h.c("FbCache", "Refresh request OK: green is full");
                this.d = false;
            }
            return true;
        }
        if (i3 != 2) {
            return false;
        }
        int i5 = message.arg1;
        if (i5 > 0) {
            a(message, i5);
        } else {
            this.d = false;
            h.c("FbCache", "Refresh result: DONE for geeen count");
        }
        return true;
    }

    private void a(Message message, final int i) {
        final String e = e();
        h.c("FbCache", "refresh FB -> id = " + e);
        if (e == null) {
            h.d("DuNativeAd", "No Available Placement ID");
            this.d = false;
            this.e = false;
        } else {
            final d dVar = new d(this.r, e, this.i, this.k);
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            dVar.a(new a() { // from class: com.duapps.ad.entity.b.1
                @Override // com.duapps.ad.entity.a
                public void a(int i2, String str) {
                    h.c("FbCache", "onError: code=" + i2 + "; msg=" + str);
                    b.this.c = true;
                    a(i2);
                    if (!b.this.l && b.this.n != null) {
                        b.this.n.a(new com.duapps.ad.a(i2, str));
                    }
                }

                @Override // com.duapps.ad.entity.a
                public void a(d dVar2, boolean z) {
                    h.c("FbCache", "onAdLoaded: id=" + e);
                    int c = m.c(b.this.r);
                    ReentrantLock reentrantLock = new ReentrantLock();
                    try {
                        reentrantLock.lock();
                        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                        if (currentTimeMillis > c) {
                            com.duapps.ad.stats.h.a(b.this.r, b.this.i, b.this.f2130a.toString(), b.this.k);
                            m.b(b.this.r, currentTimeMillis + 86400);
                        }
                        reentrantLock.unlock();
                        m.a(b.this.r);
                        m.b(b.this.r);
                        synchronized (b.this.p) {
                            b.this.p.add(dVar);
                        }
                        a(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }

                @Override // com.duapps.ad.entity.a
                public void a(d dVar2) {
                    if (b.this.n != null) {
                        b.this.n.a();
                    }
                }

                private void a(int i2) {
                    com.duapps.ad.stats.c.a(b.this.r, b.this.i, i2, SystemClock.elapsedRealtime() - elapsedRealtime);
                    h.c("FbCache", "Refresh result: id = " + dVar.o() + "; code = " + i2);
                    if (i > 0) {
                        b.this.q.obtainMessage(2, i - 1, 0).sendToTarget();
                    } else {
                        b.this.d = false;
                        h.c("FbCache", "Refresh result: DONE for geeen count");
                    }
                }
            });
            dVar.n();
        }
    }

    public void a(List<String> list) {
        if (list != null && list.size() != 0) {
            m.a(this.r, list, this.i);
            b(list);
        }
    }

    private void b(List<String> list) {
        if (list != null && list.size() > 0) {
            synchronized (this.f2130a) {
                this.f2130a.clear();
                this.f2130a.addAll(list);
            }
        }
    }
}
