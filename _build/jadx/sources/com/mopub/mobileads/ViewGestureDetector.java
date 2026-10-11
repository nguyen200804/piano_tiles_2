package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ViewGestureDetector extends GestureDetector {

    /* renamed from: a, reason: collision with root package name */
    private final View f4472a;

    /* renamed from: b, reason: collision with root package name */
    private AdAlertGestureListener f4473b;
    private UserClickListener c;

    public interface UserClickListener {
        void onResetUserClick();

        void onUserClick();

        boolean wasClicked();
    }

    public ViewGestureDetector(@NonNull Context context, @NonNull View view, @Nullable AdReport adReport) {
        this(context, view, new AdAlertGestureListener(view, adReport));
    }

    private ViewGestureDetector(Context context, View view, AdAlertGestureListener adAlertGestureListener) {
        super(context, adAlertGestureListener);
        this.f4473b = adAlertGestureListener;
        this.f4472a = view;
        setIsLongpressEnabled(false);
    }

    public void sendTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                onTouchEvent(motionEvent);
                break;
            case 1:
                if (this.c != null) {
                    this.c.onUserClick();
                } else {
                    MoPubLog.d("View's onUserClick() is not registered.");
                }
                this.f4473b.a();
                break;
            case 2:
                if (a(motionEvent, this.f4472a)) {
                    onTouchEvent(motionEvent);
                    break;
                } else {
                    a();
                    break;
                }
        }
    }

    public void setUserClickListener(UserClickListener listener) {
        this.c = listener;
    }

    void a() {
        this.f4473b.b();
    }

    private boolean a(MotionEvent motionEvent, View view) {
        if (motionEvent == null || view == null) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        return x >= 0.0f && x <= ((float) view.getWidth()) && y >= 0.0f && y <= ((float) view.getHeight());
    }
}
