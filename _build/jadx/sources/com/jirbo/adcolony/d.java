package com.jirbo.adcolony;

import android.os.StatFs;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    af f3816a;

    /* renamed from: b, reason: collision with root package name */
    String f3817b;
    String c;
    String d;
    File e;
    File f;

    d(af afVar) {
        this.f3816a = afVar;
    }

    void a() {
        al.f3721a.b((Object) "Configuring storage");
        al.f3722b.b((Object) "Using internal storage:");
        this.f3817b = c() + "/adc/";
        this.c = this.f3817b + "media/";
        al.f3721a.b((Object) this.c);
        this.e = new File(this.c);
        if (!this.e.isDirectory()) {
            this.e.delete();
            this.e.mkdirs();
        }
        if (!this.e.isDirectory()) {
            t.a("Cannot create media folder.");
            return;
        }
        if (a(this.c) < 2.097152E7d) {
            t.a("Not enough space to store temporary files (" + a(this.c) + " bytes available).");
            return;
        }
        this.d = c() + "/adc/data/";
        if (t.e == 0) {
            this.d = this.f3817b + "data/";
        }
        al.f3721a.a("Internal data path: ").b((Object) this.d);
        this.f = new File(this.d);
        if (!this.f.isDirectory()) {
            this.f.delete();
        }
        this.f.mkdirs();
        ag agVar = new ag("iap_cache.txt");
        agVar.c();
        ak.a(agVar, t.X);
    }

    void b() {
        if (this.e != null && this.f != null) {
            if (!this.e.isDirectory()) {
                this.e.delete();
            }
            if (!this.f.isDirectory()) {
                this.f.delete();
            }
            this.e.mkdirs();
            this.f.mkdirs();
        }
    }

    String c() {
        return t.E == null ? "" : f.d().getFilesDir().getAbsolutePath();
    }

    double a(String str) {
        try {
            StatFs statFs = new StatFs(str);
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (RuntimeException e) {
            return 0.0d;
        }
    }
}
