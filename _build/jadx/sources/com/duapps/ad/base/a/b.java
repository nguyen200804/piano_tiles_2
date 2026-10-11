package com.duapps.ad.base.a;

import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.duapps.ad.base.h;
import com.mopub.common.Constants;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Pattern;

/* compiled from: ImageDownloader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2021a = Environment.getExternalStorageDirectory().getPath() + "/duapps/";

    /* renamed from: b, reason: collision with root package name */
    public static final String f2022b = f2021a + "img_download/";
    private static b e = null;
    private static final HashMap<String, Bitmap> f = new LinkedHashMap<String, Bitmap>(5, 0.75f, true) { // from class: com.duapps.ad.base.a.b.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Bitmap> entry) {
            if (size() <= 10) {
                return false;
            }
            b.g.put(entry.getKey(), new SoftReference(entry.getValue()));
            return true;
        }
    };
    private static final ConcurrentHashMap<String, SoftReference<Bitmap>> g = new ConcurrentHashMap<>(5);
    private final Handler h = new Handler();
    private final Runnable i = new Runnable() { // from class: com.duapps.ad.base.a.b.2
        @Override // java.lang.Runnable
        public void run() {
            b.this.b();
        }
    };
    private com.duapps.ad.base.a.c j = new com.duapps.ad.base.a.c() { // from class: com.duapps.ad.base.a.b.3
        @Override // com.duapps.ad.base.a.c
        public void a(String str, View view) {
        }

        @Override // com.duapps.ad.base.a.c
        public void a(String str, View view, int i) {
        }

        @Override // com.duapps.ad.base.a.c
        public void a(String str, View view, Bitmap bitmap) {
        }
    };
    private Thread c = Thread.currentThread();
    private String d = f2022b;

    private b() {
    }

    public static b a() {
        if (e == null) {
            synchronized (b.class) {
                if (e == null) {
                    e = new b();
                }
            }
        }
        return e;
    }

    public void a(String str, ImageView imageView) {
        a(str, imageView, this.j);
    }

    public void a(String str, ImageView imageView, com.duapps.ad.base.a.c cVar) {
        boolean z = true;
        h.c("ImageDownloader", "get image for " + imageView + ", with url : " + str);
        if (cVar == null) {
            cVar = this.j;
        }
        cVar.a(str, imageView);
        if (TextUtils.isEmpty(str)) {
            h.c("ImageDownloader", "The url is illegal.");
            cVar.a(str, imageView, 2);
            return;
        }
        if (imageView == null) {
            h.c("ImageDownloader", "The ImageView is illegal.");
            cVar.a(str, imageView, 3);
            return;
        }
        if (Build.VERSION.SDK_INT < 11) {
            h.c("ImageDownloader", "The sdk version is less than 11, and we don't support downloading pictures at this level.");
            cVar.a(str, imageView, 1);
            return;
        }
        d();
        Bitmap a2 = a(str);
        if (a2 == null) {
            String b2 = b(str);
            if (d.a(this.d, b2)) {
                a2 = d.a(this.d + b2);
                if (a2 == null) {
                    d.b(this.d, b2);
                } else {
                    z = false;
                }
            }
            if (z) {
                b(str, imageView, cVar);
                return;
            }
            a(str, a2);
            imageView.setImageBitmap(a2);
            imageView.setBackgroundResource(R.color.transparent);
            imageView.setVisibility(0);
            cVar.a(str, imageView, a2);
            return;
        }
        imageView.setImageBitmap(a2);
        imageView.setBackgroundResource(R.color.transparent);
        imageView.setVisibility(0);
        cVar.a(str, imageView, a2);
    }

    private void b(String str, ImageView imageView, com.duapps.ad.base.a.c cVar) {
        a aVar;
        if (b(str, imageView)) {
            try {
                aVar = new a(imageView, cVar);
            } catch (Throwable th) {
                h.a("ImageDownloader", "Some bad things happened when create AsyncTask", th);
                aVar = null;
            }
            if (aVar == null) {
                cVar.a(str, imageView, 5);
                return;
            }
            C0057b c0057b = new C0057b(null, aVar);
            if (imageView != null) {
                imageView.setImageDrawable(c0057b);
            }
            ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) AsyncTask.THREAD_POOL_EXECUTOR;
            threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardOldestPolicy());
            aVar.executeOnExecutor(threadPoolExecutor, str);
            return;
        }
        cVar.a(str, imageView, 4);
    }

    private static boolean b(String str, ImageView imageView) {
        a b2 = b(imageView);
        if (b2 == null) {
            return true;
        }
        String str2 = b2.f2026b;
        if (str2 == null || !str2.equals(str)) {
            b2.cancel(true);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a b(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof C0057b) {
                return ((C0057b) drawable).a();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(String str, com.duapps.ad.base.a.c cVar) {
        InputStream inputStream;
        Bitmap decodeStream;
        InputStream inputStream2 = null;
        if (str == null) {
            return null;
        }
        try {
            if ("".equals(str)) {
                return null;
            }
            try {
                URLConnection openConnection = new URL(str).openConnection();
                openConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
                openConnection.setReadTimeout(Constants.TEN_SECONDS_MILLIS);
                openConnection.connect();
                inputStream = openConnection.getInputStream();
                try {
                    String b2 = b(str);
                    if (openConnection.getURL() != null && openConnection.getURL().toString().endsWith("dashi_default_head_middle.gif")) {
                        if (inputStream == null) {
                            return null;
                        }
                        try {
                            inputStream.close();
                            return null;
                        } catch (IOException e2) {
                            return null;
                        } catch (NumberFormatException e3) {
                            h.a("ImageDownloader", "Unexpected exeption!", e3);
                            return null;
                        }
                    }
                    long lastModified = openConnection.getLastModified();
                    if (inputStream == null || (decodeStream = BitmapFactory.decodeStream(new c(inputStream))) == null) {
                        if (inputStream == null) {
                            return null;
                        }
                        try {
                            inputStream.close();
                            return null;
                        } catch (IOException e4) {
                            return null;
                        } catch (NumberFormatException e5) {
                            h.a("ImageDownloader", "Unexpected exeption!", e5);
                            return null;
                        }
                    }
                    if (b2 != null) {
                        h.c("ImageDownloader", "try to save bitmap, url : " + str + ", mDownloadPath : " + this.d + ", path : " + b2 + ", lastModityTime  : " + lastModified);
                        d.a(this.d, b2, decodeStream, lastModified);
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e6) {
                        } catch (NumberFormatException e7) {
                            h.a("ImageDownloader", "Unexpected exeption!", e7);
                        }
                    }
                    return decodeStream;
                } catch (MalformedURLException e8) {
                    e = e8;
                    h.a("ImageDownloader", "Bad URL: " + str, e);
                    if (inputStream == null) {
                        return null;
                    }
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e9) {
                        return null;
                    } catch (NumberFormatException e10) {
                        h.a("ImageDownloader", "Unexpected exeption!", e10);
                        return null;
                    }
                } catch (IOException e11) {
                    if (inputStream == null) {
                        return null;
                    }
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e12) {
                        return null;
                    } catch (NumberFormatException e13) {
                        h.a("ImageDownloader", "Unexpected exeption!", e13);
                        return null;
                    }
                } catch (SecurityException e14) {
                    if (inputStream == null) {
                        return null;
                    }
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e15) {
                        return null;
                    } catch (NumberFormatException e16) {
                        h.a("ImageDownloader", "Unexpected exeption!", e16);
                        return null;
                    }
                }
            } catch (MalformedURLException e17) {
                e = e17;
                inputStream = null;
            } catch (IOException e18) {
                inputStream = null;
            } catch (SecurityException e19) {
                inputStream = null;
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        inputStream2.close();
                    } catch (IOException e20) {
                    } catch (NumberFormatException e21) {
                        h.a("ImageDownloader", "Unexpected exeption!", e21);
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* compiled from: ImageDownloader.java */
    public static class c extends FilterInputStream {
        public c(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) {
            long j2 = 0;
            while (j2 < j) {
                long skip = this.in.skip(j - j2);
                if (skip == 0) {
                    if (read() < 0) {
                        break;
                    }
                    skip = 1;
                }
                j2 = skip + j2;
            }
            return j2;
        }
    }

    /* compiled from: ImageDownloader.java */
    class a extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: b, reason: collision with root package name */
        private String f2026b;
        private final WeakReference<ImageView> c;
        private com.duapps.ad.base.a.c d;

        public a(ImageView imageView, com.duapps.ad.base.a.c cVar) {
            this.c = new WeakReference<>(imageView);
            this.d = cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(String... strArr) {
            this.f2026b = strArr[0];
            return b.this.a(this.f2026b, this.d);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            a b2;
            if (isCancelled()) {
                bitmap = null;
            }
            b.this.a(this.f2026b, bitmap);
            ImageView imageView = this.c != null ? this.c.get() : null;
            if (bitmap != null) {
                this.d.a(this.f2026b, imageView, bitmap);
            } else {
                this.d.a(this.f2026b, imageView, 6);
            }
            if (imageView != null && (b2 = b.b(imageView)) != null && this == b2 && b.this.c != null && b.this.c == Thread.currentThread() && bitmap != null) {
                imageView.setImageBitmap(bitmap);
                imageView.setBackgroundResource(R.color.transparent);
                imageView.setVisibility(0);
            }
        }
    }

    /* compiled from: ImageDownloader.java */
    /* renamed from: com.duapps.ad.base.a.b$b, reason: collision with other inner class name */
    static class C0057b extends BitmapDrawable {

        /* renamed from: a, reason: collision with root package name */
        private final WeakReference<a> f2027a;

        public C0057b(Bitmap bitmap, a aVar) {
            super(bitmap);
            this.f2027a = new WeakReference<>(aVar);
        }

        public a a() {
            return this.f2027a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Bitmap bitmap) {
        if (bitmap != null) {
            synchronized (f) {
                f.put(str, bitmap);
            }
        }
    }

    public static Bitmap a(String str) {
        synchronized (f) {
            Bitmap bitmap = f.get(str);
            if (bitmap != null) {
                f.remove(str);
                f.put(str, bitmap);
                return bitmap;
            }
            SoftReference<Bitmap> softReference = g.get(str);
            if (softReference != null) {
                Bitmap bitmap2 = softReference.get();
                if (bitmap2 == null) {
                    g.remove(str);
                } else {
                    return bitmap2;
                }
            }
            return null;
        }
    }

    public void b() {
        f.clear();
        g.clear();
    }

    private void d() {
        this.h.removeCallbacks(this.i);
        this.h.postDelayed(this.i, 10000L);
    }

    public static String b(String str) {
        return Pattern.compile("[^a-zA-Z0-9]").matcher(str).replaceAll("").trim();
    }
}
