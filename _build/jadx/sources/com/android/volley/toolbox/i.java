package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.volley.l;
import com.android.volley.n;
import com.android.volley.p;
import com.android.volley.t;

/* compiled from: ImageRequest.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends l<Bitmap> {
    private static final Object f = new Object();

    /* renamed from: a, reason: collision with root package name */
    private final n.b<Bitmap> f292a;

    /* renamed from: b, reason: collision with root package name */
    private final Bitmap.Config f293b;
    private final int c;
    private final int d;
    private ImageView.ScaleType e;

    public i(String str, n.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, n.a aVar) {
        super(0, str, aVar);
        a((p) new com.android.volley.d(1000, 2, 2.0f));
        this.f292a = bVar;
        this.f293b = config;
        this.c = i;
        this.d = i2;
        this.e = scaleType;
    }

    @Override // com.android.volley.l
    public l.a r() {
        return l.a.LOW;
    }

    private static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) ((i2 / i4) * i3);
        }
        if (i2 != 0) {
            double d = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                if (i * d < i2) {
                    return (int) (i2 / d);
                }
                return i;
            }
            if (i * d > i2) {
                return (int) (i2 / d);
            }
            return i;
        }
        return i;
    }

    @Override // com.android.volley.l
    protected n<Bitmap> a(com.android.volley.i iVar) {
        n<Bitmap> a2;
        synchronized (f) {
            try {
                a2 = b(iVar);
            } catch (OutOfMemoryError e) {
                t.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(iVar.f244b.length), c());
                a2 = n.a(new com.android.volley.k(e));
            }
        }
        return a2;
    }

    private n<Bitmap> b(com.android.volley.i iVar) {
        Bitmap bitmap;
        byte[] bArr = iVar.f244b;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.c == 0 && this.d == 0) {
            options.inPreferredConfig = this.f293b;
            bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int a2 = a(this.c, this.d, i, i2, this.e);
            int a3 = a(this.d, this.c, i2, i, this.e);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i, i2, a2, a3);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray == null || (decodeByteArray.getWidth() <= a2 && decodeByteArray.getHeight() <= a3)) {
                bitmap = decodeByteArray;
            } else {
                bitmap = Bitmap.createScaledBitmap(decodeByteArray, a2, a3, true);
                decodeByteArray.recycle();
            }
        }
        if (bitmap == null) {
            return n.a(new com.android.volley.k(iVar));
        }
        return n.a(bitmap, e.a(iVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.l
    public void a(Bitmap bitmap) {
        this.f292a.a(bitmap);
    }

    static int a(int i, int i2, int i3, int i4) {
        float f2 = 1.0f;
        while (f2 * 2.0f <= Math.min(i / i3, i2 / i4)) {
            f2 *= 2.0f;
        }
        return (int) f2;
    }
}
