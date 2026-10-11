package com.mopub.mobileads;

import android.support.annotation.Nullable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.AdReport;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdAlertGestureListener extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final AdReport f4333a;

    /* renamed from: b, reason: collision with root package name */
    private float f4334b;
    private float c;
    private boolean d;
    private boolean e;
    private AdAlertReporter f;
    private int g;
    private float h;
    private a i = a.UNSET;
    private View j;

    enum a {
        UNSET,
        GOING_RIGHT,
        GOING_LEFT,
        FINISHED,
        FAILED
    }

    AdAlertGestureListener(View view, @Nullable AdReport adReport) {
        this.f4334b = 100.0f;
        if (view != null && view.getWidth() > 0) {
            this.f4334b = Math.min(100.0f, view.getWidth() / 3.0f);
        }
        this.j = view;
        this.f4333a = adReport;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX, float distanceY) {
        if (this.i == a.FINISHED) {
            return super.onScroll(e1, e2, distanceX, distanceY);
        }
        if (a(e1.getY(), e2.getY())) {
            this.i = a.FAILED;
            return super.onScroll(e1, e2, distanceX, distanceY);
        }
        switch (this.i) {
            case UNSET:
                this.h = e1.getX();
                a(e2.getX());
                break;
            case GOING_RIGHT:
                b(e2.getX());
                break;
            case GOING_LEFT:
                c(e2.getX());
                break;
        }
        this.c = e2.getX();
        return super.onScroll(e1, e2, distanceX, distanceY);
    }

    void a() {
        a aVar = this.i;
        a aVar2 = this.i;
        if (aVar == a.FINISHED) {
            this.f = new AdAlertReporter(this.j.getContext(), this.j, this.f4333a);
            this.f.send();
        }
        b();
    }

    void b() {
        this.g = 0;
        this.i = a.UNSET;
    }

    private boolean a(float f, float f2) {
        return Math.abs(f2 - f) > 100.0f;
    }

    private void a(float f) {
        if (f > this.h) {
            this.i = a.GOING_RIGHT;
        }
    }

    private void b(float f) {
        if (d(f) && g(f)) {
            this.i = a.GOING_LEFT;
            this.h = f;
        }
    }

    private void c(float f) {
        if (e(f) && f(f)) {
            this.i = a.GOING_RIGHT;
            this.h = f;
        }
    }

    private void c() {
        this.g++;
        if (this.g >= 4) {
            this.i = a.FINISHED;
        }
    }

    private boolean d(float f) {
        if (this.e) {
            return true;
        }
        if (f < this.h + this.f4334b) {
            return false;
        }
        this.d = false;
        this.e = true;
        return true;
    }

    private boolean e(float f) {
        if (this.d) {
            return true;
        }
        if (f > this.h - this.f4334b) {
            return false;
        }
        this.e = false;
        this.d = true;
        c();
        return true;
    }

    private boolean f(float f) {
        return f > this.c;
    }

    private boolean g(float f) {
        return f < this.c;
    }
}
