package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: RequestQueue.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private AtomicInteger f251a;

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, Queue<l<?>>> f252b;
    private final Set<l<?>> c;
    private final PriorityBlockingQueue<l<?>> d;
    private final PriorityBlockingQueue<l<?>> e;
    private final b f;
    private final f g;
    private final o h;
    private g[] i;
    private c j;
    private List<a> k;

    /* compiled from: RequestQueue.java */
    public interface a<T> {
        void a(l<T> lVar);
    }

    public m(b bVar, f fVar, int i, o oVar) {
        this.f251a = new AtomicInteger();
        this.f252b = new HashMap();
        this.c = new HashSet();
        this.d = new PriorityBlockingQueue<>();
        this.e = new PriorityBlockingQueue<>();
        this.k = new ArrayList();
        this.f = bVar;
        this.g = fVar;
        this.i = new g[i];
        this.h = oVar;
    }

    public m(b bVar, f fVar, int i) {
        this(bVar, fVar, i, new e(new Handler(Looper.getMainLooper())));
    }

    public m(b bVar, f fVar) {
        this(bVar, fVar, 4);
    }

    public void a() {
        b();
        this.j = new c(this.d, this.e, this.f, this.h);
        this.j.start();
        for (int i = 0; i < this.i.length; i++) {
            g gVar = new g(this.e, this.g, this.f, this.h);
            this.i[i] = gVar;
            gVar.start();
        }
    }

    public void b() {
        if (this.j != null) {
            this.j.a();
        }
        for (int i = 0; i < this.i.length; i++) {
            if (this.i[i] != null) {
                this.i[i].a();
            }
        }
    }

    public int c() {
        return this.f251a.incrementAndGet();
    }

    public <T> l<T> a(l<T> lVar) {
        lVar.a(this);
        synchronized (this.c) {
            this.c.add(lVar);
        }
        lVar.a(c());
        lVar.a("add-to-queue");
        if (!lVar.q()) {
            this.e.add(lVar);
        } else {
            synchronized (this.f252b) {
                String d = lVar.d();
                if (this.f252b.containsKey(d)) {
                    Queue<l<?>> queue = this.f252b.get(d);
                    if (queue == null) {
                        queue = new LinkedList<>();
                    }
                    queue.add(lVar);
                    this.f252b.put(d, queue);
                    if (t.f258b) {
                        t.a("Request for cacheKey=%s is in flight, putting on hold.", d);
                    }
                } else {
                    this.f252b.put(d, null);
                    this.d.add(lVar);
                }
            }
        }
        return lVar;
    }

    <T> void b(l<T> lVar) {
        synchronized (this.c) {
            this.c.remove(lVar);
        }
        synchronized (this.k) {
            Iterator<a> it = this.k.iterator();
            while (it.hasNext()) {
                it.next().a(lVar);
            }
        }
        if (lVar.q()) {
            synchronized (this.f252b) {
                String d = lVar.d();
                Queue<l<?>> remove = this.f252b.remove(d);
                if (remove != null) {
                    if (t.f258b) {
                        t.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), d);
                    }
                    this.d.addAll(remove);
                }
            }
        }
    }
}
