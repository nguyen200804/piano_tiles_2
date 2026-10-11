package com.cmplay.util.crop;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.opengl.GLES10;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.cmplay.tiles4.R;
import com.cmplay.util.crop.ImageViewTouchBase;
import com.cmplay.util.crop.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.CountDownLatch;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CropImageActivity extends d {

    /* renamed from: a, reason: collision with root package name */
    private final Handler f1732a = new Handler();

    /* renamed from: b, reason: collision with root package name */
    private int f1733b;
    private int c;
    private int d;
    private int e;
    private int f;
    private Uri g;
    private Uri h;
    private boolean i;
    private int j;
    private e k;
    private CropImageView l;
    private c m;

    @Override // com.cmplay.util.crop.d
    public /* bridge */ /* synthetic */ void a(d.b bVar) {
        super.a(bVar);
    }

    @Override // com.cmplay.util.crop.d
    public /* bridge */ /* synthetic */ void b(d.b bVar) {
        super.b(bVar);
    }

    @Override // com.cmplay.util.crop.d, android.app.Activity
    public void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_image_crop);
        b();
        c();
        if (this.k == null) {
            finish();
        } else {
            f();
        }
    }

    private void b() {
        this.l = (CropImageView) findViewById(R.id.crop_image);
        this.l.c = this;
        this.l.a(new ImageViewTouchBase.a() { // from class: com.cmplay.util.crop.CropImageActivity.1
            @Override // com.cmplay.util.crop.ImageViewTouchBase.a
            public void a(Bitmap bitmap) {
                bitmap.recycle();
                System.gc();
            }
        });
        findViewById(R.id.btn_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.util.crop.CropImageActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CropImageActivity.this.setResult(0);
                CropImageActivity.this.finish();
            }
        });
        findViewById(R.id.btn_done).setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.util.crop.CropImageActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                CropImageActivity.this.g();
            }
        });
    }

    private void c() {
        InputStream inputStream = null;
        Intent intent = getIntent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.f1733b = extras.getInt("aspect_x");
            this.c = extras.getInt("aspect_y");
            this.d = extras.getInt("max_x");
            this.e = extras.getInt("max_y");
            this.h = (Uri) extras.getParcelable("output");
        }
        this.g = intent.getData();
        if (this.g != null) {
            this.f = b.a(b.a(this, getContentResolver(), this.g));
            try {
                this.j = a(this.g);
                inputStream = getContentResolver().openInputStream(this.g);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = this.j;
                this.k = new e(BitmapFactory.decodeStream(inputStream, null, options), this.f);
            } catch (IOException e) {
                com.cmplay.util.c.c("Error reading image", e.getMessage());
                a(e);
            } catch (OutOfMemoryError e2) {
                com.cmplay.util.c.c("OOM reading image: ", e2.getMessage());
                a(e2);
            } finally {
                b.a(inputStream);
            }
        }
    }

    private int a(Uri uri) throws IOException {
        InputStream inputStream = null;
        int i = 1;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            inputStream = getContentResolver().openInputStream(uri);
            BitmapFactory.decodeStream(inputStream, null, options);
            b.a(inputStream);
            int d = d();
            while (true) {
                if (options.outHeight / i > d || options.outWidth / i > d) {
                    i <<= 1;
                } else {
                    return i;
                }
            }
        } catch (Throwable th) {
            b.a(inputStream);
            throw th;
        }
    }

    private int d() {
        int e = e();
        if (e == 0) {
            return 1024;
        }
        return Math.min(e, 2048);
    }

    private int e() {
        int[] iArr = new int[1];
        GLES10.glGetIntegerv(3379, iArr, 0);
        return iArr[0];
    }

    private void f() {
        if (!isFinishing()) {
            this.l.a(this.k, true);
            b.a(this, null, getResources().getString(R.string.crop__wait), new Runnable() { // from class: com.cmplay.util.crop.CropImageActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    CropImageActivity.this.f1732a.post(new Runnable() { // from class: com.cmplay.util.crop.CropImageActivity.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (CropImageActivity.this.l.c() == 1.0f) {
                                CropImageActivity.this.l.a(true, true);
                            }
                            countDownLatch.countDown();
                        }
                    });
                    try {
                        countDownLatch.await();
                        new a().a();
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
            }, this.f1732a);
        }
    }

    private class a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            int i;
            if (CropImageActivity.this.k != null) {
                c cVar = new c(CropImageActivity.this.l);
                int f = CropImageActivity.this.k.f();
                int e = CropImageActivity.this.k.e();
                Rect rect = new Rect(0, 0, f, e);
                int min = (Math.min(f, e) * 4) / 5;
                if (CropImageActivity.this.f1733b == 0 || CropImageActivity.this.c == 0) {
                    i = min;
                } else if (CropImageActivity.this.f1733b > CropImageActivity.this.c) {
                    i = (CropImageActivity.this.c * min) / CropImageActivity.this.f1733b;
                } else {
                    min = (CropImageActivity.this.f1733b * min) / CropImageActivity.this.c;
                    i = min;
                }
                cVar.a(CropImageActivity.this.l.a(), rect, new RectF((f - min) / 2, (e - i) / 2, min + r4, i + r5), (CropImageActivity.this.f1733b == 0 || CropImageActivity.this.c == 0) ? false : true);
                CropImageActivity.this.l.a(cVar);
            }
        }

        public void a() {
            CropImageActivity.this.f1732a.post(new Runnable() { // from class: com.cmplay.util.crop.CropImageActivity.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.b();
                    CropImageActivity.this.l.invalidate();
                    if (CropImageActivity.this.l.f1746a.size() == 1) {
                        CropImageActivity.this.m = CropImageActivity.this.l.f1746a.get(0);
                        CropImageActivity.this.m.a(true);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.m != null && !this.i) {
            this.i = true;
            Rect a2 = this.m.a(this.j);
            int width = a2.width();
            int height = a2.height();
            if (this.d > 0 && this.e > 0 && (width > this.d || height > this.e)) {
                float f = width / height;
                if (this.d / this.e > f) {
                    height = this.e;
                    width = (int) ((this.e * f) + 0.5f);
                } else {
                    width = this.d;
                    height = (int) ((this.d / f) + 0.5f);
                }
            }
            try {
                Bitmap a3 = a(a2, width, height);
                if (a3 != null) {
                    this.l.a(new e(a3, this.f), true);
                    this.l.a(true, true);
                    this.l.f1746a.clear();
                }
                a(a3);
            } catch (IllegalArgumentException e) {
                a(e);
                finish();
            }
        }
    }

    private void a(final Bitmap bitmap) {
        if (bitmap != null) {
            b.a(this, null, getResources().getString(R.string.crop__saving), new Runnable() { // from class: com.cmplay.util.crop.CropImageActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    CropImageActivity.this.b(bitmap);
                }
            }, this.f1732a);
        } else {
            finish();
        }
    }

    private Bitmap a(Rect rect, int i, int i2) {
        InputStream inputStream;
        InputStream inputStream2;
        OutOfMemoryError e;
        Bitmap bitmap;
        InputStream inputStream3;
        IOException e2;
        int width;
        int height;
        Bitmap bitmap2 = null;
        h();
        try {
            try {
                inputStream2 = getContentResolver().openInputStream(this.g);
                try {
                    BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(inputStream2, false);
                    width = newInstance.getWidth();
                    height = newInstance.getHeight();
                    if (this.f != 0) {
                        Matrix matrix = new Matrix();
                        matrix.setRotate(-this.f);
                        RectF rectF = new RectF();
                        matrix.mapRect(rectF, new RectF(rect));
                        rectF.offset(rectF.left < 0.0f ? width : 0.0f, rectF.top < 0.0f ? height : 0.0f);
                        rect = new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                    }
                    try {
                        bitmap = newInstance.decodeRegion(rect, new BitmapFactory.Options());
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                    }
                } catch (IOException e4) {
                    inputStream3 = inputStream2;
                    e2 = e4;
                    bitmap = null;
                } catch (OutOfMemoryError e5) {
                    bitmap = null;
                    e = e5;
                }
            } catch (Throwable th) {
                th = th;
                b.a(inputStream);
                throw th;
            }
        } catch (IOException e6) {
            inputStream3 = null;
            e2 = e6;
            bitmap = null;
        } catch (OutOfMemoryError e7) {
            inputStream2 = null;
            e = e7;
            bitmap = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
            b.a(inputStream);
            throw th;
        }
        try {
            if (rect.width() > i || rect.height() > i2) {
                Matrix matrix2 = new Matrix();
                if (this.f != 0) {
                    matrix2.setRotate(this.f);
                }
                matrix2.postScale(i / rect.width(), i2 / rect.height());
                bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
            }
            b.a(inputStream2);
        } catch (IOException e8) {
            e2 = e8;
            inputStream3 = inputStream2;
            try {
                com.cmplay.util.c.c("Error cropping image: ", e2.getMessage());
                finish();
                b.a(inputStream3);
                return bitmap;
            } catch (Throwable th3) {
                th = th3;
                inputStream = inputStream3;
                b.a(inputStream);
                throw th;
            }
        } catch (IllegalArgumentException e9) {
            bitmap2 = bitmap;
            e = e9;
            try {
                throw new IllegalArgumentException("Rectangle " + rect + " is outside of the image (" + width + "," + height + "," + this.f + ")", e);
            } catch (IOException e10) {
                inputStream3 = inputStream2;
                Bitmap bitmap3 = bitmap2;
                e2 = e10;
                bitmap = bitmap3;
                com.cmplay.util.c.c("Error cropping image: ", e2.getMessage());
                finish();
                b.a(inputStream3);
                return bitmap;
            } catch (OutOfMemoryError e11) {
                bitmap = bitmap2;
                e = e11;
                com.cmplay.util.c.c("OOM cropping image: ", e.getMessage());
                a(e);
                b.a(inputStream2);
                return bitmap;
            }
        } catch (OutOfMemoryError e12) {
            e = e12;
            com.cmplay.util.c.c("OOM cropping image: ", e.getMessage());
            a(e);
            b.a(inputStream2);
            return bitmap;
        }
        return bitmap;
    }

    private void h() {
        this.l.b();
        if (this.k != null) {
            this.k.g();
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Bitmap bitmap) {
        if (this.h != null) {
            OutputStream outputStream = null;
            try {
                outputStream = getContentResolver().openOutputStream(this.h);
                if (outputStream != null) {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 90, outputStream);
                }
            } catch (IOException e) {
                a(e);
                com.cmplay.util.c.c("Cannot open file: ", this.h.toString());
            } finally {
                b.a(outputStream);
            }
            b.a(b.a(this, getContentResolver(), this.g), b.a(this, getContentResolver(), this.h));
            b(this.h);
        }
        this.f1732a.post(new Runnable() { // from class: com.cmplay.util.crop.CropImageActivity.6
            @Override // java.lang.Runnable
            public void run() {
                CropImageActivity.this.l.b();
                bitmap.recycle();
            }
        });
        finish();
    }

    @Override // com.cmplay.util.crop.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.k != null) {
            this.k.g();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    public boolean a() {
        return this.i;
    }

    private void b(Uri uri) {
        setResult(-1, new Intent().putExtra("output", uri));
    }

    private void a(Throwable th) {
        setResult(404, new Intent().putExtra("error", th));
    }
}
