package com.cmplay.base.util.webview.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ViewAnimator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MsgBoxViewAnimator extends ViewAnimator {
    public MsgBoxViewAnimator(Context context) {
        this(context, null);
    }

    public MsgBoxViewAnimator(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public void onDetachInFragment() {
        onDetachedFromWindow();
    }
}
