package com.jirbo.adcolony;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ay {

    /* renamed from: a, reason: collision with root package name */
    static String f3809a = new String("mutex");

    /* renamed from: b, reason: collision with root package name */
    static ArrayList<a> f3810b = new ArrayList<>();
    static ArrayList<a> c = new ArrayList<>();
    static ArrayList<Runnable> d = new ArrayList<>();
    static ArrayList<Runnable> e = new ArrayList<>();
    static volatile boolean f;

    static void a() {
        c();
        synchronized (f3809a) {
            d.clear();
        }
        b();
    }

    static void a(Runnable runnable) {
        synchronized (f3809a) {
            if (f) {
                d.add(runnable);
            } else if (0 == 0) {
                new Thread(runnable).start();
            }
        }
    }

    static void b() {
        synchronized (f3809a) {
            f = false;
            e.clear();
            e.addAll(d);
            d.clear();
            c.clear();
        }
        Iterator<Runnable> it = e.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    static void c() {
        synchronized (f3809a) {
            f = true;
            Iterator<a> it = f3810b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                synchronized (next) {
                    next.notify();
                }
            }
            synchronized (f3809a) {
                f3810b.clear();
            }
        }
    }

    static class a extends Thread {

        /* renamed from: a, reason: collision with root package name */
        Runnable f3811a;

        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (this.f3811a != null) {
                    try {
                        this.f3811a.run();
                    } catch (RuntimeException e) {
                        t.d("Exception caught in reusable thread.");
                        t.d(e + "");
                        e.printStackTrace();
                    }
                    this.f3811a = null;
                }
                if (ay.f) {
                    return;
                }
                synchronized (this) {
                    synchronized (ay.f3809a) {
                        ay.f3810b.add(this);
                    }
                    try {
                        wait();
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }
}
