package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.Display;
import android.view.View;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ai extends View {
    static double s;
    static String t = "";
    static String u = "";
    static boolean v = true;
    static Paint w = new Paint(1);
    static float[] x = new float[80];
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    String G;
    p H;
    c d;
    c e;
    c f;
    c g;
    c h;
    c i;
    c j;
    c k;
    double l;
    double m;
    double n;
    double o;
    double p;
    boolean q;
    ArrayList<c> r;
    long y;
    int z;

    ai() {
        super(t.b());
        this.l = 2.8d;
        this.m = 2.05d;
        this.n = 1.3d;
        this.o = 2.5d;
        this.p = 1.5d;
        this.r = new ArrayList<>();
        this.y = System.currentTimeMillis();
    }

    public boolean b() {
        double d = 0.8d;
        if (this.d == null) {
            this.d = new c(t.g("pre_popup_bg"));
            this.e = new c(t.g("v4vc_logo"));
            this.f = new c(t.g("yes_button_normal"));
            this.g = new c(t.g("yes_button_down"));
            this.h = new c(t.g("no_button_normal"));
            this.i = new c(t.g("no_button_down"));
            this.k = new c(t.g("done_button_normal"));
            this.j = new c(t.g("done_button_down"));
            this.r.add(this.d);
            this.r.add(this.e);
            this.r.add(this.f);
            this.r.add(this.g);
            this.r.add(this.h);
            this.r.add(this.i);
            this.r.add(this.k);
            this.r.add(this.j);
            Display defaultDisplay = t.b().getWindowManager().getDefaultDisplay();
            int width = defaultDisplay.getWidth();
            double d2 = defaultDisplay.getHeight() > width ? (r4 - width) / 360.0d : (width - r4) / 360.0d;
            if (d2 < 0.8d && !t.d) {
                this.q = true;
            }
            double d3 = d2 <= 2.5d ? d2 : 2.5d;
            if (d3 >= 0.8d) {
                d = d3;
            } else if (!t.d) {
                d = 1.7d;
            }
            s = d;
            if (this.q) {
                this.l = 2.6d;
                this.m = 1.8d;
                this.n = 1.0d;
                this.o = 2.2d;
                this.p = 1.2d;
            }
            this.d.a(d / 1.8d);
            this.e.a(d / 1.8d);
            this.g.a(d / 1.8d);
            this.i.a(d / 1.8d);
            this.f.a(d / 1.8d);
            this.h.a(d / 1.8d);
            this.j.a(d / 1.8d);
            this.k.a(d / 1.8d);
            w.setTextSize((float) (18.0d * d));
            if (this.q) {
                w.setTextSize((float) (d * 9.0d));
            }
            w.setFakeBoldText(true);
        }
        return true;
    }

    int a(String str) {
        w.getTextWidths(str, x);
        float f = 0.0f;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            f += x[i];
        }
        return (int) f;
    }

    int c() {
        return (int) w.getTextSize();
    }

    void a(String str, int i, int i2, Canvas canvas) {
        int a2 = i - (a(str) / 2);
        w.setColor(-986896);
        canvas.drawText(str, a2 + 1, i2 + 1, w);
        w.setColor(-8355712);
        canvas.drawText(str, a2, i2, w);
    }

    void b(String str, int i, int i2, Canvas canvas) {
        int a2 = i - (a(str) / 2);
        w.setColor(-8355712);
        canvas.drawText(str, a2 + 2, i2 + 2, w);
        w.setColor(-1);
        canvas.drawText(str, a2, i2, w);
    }

    void c(String str, int i, int i2, Canvas canvas) {
        b(str, (this.f.f / 2) + i, (this.f.g / 2) + i2 + ((c() * 4) / 10), canvas);
    }

    boolean a(int i, int i2, int i3, int i4) {
        return i >= i3 && i2 >= i4 && i < this.f.f + i3 && i2 < this.f.g + i4;
    }

    void a(String str, String str2) {
        int i;
        int a2 = a(str);
        t = "";
        u = "";
        if (a2 > (this.d.f - a("WW")) - a(str2)) {
            v = false;
            int i2 = 0;
            String str3 = "";
            int i3 = 0;
            while (i3 < (this.d.f - a("WW")) - a(str2)) {
                str3 = str3 + str.charAt(i2);
                i2++;
                i3 = a(str3);
            }
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                if (str3.charAt(i4) == ' ' && i4 >= 5) {
                    t = str.substring(0, i4);
                    i = i4;
                } else {
                    t = i5 < 5 ? str.substring(0, i2) : t;
                    i = i5;
                }
                i4++;
                i5 = i;
            }
            u = i5 < 5 ? str.substring(i2) : str.substring(i5);
            return;
        }
        v = true;
        t = str;
        u = "";
    }

    void a() {
        double d = this.q ? 12.0d : 16.0d;
        Display defaultDisplay = t.b().getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        this.z = (width - this.d.f) / 2;
        this.A = ((height - this.d.g) / 2) - 80;
        this.B = this.z + (this.d.f / 2);
        this.C = this.A + (this.d.g / 2);
        this.F = this.A + ((int) (this.d.g - (this.f.g + (s * d))));
        this.D = this.z + ((int) (s * d));
        this.E = ((int) (this.d.f - ((d * s) + this.f.f))) + this.z;
    }
}
