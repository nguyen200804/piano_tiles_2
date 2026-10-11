package com.jirbo.adcolony;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    static int k;
    static int l;

    /* renamed from: a, reason: collision with root package name */
    Bitmap f3814a;

    /* renamed from: b, reason: collision with root package name */
    Bitmap f3815b;
    Paint c;
    Rect d;
    Rect e;
    int f;
    int g;
    boolean h;
    int i;
    int j;
    boolean m;
    ArrayList<Bitmap> n;

    c(String str) {
        this(str, 1.0d);
    }

    c(String str, boolean z, boolean z2) {
        this(str, 1.0d, z2, z);
    }

    c(String str, boolean z) {
        this(str, 1.0d, z);
    }

    c(String str, double d) {
        this(str, d, false);
    }

    c(String str, double d, boolean z) {
        this(str, d, z, false);
    }

    c(String str, double d, boolean z, boolean z2) {
        this.c = new Paint();
        this.d = new Rect();
        this.e = new Rect();
        this.n = new ArrayList<>();
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            this.f3814a = BitmapFactory.decodeStream(fileInputStream);
            fileInputStream.close();
            this.f3815b = this.f3814a;
            this.f = this.f3814a.getWidth();
            this.g = this.f3814a.getHeight();
            this.i = this.f3814a.getWidth();
            this.j = this.f3814a.getHeight();
            k = this.i;
            l = this.j;
            a(d);
            this.h = true;
            if (z) {
                this.f3814a = a(this.f3814a);
                int[] iArr = new int[this.f3814a.getWidth() * this.f3814a.getHeight()];
                this.f3814a.getPixels(iArr, 0, this.f3814a.getWidth(), 0, 0, this.f3814a.getWidth(), this.f3814a.getHeight());
                for (int i = 0; i < iArr.length; i++) {
                    if (iArr[i] < 255 && iArr[i] != 0) {
                        iArr[i] = ((iArr[i] >> 1) & 8355711) | (-16777216);
                    }
                }
                this.f3814a.setPixels(iArr, 0, this.f3814a.getWidth(), 0, 0, this.f3814a.getWidth(), this.f3814a.getHeight());
                this.f3815b = this.f3814a;
            }
            if (!z2) {
                t.ab.add(this.f3814a);
                this.n.add(this.f3814a);
            }
        } catch (Exception e) {
            e.printStackTrace();
            t.d("Failed to load image " + str);
            this.m = true;
        }
    }

    void a(int i, int i2) {
        if (this.f3814a != null) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f3815b, 0, 0, this.i / 3, this.j);
            Bitmap createBitmap2 = Bitmap.createBitmap(this.f3815b, (this.i * 2) / 3, 0, this.i / 3, this.j);
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(Bitmap.createBitmap(this.f3815b, this.i / 3, 0, this.i / 3, this.j), i, this.j, false);
            int[] iArr = new int[(this.i / 3) * this.j];
            int[] iArr2 = new int[(this.i / 3) * this.j];
            createBitmap.getPixels(iArr, 0, this.i / 3, 0, 0, this.i / 3, this.j);
            createBitmap2.getPixels(iArr2, 0, this.i / 3, 0, 0, this.i / 3, this.j);
            createScaledBitmap.getPixels(new int[createScaledBitmap.getWidth() * createScaledBitmap.getHeight()], 0, createScaledBitmap.getWidth(), 0, 0, createScaledBitmap.getWidth(), createScaledBitmap.getHeight());
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i6 < createScaledBitmap.getHeight()) {
                if (i5 < this.i / 3) {
                    if (i4 < iArr.length) {
                        createScaledBitmap.setPixel(i5, i6, iArr[i4]);
                    }
                    i4++;
                } else if (i5 >= createScaledBitmap.getWidth() - (this.i / 3)) {
                    if (i3 < iArr2.length) {
                        createScaledBitmap.setPixel(i5, i6, iArr2[i3]);
                    }
                    i3++;
                }
                i5++;
                if (i5 == createScaledBitmap.getWidth()) {
                    i6++;
                    i5 = 0;
                }
            }
            this.f3814a = createScaledBitmap;
            this.f3815b = this.f3814a;
            this.f = this.f3814a.getWidth();
            this.g = this.f3814a.getHeight();
            this.i = this.f;
            this.j = this.g;
            this.d.right = this.f;
            this.d.bottom = this.g;
        }
    }

    void b(int i, int i2) {
        if (this.f3814a != null && !this.f3814a.isRecycled()) {
            if (i != this.f || i2 != this.g) {
                this.f3814a = Bitmap.createScaledBitmap(this.f3815b, i, i2, true);
                this.f = i;
                this.g = i2;
                this.d.right = i;
                this.d.bottom = i2;
                t.ab.add(this.f3814a);
                this.n.add(this.f3814a);
            }
        }
    }

    void a(double d) {
        a(d, false);
    }

    void a(double d, boolean z) {
        if (this.f3814a != null && !this.f3814a.isRecycled()) {
            if (d != 1.0d) {
                int width = (int) (this.f3815b.getWidth() * d);
                int height = (int) (this.f3815b.getHeight() * d);
                if (width != this.f || height != this.g) {
                    this.f = width;
                    this.g = height;
                    this.f3814a = Bitmap.createScaledBitmap(this.f3815b, this.f, this.g, true);
                    if (!z) {
                        t.ab.add(this.f3814a);
                        this.n.add(this.f3814a);
                    }
                }
                if (z) {
                    this.f3815b.recycle();
                    this.f3815b = null;
                }
            }
            this.d.right = this.f;
            this.d.bottom = this.g;
        }
    }

    void a() {
        Iterator<Bitmap> it = this.n.iterator();
        while (it.hasNext()) {
            it.next().recycle();
        }
        this.n.clear();
    }

    void c(int i, int i2) {
        this.e.left = i;
        this.e.top = i2;
        this.e.right = this.f + i;
        this.e.bottom = this.g + i2;
    }

    int b() {
        return this.e.left;
    }

    int c() {
        return this.e.top;
    }

    void d(int i, int i2) {
        c((i - this.f) / 2, (i2 - this.g) / 2);
    }

    void a(Canvas canvas, int i, int i2) {
        c(i, i2);
        a(canvas);
    }

    void a(Canvas canvas) {
        if (this.f3814a != null && !this.f3814a.isRecycled()) {
            canvas.drawBitmap(this.f3814a, this.d, this.e, this.c);
        }
    }

    public static Bitmap a(Bitmap bitmap) {
        Exception exc;
        Bitmap bitmap2;
        File file;
        RandomAccessFile randomAccessFile;
        FileChannel channel;
        MappedByteBuffer map;
        Bitmap createBitmap;
        try {
            file = new File(Environment.getExternalStorageDirectory() + File.separator + "temp.tmp");
            randomAccessFile = new RandomAccessFile(file, "rw");
            int i = k;
            int i2 = l;
            Bitmap.Config config = bitmap.getConfig();
            channel = randomAccessFile.getChannel();
            map = channel.map(FileChannel.MapMode.READ_WRITE, 0L, bitmap.getRowBytes() * i2);
            bitmap.copyPixelsToBuffer(map);
            createBitmap = Bitmap.createBitmap(i, i2, config);
        } catch (Exception e) {
            exc = e;
            bitmap2 = bitmap;
        }
        try {
            map.position(0);
            createBitmap.copyPixelsFromBuffer(map);
            channel.close();
            randomAccessFile.close();
            file.delete();
            return createBitmap;
        } catch (Exception e2) {
            bitmap2 = createBitmap;
            exc = e2;
            exc.printStackTrace();
            return bitmap2;
        }
    }
}
