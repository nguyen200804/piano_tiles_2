package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.view.Display;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class w extends ai {

    /* renamed from: a, reason: collision with root package name */
    boolean f3859a;

    public w(String str, p pVar) {
        this.G = str;
        this.H = pVar;
        if (b()) {
            f.d().addContentView(this, new FrameLayout.LayoutParams(-1, -1, 17));
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
        if (j == this.H.i() || j == 0) {
            a(this.G, "video. You earned");
            if (v) {
                a("Thanks for watching the sponsored", this.B, (int) (this.C - (c * 2.5d)), canvas);
                a("video. You earned " + t + ".", this.B, (int) (this.C - (c * 1.5d)), canvas);
            } else {
                a("Thanks for watching the sponsored", this.B, (int) (this.C - (c * 2.8d)), canvas);
                a("video. You earned " + t, this.B, (int) (this.C - (c * 2.05d)), canvas);
                a(u + ".", this.B, (int) (this.C - (c * 1.3d)), canvas);
            }
        } else {
            a(this.G, "to earn ");
            String str = j == 1 ? "video" : "videos";
            if (v) {
                a("Thank you. Watch " + j + " more " + str, this.B, (int) (this.C - (c * 2.5d)), canvas);
                a("to earn " + t + ".", this.B, (int) (this.C - (c * 1.5d)), canvas);
            } else {
                a("Thank you. Watch " + j + " more " + str, this.B, (int) (this.C - (c * 2.8d)), canvas);
                a("to earn " + t, this.B, (int) (this.C - (c * 2.05d)), canvas);
                a(u + ".", this.B, (int) (this.C - (c * 1.3d)), canvas);
            }
        }
        this.e.a(canvas, this.B - (this.e.f / 2), this.C - (this.e.g / 2));
        if (!this.f3859a) {
            this.k.a(canvas, this.D, this.F);
        } else {
            this.j.a(canvas, this.D, this.F);
        }
        c("Ok", this.D, this.F, canvas);
        if (currentTimeMillis != 128) {
            invalidate();
        }
    }

    @Override // com.jirbo.adcolony.ai
    void a() {
        Display defaultDisplay = t.b().getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        double d = this.q ? 12.0d : 16.0d;
        this.z = (width - this.d.f) / 2;
        this.A = ((height - this.d.g) / 2) - 80;
        this.B = this.z + (this.d.f / 2);
        this.C = this.A + (this.d.g / 2);
        this.F = ((int) (this.d.g - ((d * s) + this.k.g))) + this.A;
        this.D = this.B - (this.k.f / 2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (event.getAction() == 1) {
            if (a(x, y, this.D, this.F) && this.f3859a) {
                t.G = null;
                ((ViewGroup) getParent()).removeView(this);
                for (int i = 0; i < t.ab.size(); i++) {
                    t.ab.get(i).recycle();
                }
                t.ab.clear();
                t.t = true;
            }
            this.f3859a = false;
            invalidate();
        }
        if (event.getAction() == 0 && a(x, y, this.D, this.F)) {
            this.f3859a = true;
            invalidate();
        }
        return true;
    }
}
