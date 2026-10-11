package com.cmplay.base.util.gif;

import android.content.Context;
import android.net.Uri;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.cmplay.base.util.gif.GifViewUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GifImageView extends ImageView {
    private boolean mFreezesAnimation;

    public GifImageView(Context context) {
        super(context);
    }

    public GifImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        postInit(GifViewUtils.initImageView(this, attrs, 0, 0));
    }

    public GifImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        postInit(GifViewUtils.initImageView(this, attrs, defStyle, 0));
    }

    @RequiresApi(MotionEventCompat.AXIS_WHEEL)
    public GifImageView(Context context, AttributeSet attrs, int defStyle, int defStyleRes) {
        super(context, attrs, defStyle, defStyleRes);
        postInit(GifViewUtils.initImageView(this, attrs, defStyle, defStyleRes));
    }

    private void postInit(GifViewUtils.InitResult result) {
        this.mFreezesAnimation = result.mFreezesAnimation;
        if (result.mSourceResId > 0) {
            super.setImageResource(result.mSourceResId);
        }
        if (result.mBackgroundResId > 0) {
            super.setBackgroundResource(result.mBackgroundResId);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        if (!GifViewUtils.setGifImageUri(this, uri)) {
            super.setImageURI(uri);
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int resId) {
        if (!GifViewUtils.setResource(this, true, resId)) {
            super.setImageResource(resId);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int resId) {
        if (!GifViewUtils.setResource(this, false, resId)) {
            super.setBackgroundResource(resId);
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        return new GifViewSavedState(super.onSaveInstanceState(), this.mFreezesAnimation ? getDrawable() : null, this.mFreezesAnimation ? getBackground() : null);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) state;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        gifViewSavedState.restoreState(getDrawable(), 0);
        gifViewSavedState.restoreState(getBackground(), 1);
    }

    public void setFreezesAnimation(boolean freezesAnimation) {
        this.mFreezesAnimation = freezesAnimation;
    }
}
