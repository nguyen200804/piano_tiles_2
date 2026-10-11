package com.jirbo.adcolony;

import android.graphics.Canvas;
import android.view.KeyEvent;
import android.view.MotionEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class au extends ai {

    /* renamed from: a, reason: collision with root package name */
    static boolean f3805a;

    /* renamed from: b, reason: collision with root package name */
    static au f3806b;
    boolean I;
    ADCVideo J;
    boolean c;

    public au(ADCVideo aDCVideo, p pVar) {
        this.J = aDCVideo;
        this.H = pVar;
        aDCVideo.D.pause();
        f3806b = this;
        if (!b()) {
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.J.D != null) {
            f3805a = true;
            a();
            int currentTimeMillis = (((int) (System.currentTimeMillis() - this.y)) * 255) / 1000;
            canvas.drawARGB(currentTimeMillis <= 128 ? currentTimeMillis : 128, 0, 0, 0);
            this.d.a(canvas, this.z, this.A);
            int c = (c() * 3) / 2;
            a("Completion is required to receive", this.B, (int) (this.C - (c * 2.75d)), canvas);
            a("your reward.", this.B, this.C - (c * 2), canvas);
            a("Are you sure you want to skip?", this.B, (int) (this.C - (c * 1.25d)), canvas);
            this.e.a(canvas, this.B - (this.e.f / 2), this.C - (this.e.g / 2));
            if (!this.c) {
                this.f.a(canvas, this.D, this.F);
            } else {
                this.g.a(canvas, this.D, this.F);
            }
            if (!this.I) {
                this.h.a(canvas, this.E, this.F);
            } else {
                this.i.a(canvas, this.E, this.F);
            }
            c("Yes", this.D, this.F, canvas);
            c("No", this.E, this.F, canvas);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        ADCVideo aDCVideo = this.J;
        if (ADCVideo.d) {
            f3806b = null;
            return this.J.E.onTouchEvent(event);
        }
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (event.getAction() == 1) {
            if (a(x, y, this.D, this.F) && this.c) {
                f3806b = null;
                f3805a = false;
                t.s = false;
                t.Y = true;
                t.K.b(this.H);
                AdColonyBrowser.B = true;
                this.J.finish();
                t.t = true;
            } else if (a(x, y, this.E, this.F) && this.I) {
                f3806b = null;
                f3805a = false;
                this.J.D.start();
            }
            this.c = false;
            this.I = false;
            invalidate();
        }
        if (event.getAction() != 0) {
            return true;
        }
        if (a(x, y, this.D, this.F)) {
            this.c = true;
            invalidate();
            return true;
        }
        if (!a(x, y, this.E, this.F)) {
            return true;
        }
        this.I = true;
        invalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keycode, KeyEvent event) {
        if (this.J.D != null && keycode == 4) {
            return super.onKeyDown(keycode, event);
        }
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keycode, KeyEvent event) {
        if (keycode != 4) {
            return false;
        }
        f3806b = null;
        this.J.D.start();
        return true;
    }

    @Override // com.jirbo.adcolony.ai
    void a() {
        int i = this.J.s;
        int i2 = this.J.t;
        this.z = (i - this.d.f) / 2;
        this.A = (i2 - this.d.g) / 2;
        this.B = this.z + (this.d.f / 2);
        this.C = this.A + (this.d.g / 2);
        this.F = this.A + ((int) (this.d.g - (this.f.g + (s * 16.0d))));
        this.D = this.z + ((int) (s * 16.0d));
        this.E = this.z + ((int) (this.d.f - (this.f.f + (s * 16.0d))));
    }
}
