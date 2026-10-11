package b.a;

import android.content.Context;
import android.text.TextUtils;
import com.b.a.c;
import com.mopub.common.Constants;
import java.util.Iterator;

/* compiled from: CacheImpl.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class cm implements cr, cy, com.b.a.b.d {

    /* renamed from: a, reason: collision with root package name */
    private cu f130a;

    /* renamed from: b, reason: collision with root package name */
    private com.b.a.k f131b;
    private b c;
    private a e;
    private int g;
    private Context h;
    private k d = new k();
    private int f = 10;

    public cm(Context context) {
        this.f130a = null;
        this.f131b = null;
        this.c = null;
        this.e = null;
        this.h = context;
        this.f130a = new cu(context);
        this.c = new b(context);
        this.f131b = com.b.a.k.a(context);
        this.d.a(this.f131b.c());
        this.e = new a();
        this.g = this.f131b.d(-1);
    }

    public void a() {
        if (ao.g(this.h)) {
            d();
        } else if (ap.f67a) {
            ap.c("MobclickAgent", "network is unavailable");
        }
    }

    @Override // b.a.cr
    public void a(cs csVar) {
        if (csVar != null) {
            this.f130a.a(csVar);
        }
        a(csVar instanceof ak);
    }

    @Override // b.a.cr
    public void b(cs csVar) {
        this.f130a.a(csVar);
    }

    @Override // b.a.cr
    public void b() {
        if (this.f130a.a() > 0) {
            try {
                byte[] b2 = b(a(new int[0]));
                if (b2 != null) {
                    this.f131b.a(b2);
                }
            } catch (Throwable th) {
                if (th instanceof OutOfMemoryError) {
                    this.f131b.f();
                }
                if (th != null) {
                    th.printStackTrace();
                }
            }
        }
    }

    private void a(boolean z) {
        boolean a2 = this.c.a();
        if (a2) {
            this.f130a.a(new m(this.c.i()));
        }
        if (b(z)) {
            d();
        } else if (a2 || c()) {
            b();
        }
    }

    private void d(int i) {
        a(a(i, (int) (System.currentTimeMillis() - this.c.j())));
        com.b.a.i.a(new com.b.a.j() { // from class: b.a.cm.1
            @Override // com.b.a.j
            public void a() {
                cm.this.a();
            }
        }, i);
    }

    private void a(am amVar) {
        at a2;
        if (amVar != null) {
            bm a3 = bm.a(this.h);
            a3.a();
            amVar.a(a3.b());
            byte[] b2 = b(amVar);
            if (b2 != null) {
                if (e()) {
                    a2 = at.b(this.h, com.b.a.a.a(this.h), b2);
                } else {
                    a2 = at.a(this.h, com.b.a.a.a(this.h), b2);
                }
                byte[] c = a2.c();
                com.b.a.k a4 = com.b.a.k.a(this.h);
                a4.f();
                a4.b(c);
                a3.c();
            }
        }
    }

    protected am a(int... iArr) {
        boolean z = false;
        try {
            if (TextUtils.isEmpty(com.b.a.a.a(this.h))) {
                ap.b("MobclickAgent", "Appkey is missing ,Please check AndroidManifest.xml");
                return null;
            }
            byte[] e = com.b.a.k.a(this.h).e();
            am a2 = e == null ? null : a(e);
            if (a2 == null && this.f130a.a() == 0) {
                return null;
            }
            am amVar = a2 == null ? new am() : a2;
            this.f130a.a(amVar);
            if (ap.f67a && amVar.f()) {
                Iterator<ak> it = amVar.e().iterator();
                while (it.hasNext()) {
                    z = it.next().d() > 0 ? true : z;
                }
                if (!z) {
                    ap.d("MobclickAgent", "missing Activities or PageViews");
                }
            }
            am a3 = this.d.a(this.h, amVar);
            if (iArr != null && iArr.length == 2) {
                q qVar = new q();
                qVar.a(new ac(iArr[0] / 1000, iArr[1]));
                a3.a(qVar);
                return a3;
            }
            return a3;
        } catch (Exception e2) {
            ap.b("MobclickAgent", "Fail to construct message ...", e2);
            com.b.a.k.a(this.h).f();
            return null;
        }
    }

    private am a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            am amVar = new am();
            new ba().a(amVar, bArr);
            return amVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private byte[] b(am amVar) {
        if (amVar == null) {
            return null;
        }
        try {
            byte[] a2 = new bd().a(amVar);
            if (ap.f67a) {
                ap.c("MobclickAgent", amVar.toString());
            }
            return a2;
        } catch (Exception e) {
            ap.b("MobclickAgent", "Fail to serialize log ...", e);
            return null;
        }
    }

    private boolean b(boolean z) {
        if (!ao.g(this.h)) {
            if (ap.f67a) {
                ap.c("MobclickAgent", "network is unavailable");
            }
            return false;
        }
        if (this.c.a()) {
            return true;
        }
        if (ap.f67a && ao.q(this.h)) {
            return true;
        }
        return this.e.c().a(z);
    }

    private boolean c() {
        return this.f130a.a() > this.f;
    }

    private void d() {
        try {
            if (this.f131b.g()) {
                da daVar = new da(this.h, this.c);
                daVar.a(this);
                if (this.d.b()) {
                    daVar.b(true);
                }
                daVar.a();
                return;
            }
            am a2 = a(new int[0]);
            if (a2 == null) {
                ap.a("MobclickAgent", "No data to report");
                return;
            }
            da daVar2 = new da(this.h, this.c);
            daVar2.a(this);
            if (this.d.b()) {
                daVar2.b(true);
            }
            daVar2.a(a2);
            daVar2.a(e());
            daVar2.a();
        } catch (Throwable th) {
            if (th instanceof OutOfMemoryError) {
            }
            if (th != null) {
                th.printStackTrace();
            }
        }
    }

    private boolean e() {
        switch (this.g) {
            case -1:
                return com.b.a.a.f;
            case 0:
            default:
                return false;
            case 1:
                return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        d(i);
    }

    @Override // com.b.a.b.d
    public void a(int i, long j) {
        this.e.a(i, (int) j);
    }

    @Override // b.a.cy
    public void a(int i) {
        if (i >= 0 && i <= 3) {
            this.d.a(i);
            this.e.b(i);
        }
    }

    @Override // b.a.cy
    public void b(int i) {
        if (i > 0) {
            this.e.a(i);
        }
    }

    @Override // b.a.cy
    public void c(int i) {
        this.g = i;
    }

    /* compiled from: CacheImpl.java */
    public class a {
        private c.f e;
        private int f;
        private int g;
        private int h;
        private int i;

        /* renamed from: b, reason: collision with root package name */
        private final long f134b = 1296000000;
        private final int c = 1800000;
        private final int d = Constants.TEN_SECONDS_MILLIS;
        private boolean j = false;

        public a() {
            this.f = cm.this.f131b.c();
            int d = cm.this.f131b.d();
            if (d > 0) {
                this.g = c(d);
            } else if (com.b.a.a.g > 0) {
                this.g = c(com.b.a.a.g);
            } else {
                this.g = Constants.TEN_SECONDS_MILLIS;
            }
            int[] b2 = cm.this.f131b.b();
            this.h = b2[0];
            this.i = b2[1];
        }

        protected void a() {
            if (this.f > 0) {
                this.e = (this.e instanceof c.a) && this.e.a() ? this.e : new c.a(cm.this.c, cm.this.d);
            } else {
                if (!((this.e instanceof c.b) && this.e.a())) {
                    if (b()) {
                        int a2 = com.b.a.e.a(this.g, at.a(cm.this.h));
                        this.e = new c.b(a2);
                        cm.this.e(a2);
                    } else {
                        this.e = b(this.h, this.i);
                    }
                }
            }
            this.j = false;
        }

        protected boolean b() {
            return (cm.this.f131b.g() || cm.this.c.a() || System.currentTimeMillis() - cm.this.c.j() <= 1296000000) ? false : true;
        }

        public c.f c() {
            a();
            return this.e;
        }

        private c.f b(int i, int i2) {
            switch (i) {
            }
            return new c.C0006c();
        }

        private int c(int i) {
            if (i > 1800000) {
                return 1800000;
            }
            return i;
        }

        protected void d() {
            this.j = true;
        }

        public void a(int i) {
            this.g = c(i);
            d();
        }

        public void b(int i) {
            this.f = i;
            d();
        }

        public void a(int i, int i2) {
            this.h = i;
            this.i = i2;
            d();
        }
    }
}
