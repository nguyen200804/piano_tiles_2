package com.mopub.network;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.LruCache;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.DeviceUtils;
import com.mopub.volley.toolbox.BasicNetwork;
import com.mopub.volley.toolbox.DiskBasedCache;
import com.mopub.volley.toolbox.ImageLoader;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Networking {

    /* renamed from: b, reason: collision with root package name */
    private static volatile MoPubRequestQueue f4732b;
    private static volatile String c;
    private static volatile MaxWidthImageLoader d;

    /* renamed from: a, reason: collision with root package name */
    private static final String f4731a = System.getProperty("http.agent");
    private static boolean e = false;

    @Nullable
    public static MoPubRequestQueue getRequestQueue() {
        return f4732b;
    }

    @NonNull
    public static MoPubRequestQueue getRequestQueue(@NonNull Context context) {
        MoPubRequestQueue moPubRequestQueue = f4732b;
        if (moPubRequestQueue == null) {
            synchronized (Networking.class) {
                moPubRequestQueue = f4732b;
                if (moPubRequestQueue == null) {
                    BasicNetwork basicNetwork = new BasicNetwork(new RequestQueueHttpStack(getUserAgent(context.getApplicationContext()), new PlayServicesUrlRewriter(ClientMetadata.getInstance(context).getDeviceId(), context), CustomSSLSocketFactory.getDefault(Constants.TEN_SECONDS_MILLIS)));
                    File file = new File(context.getCacheDir().getPath() + File.separator + "mopub-volley-cache");
                    moPubRequestQueue = new MoPubRequestQueue(new DiskBasedCache(file, (int) DeviceUtils.diskCacheSizeBytes(file, 10485760L)), basicNetwork);
                    f4732b = moPubRequestQueue;
                    moPubRequestQueue.start();
                }
            }
        }
        return moPubRequestQueue;
    }

    @NonNull
    public static ImageLoader getImageLoader(@NonNull Context context) {
        MaxWidthImageLoader maxWidthImageLoader = d;
        if (maxWidthImageLoader == null) {
            synchronized (Networking.class) {
                maxWidthImageLoader = d;
                if (maxWidthImageLoader == null) {
                    MoPubRequestQueue requestQueue = getRequestQueue(context);
                    final LruCache<String, Bitmap> lruCache = new LruCache<String, Bitmap>(DeviceUtils.memoryCacheSizeBytes(context)) { // from class: com.mopub.network.Networking.1
                        /* JADX INFO: Access modifiers changed from: protected */
                        @Override // android.support.v4.util.LruCache
                        /* renamed from: a, reason: merged with bridge method [inline-methods] */
                        public int sizeOf(String str, Bitmap bitmap) {
                            return bitmap != null ? bitmap.getRowBytes() * bitmap.getHeight() : super.sizeOf(str, bitmap);
                        }
                    };
                    maxWidthImageLoader = new MaxWidthImageLoader(requestQueue, context, new ImageLoader.ImageCache() { // from class: com.mopub.network.Networking.2
                        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                        public Bitmap getBitmap(String key) {
                            return (Bitmap) LruCache.this.get(key);
                        }

                        @Override // com.mopub.volley.toolbox.ImageLoader.ImageCache
                        public void putBitmap(String key, Bitmap bitmap) {
                            LruCache.this.put(key, bitmap);
                        }
                    });
                    d = maxWidthImageLoader;
                }
            }
        }
        return maxWidthImageLoader;
    }

    @NonNull
    public static String getUserAgent(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        String str = c;
        if (str == null) {
            synchronized (Networking.class) {
                str = c;
                if (str == null) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        str = WebSettings.getDefaultUserAgent(context);
                    } else if (Looper.myLooper() == Looper.getMainLooper()) {
                        try {
                            str = new WebView(context).getSettings().getUserAgentString();
                        } catch (Exception e2) {
                            str = f4731a;
                        }
                    } else {
                        str = f4731a;
                    }
                    c = str;
                }
            }
        }
        return str;
    }

    @NonNull
    public static String getCachedUserAgent() {
        String str = c;
        if (str == null) {
            return f4731a;
        }
        return str;
    }

    @VisibleForTesting
    public static synchronized void clearForTesting() {
        synchronized (Networking.class) {
            f4732b = null;
            d = null;
            c = null;
        }
    }

    @VisibleForTesting
    public static synchronized void setRequestQueueForTesting(MoPubRequestQueue queue) {
        synchronized (Networking.class) {
            f4732b = queue;
        }
    }

    @VisibleForTesting
    public static synchronized void setImageLoaderForTesting(MaxWidthImageLoader imageLoader) {
        synchronized (Networking.class) {
            d = imageLoader;
        }
    }

    @VisibleForTesting
    public static synchronized void setUserAgentForTesting(String userAgent) {
        synchronized (Networking.class) {
            c = userAgent;
        }
    }

    public static void useHttps(boolean useHttps) {
        e = useHttps;
    }

    public static boolean useHttps() {
        return e;
    }

    public static String getScheme() {
        return useHttps() ? Constants.HTTPS : Constants.HTTP;
    }

    public static String getBaseUrlScheme() {
        return Constants.HTTP;
    }
}
