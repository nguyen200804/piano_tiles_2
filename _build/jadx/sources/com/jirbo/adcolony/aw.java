package com.jirbo.adcolony;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aw extends y {
    String c;
    OutputStream d;
    byte[] e = new byte[1024];
    int f = 0;
    int g;
    int h;

    aw(String str) {
        this.c = str;
        if (t.e != 0) {
            this.h = 23;
            this.g = this.h;
        }
        try {
            if (t.c != null && t.c.f != null) {
                t.c.f.b();
            }
            this.d = new FileOutputStream(str);
        } catch (IOException e) {
            a(e);
        }
    }

    @Override // com.jirbo.adcolony.y
    void a(char c) {
        this.e[this.f] = (byte) (this.g ^ c);
        this.g += this.h;
        int i = this.f + 1;
        this.f = i;
        if (i == 1024) {
            c();
        }
    }

    void c() {
        if (this.f > 0 && this.d != null) {
            try {
                this.d.write(this.e, 0, this.f);
                this.f = 0;
                this.d.flush();
            } catch (IOException e) {
                this.f = 0;
                a(e);
            }
        }
    }

    void d() {
        c();
        try {
            if (this.d != null) {
                this.d.close();
                this.d = null;
            }
        } catch (IOException e) {
            this.d = null;
            a(e);
        }
    }

    void a(IOException iOException) {
        al.d.a("Error writing \"").a(this.c).b((Object) "\":");
        al.d.b((Object) iOException.toString());
        d();
    }
}
