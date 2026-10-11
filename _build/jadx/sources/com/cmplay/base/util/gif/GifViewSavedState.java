package com.cmplay.base.util.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class GifViewSavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<GifViewSavedState> CREATOR = new Parcelable.Creator<GifViewSavedState>() { // from class: com.cmplay.base.util.gif.GifViewSavedState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GifViewSavedState createFromParcel(Parcel in) {
            return new GifViewSavedState(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GifViewSavedState[] newArray(int size) {
            return new GifViewSavedState[size];
        }
    };
    final long[][] mStates;

    GifViewSavedState(Parcelable superState, Drawable... drawables) {
        super(superState);
        this.mStates = new long[drawables.length][];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < drawables.length) {
                Drawable drawable = drawables[i2];
                if (drawable instanceof GifDrawable) {
                    this.mStates[i2] = ((GifDrawable) drawable).mNativeInfoHandle.getSavedState();
                } else {
                    this.mStates[i2] = null;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private GifViewSavedState(Parcel in) {
        super(in);
        this.mStates = new long[in.readInt()][];
        for (int i = 0; i < this.mStates.length; i++) {
            this.mStates[i] = in.createLongArray();
        }
    }

    GifViewSavedState(Parcelable superState, long[] savedState) {
        super(superState);
        this.mStates = new long[1][];
        this.mStates[0] = savedState;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mStates.length);
        for (long[] jArr : this.mStates) {
            dest.writeLongArray(jArr);
        }
    }

    void restoreState(Drawable drawable, int i) {
        if (this.mStates[i] != null && (drawable instanceof GifDrawable)) {
            ((GifDrawable) drawable).startAnimation(r4.mNativeInfoHandle.restoreSavedState(this.mStates[i], r4.mBuffer));
        }
    }
}
