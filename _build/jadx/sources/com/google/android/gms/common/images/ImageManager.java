package com.google.android.gms.common.images;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.util.LruCache;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.images.zza;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzrc;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ImageManager {
    private static final Object wr = new Object();
    private static HashSet<Uri> ws = new HashSet<>();
    private static ImageManager wt;
    private static ImageManager wu;
    private final Context mContext;
    private final Map<Uri, Long> wA;
    private final zzb ww;
    private final zzrc wx;
    private final Map<com.google.android.gms.common.images.zza, ImageReceiver> wy;
    private final Map<Uri, ImageReceiver> wz;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService wv = Executors.newFixedThreadPool(4);

    @KeepName
    private final class ImageReceiver extends ResultReceiver {
        private final Uri mUri;
        private final ArrayList<com.google.android.gms.common.images.zza> wB;

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.mUri = uri;
            this.wB = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.wv.execute(ImageManager.this.new zzc(this.mUri, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public void zzarp() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.mContext.sendBroadcast(intent);
        }

        public void zzb(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzhi("ImageReceiver.addImageRequest() must be called in the main thread");
            this.wB.add(zzaVar);
        }

        public void zzc(com.google.android.gms.common.images.zza zzaVar) {
            com.google.android.gms.common.internal.zzb.zzhi("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.wB.remove(zzaVar);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    @TargetApi(11)
    private static final class zza {
        static int zza(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    private static final class zzb extends LruCache<zza.C0128zza, Bitmap> {
        public zzb(Context context) {
            super(zzcc(context));
        }

        @TargetApi(11)
        private static int zzcc(Context context) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            return (int) (((((context.getApplicationInfo().flags & 1048576) != 0) && zzs.zzavn()) ? zza.zza(activityManager) : activityManager.getMemoryClass()) * 1048576 * 0.33f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.util.LruCache
        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
        public int sizeOf(zza.C0128zza c0128zza, Bitmap bitmap) {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.util.LruCache
        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z, zza.C0128zza c0128zza, Bitmap bitmap, Bitmap bitmap2) {
            super.entryRemoved(z, c0128zza, bitmap, bitmap2);
        }
    }

    private final class zzc implements Runnable {
        private final Uri mUri;
        private final ParcelFileDescriptor wD;

        public zzc(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.mUri = uri;
            this.wD = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzhj("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            boolean z = false;
            Bitmap bitmap = null;
            if (this.wD != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(this.wD.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.mUri);
                    Log.e("ImageManager", new StringBuilder(String.valueOf(valueOf).length() + 34).append("OOM while loading bitmap for uri: ").append(valueOf).toString(), e);
                    z = true;
                }
                try {
                    this.wD.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.mHandler.post(ImageManager.this.new zzf(this.mUri, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.mUri);
                Log.w("ImageManager", new StringBuilder(String.valueOf(valueOf2).length() + 32).append("Latch interrupted while posting ").append(valueOf2).toString());
            }
        }
    }

    private final class zzd implements Runnable {
        private final com.google.android.gms.common.images.zza wE;

        public zzd(com.google.android.gms.common.images.zza zzaVar) {
            this.wE = zzaVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzhi("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.wy.get(this.wE);
            if (imageReceiver != null) {
                ImageManager.this.wy.remove(this.wE);
                imageReceiver.zzc(this.wE);
            }
            zza.C0128zza c0128zza = this.wE.wG;
            if (c0128zza.uri == null) {
                this.wE.zza(ImageManager.this.mContext, ImageManager.this.wx, true);
                return;
            }
            Bitmap zza = ImageManager.this.zza(c0128zza);
            if (zza != null) {
                this.wE.zza(ImageManager.this.mContext, zza, true);
                return;
            }
            Long l = (Long) ImageManager.this.wA.get(c0128zza.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    this.wE.zza(ImageManager.this.mContext, ImageManager.this.wx, true);
                    return;
                }
                ImageManager.this.wA.remove(c0128zza.uri);
            }
            this.wE.zza(ImageManager.this.mContext, ImageManager.this.wx);
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.wz.get(c0128zza.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = ImageManager.this.new ImageReceiver(c0128zza.uri);
                ImageManager.this.wz.put(c0128zza.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.wE);
            if (!(this.wE instanceof zza.zzc)) {
                ImageManager.this.wy.put(this.wE, imageReceiver2);
            }
            synchronized (ImageManager.wr) {
                if (!ImageManager.ws.contains(c0128zza.uri)) {
                    ImageManager.ws.add(c0128zza.uri);
                    imageReceiver2.zzarp();
                }
            }
        }
    }

    @TargetApi(14)
    private static final class zze implements ComponentCallbacks2 {
        private final zzb ww;

        public zze(zzb zzbVar) {
            this.ww = zzbVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.ww.evictAll();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i >= 60) {
                this.ww.evictAll();
            } else if (i >= 20) {
                this.ww.trimToSize(this.ww.size() / 2);
            }
        }
    }

    private final class zzf implements Runnable {
        private final Bitmap mBitmap;
        private final Uri mUri;
        private boolean wF;
        private final CountDownLatch zzale;

        public zzf(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.mUri = uri;
            this.mBitmap = bitmap;
            this.wF = z;
            this.zzale = countDownLatch;
        }

        private void zza(ImageReceiver imageReceiver, boolean z) {
            ArrayList arrayList = imageReceiver.wB;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                com.google.android.gms.common.images.zza zzaVar = (com.google.android.gms.common.images.zza) arrayList.get(i);
                if (z) {
                    zzaVar.zza(ImageManager.this.mContext, this.mBitmap, false);
                } else {
                    ImageManager.this.wA.put(this.mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    zzaVar.zza(ImageManager.this.mContext, ImageManager.this.wx, false);
                }
                if (!(zzaVar instanceof zza.zzc)) {
                    ImageManager.this.wy.remove(zzaVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzb.zzhi("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.mBitmap != null;
            if (ImageManager.this.ww != null) {
                if (this.wF) {
                    ImageManager.this.ww.evictAll();
                    System.gc();
                    this.wF = false;
                    ImageManager.this.mHandler.post(this);
                    return;
                }
                if (z) {
                    ImageManager.this.ww.put(new zza.C0128zza(this.mUri), this.mBitmap);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.wz.remove(this.mUri);
            if (imageReceiver != null) {
                zza(imageReceiver, z);
            }
            this.zzale.countDown();
            synchronized (ImageManager.wr) {
                ImageManager.ws.remove(this.mUri);
            }
        }
    }

    private ImageManager(Context context, boolean z) {
        this.mContext = context.getApplicationContext();
        if (z) {
            this.ww = new zzb(this.mContext);
            if (zzs.zzavq()) {
                zzarn();
            }
        } else {
            this.ww = null;
        }
        this.wx = new zzrc();
        this.wy = new HashMap();
        this.wz = new HashMap();
        this.wA = new HashMap();
    }

    public static ImageManager create(Context context) {
        return zzg(context, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap zza(zza.C0128zza c0128zza) {
        if (this.ww == null) {
            return null;
        }
        return this.ww.get(c0128zza);
    }

    @TargetApi(14)
    private void zzarn() {
        this.mContext.registerComponentCallbacks(new zze(this.ww));
    }

    public static ImageManager zzg(Context context, boolean z) {
        if (z) {
            if (wu == null) {
                wu = new ImageManager(context, true);
            }
            return wu;
        }
        if (wt == null) {
            wt = new ImageManager(context, false);
        }
        return wt;
    }

    public void loadImage(ImageView imageView, int i) {
        zza(new zza.zzb(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zza(new zza.zzb(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zza.zzb zzbVar = new zza.zzb(imageView, uri);
        zzbVar.zzfy(i);
        zza(zzbVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zza(new zza.zzc(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zza.zzc zzcVar = new zza.zzc(onImageLoadedListener, uri);
        zzcVar.zzfy(i);
        zza(zzcVar);
    }

    public void zza(com.google.android.gms.common.images.zza zzaVar) {
        com.google.android.gms.common.internal.zzb.zzhi("ImageManager.loadImage() must be called in the main thread");
        new zzd(zzaVar).run();
    }
}
