package b.a;

import android.content.Context;
import b.a.bl;
import com.b.a.k;
import java.io.File;
import java.io.FileInputStream;

/* compiled from: Sender.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class da {

    /* renamed from: a, reason: collision with root package name */
    private bm f150a;

    /* renamed from: b, reason: collision with root package name */
    private ch f151b;
    private Context d;
    private b e;
    private cv f;
    private am g;
    private boolean i;
    private final int c = 1;
    private boolean h = false;

    public da(Context context, b bVar) {
        this.f150a = bm.a(context);
        this.f151b = ch.a(context);
        this.d = context;
        this.e = bVar;
        this.f = new cv(context);
        this.f.a(this.e);
    }

    public void a(am amVar) {
        this.g = amVar;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void b(boolean z) {
        this.i = z;
    }

    public void a(cy cyVar) {
        this.f151b.a(cyVar);
    }

    public void a() {
        if (this.g != null) {
            c();
        } else {
            b();
        }
    }

    private void b() {
        com.b.a.k.a(this.d).h().a(new k.b() { // from class: b.a.da.1
            @Override // com.b.a.k.b
            public void a(File file) {
            }

            @Override // com.b.a.k.b
            public boolean b(File file) {
                FileInputStream fileInputStream;
                try {
                    try {
                        fileInputStream = new FileInputStream(file);
                        try {
                            byte[] b2 = av.b(fileInputStream);
                            av.c(fileInputStream);
                            byte[] a2 = da.this.f.a(b2);
                            int a3 = a2 == null ? 1 : da.this.a(a2);
                            if (a3 == 2 && da.this.e.h()) {
                                da.this.e.g();
                            }
                            return da.this.i || a3 != 1;
                        } catch (Throwable th) {
                            th = th;
                            av.c(fileInputStream);
                            throw th;
                        }
                    } catch (Exception e) {
                        return false;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = null;
                }
            }

            @Override // com.b.a.k.b
            public void c(File file) {
                da.this.e.f();
            }
        });
    }

    private void c() {
        at b2;
        int a2;
        this.f150a.a();
        am amVar = this.g;
        amVar.a(this.f150a.b());
        byte[] b3 = b(amVar);
        if (b3 == null) {
            ap.d("MobclickAgent", "message is null");
        }
        if (!this.h) {
            b2 = at.a(this.d, com.b.a.a.a(this.d), b3);
        } else {
            b2 = at.b(this.d, com.b.a.a.a(this.d), b3);
        }
        byte[] c = b2.c();
        com.b.a.k.a(this.d).f();
        byte[] a3 = this.f.a(c);
        if (a3 == null) {
            a2 = 1;
        } else {
            a2 = a(a3);
        }
        switch (a2) {
            case 1:
                if (!this.i) {
                    com.b.a.k.a(this.d).b(c);
                }
                ap.b("MobclickAgent", "connection error");
                break;
            case 2:
                if (this.e.h()) {
                    this.e.g();
                }
                this.f150a.c();
                this.e.f();
                break;
            case 3:
                this.e.f();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(byte[] bArr) {
        ai aiVar = new ai();
        try {
            new ba(new bl.a()).a(aiVar, bArr);
            if (aiVar.f44a == 1) {
                this.f151b.b(aiVar.d());
                this.f151b.c();
            }
            ap.a("MobclickAgent", "send log:" + aiVar.b());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (aiVar.f44a == 1) {
            return 2;
        }
        return 3;
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
}
