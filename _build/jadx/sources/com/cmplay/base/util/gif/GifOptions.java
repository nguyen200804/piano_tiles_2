package com.cmplay.base.util.gif;

import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import com.cmplay.base.util.gif.annotations.Beta;

@Beta
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GifOptions {
    boolean inIsOpaque;
    char inSampleSize;

    public GifOptions() {
        reset();
    }

    private void reset() {
        this.inSampleSize = (char) 1;
        this.inIsOpaque = false;
    }

    public void setInSampleSize(@IntRange(from = 1, to = 65535) int inSampleSize) {
        if (inSampleSize < 1 || inSampleSize > 65535) {
            this.inSampleSize = (char) 1;
        } else {
            this.inSampleSize = (char) inSampleSize;
        }
    }

    public void setInIsOpaque(boolean inIsOpaque) {
        this.inIsOpaque = inIsOpaque;
    }

    void setFrom(@Nullable GifOptions source) {
        if (source == null) {
            reset();
        } else {
            this.inIsOpaque = source.inIsOpaque;
            this.inSampleSize = source.inSampleSize;
        }
    }
}
