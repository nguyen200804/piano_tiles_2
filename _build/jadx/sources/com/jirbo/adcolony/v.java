package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class v extends ai {

    /* renamed from: a, reason: collision with root package name */
    boolean f3857a;

    /* renamed from: b, reason: collision with root package name */
    boolean f3858b;
    boolean c = true;

    public v(String str, p pVar) {
        this.G = str;
        this.H = pVar;
        if (b()) {
            f.d().addContentView(this, new FrameLayout.LayoutParams(-1, -1, 17));
            if (this.q) {
                this.F += 20;
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        int i = 0;
        if (this.c) {
            t.G = null;
            this.c = false;
            this.H.c(false);
            t.t = true;
            while (true) {
                int i2 = i;
                if (i2 >= t.ab.size()) {
                    t.ab.clear();
                    return;
                } else {
                    t.ab.get(i2).recycle();
                    i = i2 + 1;
                }
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        a();
        int currentTimeMillis = (((int) (System.currentTimeMillis() - this.y)) * 255) / 1000;
        if (currentTimeMillis > 128) {
            currentTimeMillis = 128;
        }
        canvas.drawARGB(currentTimeMillis, 0, 0, 0);
        this.d.a(canvas, this.z, this.A);
        int c = (c() * 3) / 2;
        int j = this.H.j();
        if (this.H.i() == 1 || this.H.i() == 0) {
            a(this.G, "");
            if (!v) {
                a("Watch a video to earn", this.B, (int) (this.C - (c * this.l)), canvas);
                a(t, this.B, (int) (this.C - (c * this.m)), canvas);
                a(u + ".", this.B, (int) (this.C - (c * this.n)), canvas);
            } else {
                a("Watch a video to earn", this.B, (int) (this.C - (c * this.o)), canvas);
                a(t + ".", this.B, (int) (this.C - (c * this.p)), canvas);
            }
        } else {
            String str = j == 1 ? "video" : "videos";
            a(this.G, "" + j + " more " + str + " to earn )?");
            if (!v) {
                a("Watch a sponsored video now (Only", this.B, (int) (this.C - (c * this.l)), canvas);
                a("" + j + " more " + str + " to earn " + t, this.B, (int) (this.C - (c * this.m)), canvas);
                a(u + ")?", this.B, (int) (this.C - (c * this.n)), canvas);
            } else {
                a("Watch a sponsored video now (Only", this.B, (int) (this.C - (c * this.o)), canvas);
                a("" + j + " more " + str + " to earn " + t + ")?", this.B, (int) (this.C - (c * this.p)), canvas);
            }
        }
        this.e.a(canvas, this.B - (this.e.f / 2), this.C - (this.e.g / 2));
        if (!this.f3858b) {
            this.f.a(canvas, this.D, this.F);
        } else {
            this.g.a(canvas, this.D, this.F);
        }
        if (!this.f3857a) {
            this.h.a(canvas, this.E, this.F);
        } else {
            this.i.a(canvas, this.E, this.F);
        }
        c("Yes", this.D, this.F, canvas);
        c("No", this.E, this.F, canvas);
        if (currentTimeMillis != 128) {
            invalidate();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (event.getAction() == 1) {
            if (a(x, y, this.D, this.F) && this.f3858b) {
                t.G = null;
                this.c = false;
                ((ViewGroup) getParent()).removeView(this);
                this.H.c(true);
            } else if (a(x, y, this.E, this.F) && this.f3857a) {
                t.G = null;
                this.c = false;
                ((ViewGroup) getParent()).removeView(this);
                this.H.c(false);
                t.t = true;
                for (int i = 0; i < t.ab.size(); i++) {
                    t.ab.get(i).recycle();
                }
                t.ab.clear();
            }
            this.f3857a = false;
            this.f3858b = false;
            invalidate();
        }
        if (event.getAction() == 0) {
            if (a(x, y, this.D, this.F)) {
                this.f3858b = true;
                invalidate();
            } else if (a(x, y, this.E, this.F)) {
                this.f3857a = true;
                invalidate();
            }
        }
        return true;
    }
}
