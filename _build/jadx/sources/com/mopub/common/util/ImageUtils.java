package com.mopub.common.util;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.v4.view.MotionEventCompat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ImageUtils {
    @NonNull
    public static Bitmap applyFastGaussianBlurToBitmap(@NonNull Bitmap mutableBitmap, int radius) {
        int width = mutableBitmap.getWidth();
        int height = mutableBitmap.getHeight();
        int[] iArr = new int[width * height];
        mutableBitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        for (int i = radius; i >= 1; i /= 2) {
            for (int i2 = i; i2 < height - i; i2++) {
                for (int i3 = i; i3 < width - i; i3++) {
                    int i4 = iArr[(((i2 - i) * width) + i3) - i];
                    int i5 = iArr[((i2 - i) * width) + i3 + i];
                    int i6 = iArr[((i2 - i) * width) + i3];
                    int i7 = iArr[(((i2 + i) * width) + i3) - i];
                    int i8 = iArr[((i2 + i) * width) + i3 + i];
                    int i9 = iArr[((i2 + i) * width) + i3];
                    int i10 = iArr[((i2 * width) + i3) - i];
                    int i11 = iArr[(i2 * width) + i3 + i];
                    iArr[(i2 * width) + i3] = ((((((((((i4 & 16711680) + (i5 & 16711680)) + (16711680 & i6)) + (16711680 & i7)) + (16711680 & i8)) + (16711680 & i9)) + (16711680 & i10)) + (16711680 & i11)) >> 3) & 16711680) | (-16777216) | ((((((((((i4 & 255) + (i5 & 255)) + (i6 & 255)) + (i7 & 255)) + (i8 & 255)) + (i9 & 255)) + (i10 & 255)) + (i11 & 255)) >> 3) & 255) | ((((((((((65280 & i4) + (65280 & i5)) + (65280 & i6)) + (65280 & i7)) + (65280 & i8)) + (65280 & i9)) + (65280 & i10)) + (65280 & i11)) >> 3) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
                }
            }
        }
        mutableBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return mutableBitmap;
    }
}
