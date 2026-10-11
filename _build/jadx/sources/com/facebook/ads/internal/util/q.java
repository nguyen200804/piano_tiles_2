package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q extends AsyncTask<String, Void, Bitmap[]> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2903a = q.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final WeakReference<Context> f2904b;
    private final WeakReference<ImageView> c;
    private final WeakReference<com.facebook.ads.internal.view.e> d;
    private r e;

    public q(ImageView imageView) {
        this.f2904b = new WeakReference<>(imageView.getContext());
        this.d = null;
        this.c = new WeakReference<>(imageView);
    }

    public q(com.facebook.ads.internal.view.e eVar) {
        this.f2904b = new WeakReference<>(eVar.getContext());
        this.d = new WeakReference<>(eVar);
        this.c = null;
    }

    public q a(r rVar) {
        this.e = rVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Bitmap[] bitmapArr) {
        com.facebook.ads.internal.view.e eVar;
        ImageView imageView;
        if (this.c != null && (imageView = this.c.get()) != null) {
            imageView.setImageBitmap(bitmapArr[0]);
        }
        if (this.d != null && (eVar = this.d.get()) != null) {
            eVar.a(bitmapArr[0], bitmapArr[1]);
        }
        if (this.e != null) {
            this.e.a();
        }
    }

    public void a(String... strArr) {
        executeOnExecutor(THREAD_POOL_EXECUTOR, strArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public Bitmap[] doInBackground(String... strArr) {
        Throwable th;
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        String str = strArr[0];
        Context context = this.f2904b.get();
        if (context == null) {
            return new Bitmap[]{null, null};
        }
        try {
            bitmap = com.facebook.ads.internal.c.c.a(context).a(str);
            try {
            } catch (Throwable th2) {
                th = th2;
                bitmap2 = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bitmap = null;
            bitmap2 = null;
        }
        if (this.d != null) {
            if (this.d.get() != null && bitmap != null) {
                try {
                    ae aeVar = new ae(bitmap);
                    aeVar.a(Math.round(bitmap.getWidth() / 40.0f));
                    bitmap2 = aeVar.a();
                    bitmap3 = bitmap;
                } catch (Throwable th4) {
                    th = th4;
                    bitmap2 = bitmap;
                    Log.e(f2903a, "Error downloading image: " + str, th);
                    c.a(b.a(th, null));
                    bitmap3 = bitmap;
                    return new Bitmap[]{bitmap3, bitmap2};
                }
                return new Bitmap[]{bitmap3, bitmap2};
            }
        }
        bitmap2 = null;
        bitmap3 = bitmap;
        return new Bitmap[]{bitmap3, bitmap2};
    }
}
