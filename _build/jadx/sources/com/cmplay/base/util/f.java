package com.cmplay.base.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;

/* compiled from: BitmapUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {
    public static Bitmap a(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = a(options.outWidth, options.outHeight, i, i2);
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
        g.a("BitmapResize", "BitmapUtil.decodeBitmap  maxDisplayWidth:" + i + "  maxDisplayHeight:" + i2 + " op.outWidth:" + options.outWidth + "  op.outHeight:" + options.outHeight + "  op.inSampleSize:" + options.inSampleSize + "  bmp.getWidth():" + decodeFile.getWidth() + "  bmp.getHeight():" + decodeFile.getHeight());
        return decodeFile;
    }

    public static Bitmap a(byte[] bArr, int i, int i2) {
        Bitmap decodeByteArray;
        boolean z;
        float f;
        float f2 = 1.0f;
        g.a("BitmapResize", "BitmapUtil.decodeBitmap  ################ maxDisplayWidth:" + i + "  maxDisplayHeight:" + i2);
        if (bArr != null && (decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length)) != null) {
            g.a("BitmapResize", "BitmapUtil.decodeBitmap  before zoomImg  tempBitmap.getWidth():" + decodeByteArray.getWidth() + "  tempBitmap.getHeight():" + decodeByteArray.getHeight());
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            if (width > i) {
                f = i / width;
                z = true;
            } else {
                z = false;
                f = 1.0f;
            }
            if (height > i2) {
                f2 = i2 / height;
                z = true;
            }
            if (z) {
                float f3 = f > f2 ? f2 : f;
                g.a("BitmapResize", "BitmapUtil.decodeBitmap zoomImg   wScale:" + f + "  hScale:" + f2 + "  scale:" + f3);
                Matrix matrix = new Matrix();
                matrix.postScale(f3, f3);
                Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray, 0, 0, width, height, matrix, true);
                g.a("BitmapResize", "BitmapUtil.decodeBitmap  after zoomImg  newBmp.getWidth():" + createBitmap.getWidth() + "  newBmp.getHeight():" + createBitmap.getHeight());
                decodeByteArray.recycle();
                return createBitmap;
            }
            return decodeByteArray;
        }
        return null;
    }

    public static int a(int i, int i2, int i3, int i4) {
        int ceil = (int) Math.ceil(i / i3);
        int ceil2 = (int) Math.ceil(i2 / i4);
        if (ceil <= 1 || ceil2 <= 1) {
            return 1;
        }
        return ceil > ceil2 ? ceil : ceil2;
    }

    public static String a(byte[] bArr) {
        if (bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71) {
            return "PNG";
        }
        if (bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70) {
            return "GIF";
        }
        if (bArr[6] != 74 || bArr[7] != 70 || bArr[8] != 73 || bArr[9] != 70) {
            return null;
        }
        return "JPG";
    }
}
