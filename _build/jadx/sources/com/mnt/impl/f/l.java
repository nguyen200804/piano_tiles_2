package com.mnt.impl.f;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private Context f4020a;

    /* renamed from: b, reason: collision with root package name */
    private String f4021b;
    private String c;
    private int d;
    private long e;
    private long f;
    private long g;
    private com.mnt.impl.j.b h;
    private String i;
    private int j;
    private boolean k;
    private boolean l;

    static {
        String str = com.mnt.impl.e.ga;
    }

    private l(Context context, String str, String str2) {
        this.d = 1;
        this.e = 14400000L;
        this.f = 2000L;
        this.k = false;
        this.l = true;
        this.f4020a = context;
        this.f4021b = str;
        this.i = str2;
        this.c = h.b(str2);
        this.k = true;
        this.h = com.mnt.impl.j.d.b(context).a();
    }

    public l(Context context, String str, String str2, int i) {
        this.d = 1;
        this.e = 14400000L;
        this.f = 2000L;
        this.k = false;
        this.l = true;
        this.f4020a = context;
        this.f4021b = str;
        this.c = h.b(str2);
        this.j = i;
        this.g = System.currentTimeMillis();
        this.h = com.mnt.impl.j.d.b(this.f4020a).a();
        if (this.h.f4072a) {
            this.e = this.h.g * 3600 * 1000;
            this.f = this.h.h;
        }
        this.i = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4020a != null && !TextUtils.isEmpty(this.f4021b)) {
            if (this.k) {
                a();
                return;
            }
            if (this.j == 0) {
                a();
            }
            if (!TextUtils.isEmpty(this.c)) {
                switch (this.d) {
                    case 1:
                        d();
                        break;
                    case 2:
                        e();
                        break;
                    default:
                        d();
                        break;
                }
            }
        }
    }

    private void a() {
        if (this.h.j == 3 || !TextUtils.isEmpty(this.c)) {
            System.currentTimeMillis();
            if (!this.k && this.h.f4072a && this.h.l > 0) {
                try {
                    Thread.sleep(this.h.l);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            System.currentTimeMillis();
            switch (this.h.j) {
                case 1:
                    c();
                    break;
                case 2:
                    b();
                    break;
                case 3:
                    if (TextUtils.isEmpty(this.c)) {
                        c();
                        break;
                    } else {
                        b();
                        break;
                    }
            }
        }
    }

    private void b() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(com.mnt.impl.i.b.c.c, this.f4021b);
        contentValues.put(com.mnt.impl.i.b.c.v, Long.valueOf(System.currentTimeMillis()));
        contentValues.put(com.mnt.impl.i.b.c.w, com.mnt.impl.e.gb);
        com.mnt.impl.i.b.a.a(this.f4020a).a(contentValues);
        com.mnt.impl.b.k.f(this.f4020a, this.f4021b);
    }

    private void c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(com.mnt.impl.i.b.c.c, this.f4021b);
        contentValues.put(com.mnt.impl.i.b.c.v, Long.valueOf(System.currentTimeMillis()));
        contentValues.put(com.mnt.impl.i.b.c.w, com.mnt.impl.e.gc);
        com.mnt.impl.i.b.a.a(this.f4020a).a(contentValues);
        com.mnt.impl.b.k.a(this.f4020a, this.i, false);
    }

    private void d() {
        while (System.currentTimeMillis() - this.g < this.e) {
            e();
            try {
                Thread.sleep(this.f);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private void e() {
        if (this.l) {
            this.l = false;
            ContentValues contentValues = new ContentValues();
            contentValues.put(com.mnt.impl.i.b.c.c, this.f4021b);
            contentValues.put(com.mnt.impl.i.b.c.q, Long.valueOf(System.currentTimeMillis()));
            com.mnt.impl.i.b.a a2 = com.mnt.impl.i.b.a.a(this.f4020a);
            a2.a(contentValues);
            a2.a(this.f4021b);
        }
        Intent intent = new Intent(com.mnt.impl.e.gd);
        intent.setPackage(this.f4021b);
        intent.setFlags(32);
        intent.putExtra(com.mnt.impl.e.ge, this.c);
        this.f4020a.sendBroadcast(intent);
    }

    public static void a(Context context, String str, String str2) {
        com.mnt.impl.l.c.a(new l(context, str, str2));
    }

    public static synchronized void a(Context context, String str, int i) {
        com.mnt.impl.e.b c;
        synchronized (l.class) {
            if (i == 0) {
                com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(context).a();
                if (a2.f4072a && a2.f == 1 && (c = h.c(str)) != null && !c.a() && !TextUtils.isEmpty(h.b(c.c))) {
                    new c(context, str, i).a(c);
                }
            }
            com.mnt.impl.l.c.a(new g(context, str, i));
        }
    }
}
