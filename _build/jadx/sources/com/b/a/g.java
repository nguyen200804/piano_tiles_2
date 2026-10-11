package com.b.a;

import android.content.Context;
import b.a.ap;
import b.a.cn;
import b.a.cp;
import b.a.cq;
import b.a.cx;
import b.a.cz;
import b.a.db;
import java.util.HashMap;
import java.util.Map;

/* compiled from: InternalAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g implements cx {
    private f c;
    private cq g;
    private cn h;

    /* renamed from: a, reason: collision with root package name */
    private final com.b.a.b.b f639a = new com.b.a.b.b();

    /* renamed from: b, reason: collision with root package name */
    private Context f640b = null;
    private cp d = new cp();
    private b.a.e e = new b.a.e();
    private db f = new db();
    private boolean i = false;

    g() {
        this.d.a(this);
    }

    private void d(Context context) {
        if (!this.i) {
            this.f640b = context.getApplicationContext();
            this.g = new cq(this.f640b);
            this.h = cn.a(this.f640b);
            this.i = true;
        }
    }

    public void a(f fVar) {
        this.c = fVar;
    }

    public void a(int i) {
        a.c = i;
    }

    void a(Context context) {
        if (context == null) {
            ap.b("MobclickAgent", "unexpected null context in onResume");
            return;
        }
        this.f639a.a(context);
        try {
            cn.a(context).a(this.f639a);
        } catch (Exception e) {
        }
    }

    void b(final Context context) {
        if (context == null) {
            ap.b("MobclickAgent", "unexpected null context in onResume");
            return;
        }
        if (a.h) {
            this.e.a(context.getClass().getName());
        }
        try {
            if (!this.i) {
                d(context);
            }
            i.a(new j() { // from class: com.b.a.g.1
                @Override // com.b.a.j
                public void a() {
                    g.this.e(context.getApplicationContext());
                }
            });
        } catch (Exception e) {
            ap.b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", e);
        }
    }

    void c(final Context context) {
        if (context == null) {
            ap.b("MobclickAgent", "unexpected null context in onPause");
            return;
        }
        if (a.h) {
            this.e.b(context.getClass().getName());
        }
        try {
            if (!this.i) {
                d(context);
            }
            i.a(new j() { // from class: com.b.a.g.2
                @Override // com.b.a.j
                public void a() {
                    g.this.f(context.getApplicationContext());
                }
            });
        } catch (Exception e) {
            ap.b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", e);
        }
    }

    public void a(Context context, String str, HashMap<String, Object> hashMap) {
        try {
            if (!this.i) {
                d(context);
            }
            this.g.a(str, hashMap);
        } catch (Exception e) {
            ap.b("MobclickAgent", "", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context) {
        this.f.c(context);
        if (this.c != null) {
            this.c.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context) {
        this.f.d(context);
        this.e.a(context);
        if (this.c != null) {
            this.c.b();
        }
        this.h.b();
    }

    public void a(Context context, String str, String str2, long j, int i) {
        try {
            if (!this.i) {
                d(context);
            }
            this.g.a(str, str2, j, i);
        } catch (Exception e) {
            ap.b("MobclickAgent", "", e);
        }
    }

    void a(Context context, String str, Map<String, Object> map, long j) {
        try {
            if (!this.i) {
                d(context);
            }
            this.g.a(str, map, j);
        } catch (Exception e) {
            ap.b("MobclickAgent", "", e);
        }
    }

    @Override // b.a.cx
    public void a(Throwable th) {
        try {
            this.e.a();
            if (this.f640b != null) {
                if (th != null && this.h != null) {
                    this.h.b(new b.a.g(th));
                }
                f(this.f640b);
                cz.a(this.f640b).edit().commit();
            }
            i.a();
        } catch (Exception e) {
            ap.a("MobclickAgent", "Exception in onAppCrash", e);
        }
    }
}
