package com.mnt.impl.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.mnt.impl.b.e;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a extends e<Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    private Context f4040a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f4041b;
    private String c;
    private com.mnt.impl.f.a d;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* synthetic */ void a(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        if (this.f4041b != null) {
            this.f4041b.setImageBitmap(bitmap2);
        }
        if (this.d != null) {
            if (bitmap2 != null) {
                this.d.a(null);
            } else {
                this.d.a();
            }
        }
    }

    public a(Context context, String str, com.mnt.impl.f.a aVar) {
        this.f4040a = context;
        this.f4041b = null;
        this.c = str;
        this.d = aVar;
    }

    public a(ImageView imageView, String str) {
        this.f4040a = imageView.getContext();
        this.f4041b = imageView;
        this.c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // com.mnt.impl.b.e
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Bitmap a() {
        InputStream inputStream;
        Bitmap bitmap;
        ?? decodeFile = BitmapFactory.decodeFile(new File(this.f4040a.getCacheDir(), String.format(com.mnt.impl.e.jQ, Integer.valueOf(this.c.hashCode()))).getAbsolutePath());
        try {
            if (decodeFile != 0) {
                return decodeFile;
            }
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.c).openConnection();
                httpURLConnection.setRequestMethod(com.mnt.impl.e.jS);
                httpURLConnection.setConnectTimeout(8000);
                httpURLConnection.setReadTimeout(8000);
                if (httpURLConnection.getResponseCode() == 200) {
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        bitmap = BitmapFactory.decodeStream(inputStream);
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.f4040a.getCacheDir(), String.format(com.mnt.impl.e.jR, Integer.valueOf(this.c.hashCode()))));
                            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (Exception e) {
                        }
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        return null;
                    }
                } else {
                    bitmap = decodeFile;
                    inputStream = null;
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        return bitmap;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        return bitmap;
                    }
                }
                return bitmap;
            } catch (Exception e5) {
                e = e5;
                inputStream = null;
            } catch (Throwable th) {
                th = th;
                decodeFile = 0;
                if (decodeFile != 0) {
                    try {
                        decodeFile.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
