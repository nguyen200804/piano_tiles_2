package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ImageLoader {

    /* renamed from: a, reason: collision with root package name */
    private final RequestQueue f4787a;
    private final ImageCache c;
    private Runnable g;

    /* renamed from: b, reason: collision with root package name */
    private int f4788b = 100;
    private final HashMap<String, a> d = new HashMap<>();
    private final HashMap<String, a> e = new HashMap<>();
    private final Handler f = new Handler(Looper.getMainLooper());

    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z);
    }

    public ImageLoader(RequestQueue queue, ImageCache imageCache) {
        this.f4787a = queue;
        this.c = imageCache;
    }

    public static ImageListener getImageListener(final ImageView view, final int defaultImageResId, final int errorImageResId) {
        return new ImageListener() { // from class: com.mopub.volley.toolbox.ImageLoader.1
            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                if (errorImageResId != 0) {
                    view.setImageResource(errorImageResId);
                }
            }

            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageContainer response, boolean isImmediate) {
                if (response.getBitmap() != null) {
                    view.setImageBitmap(response.getBitmap());
                } else if (defaultImageResId != 0) {
                    view.setImageResource(defaultImageResId);
                }
            }
        };
    }

    public boolean isCached(String requestUrl, int maxWidth, int maxHeight) {
        a();
        return this.c.getBitmap(a(requestUrl, maxWidth, maxHeight)) != null;
    }

    public ImageContainer get(String requestUrl, ImageListener listener) {
        return get(requestUrl, listener, 0, 0);
    }

    public ImageContainer get(String requestUrl, ImageListener imageListener, int maxWidth, int maxHeight) {
        a();
        String a2 = a(requestUrl, maxWidth, maxHeight);
        Bitmap bitmap = this.c.getBitmap(a2);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, requestUrl, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, requestUrl, a2, imageListener);
        imageListener.onResponse(imageContainer2, true);
        a aVar = this.d.get(a2);
        if (aVar != null) {
            aVar.addContainer(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> a3 = a(requestUrl, maxWidth, maxHeight, a2);
        this.f4787a.add(a3);
        this.d.put(a2, new a(a3, imageContainer2));
        return imageContainer2;
    }

    protected Request<Bitmap> a(String str, int i, int i2, final String str2) {
        return new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.mopub.volley.toolbox.ImageLoader.2
            @Override // com.mopub.volley.Response.Listener
            public void onResponse(Bitmap response) {
                ImageLoader.this.a(str2, response);
            }
        }, i, i2, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.mopub.volley.toolbox.ImageLoader.3
            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                ImageLoader.this.a(str2, error);
            }
        });
    }

    public void setBatchedResponseDelay(int newBatchedResponseDelayMs) {
        this.f4788b = newBatchedResponseDelayMs;
    }

    protected void a(String str, Bitmap bitmap) {
        this.c.putBitmap(str, bitmap);
        a remove = this.d.remove(str);
        if (remove == null) {
            return;
        }
        remove.c = bitmap;
        a(str, remove);
    }

    protected void a(String str, VolleyError volleyError) {
        a remove = this.d.remove(str);
        if (remove != null) {
            remove.setError(volleyError);
            a(str, remove);
        }
    }

    public class ImageContainer {

        /* renamed from: b, reason: collision with root package name */
        private Bitmap f4797b;
        private final ImageListener c;
        private final String d;
        private final String e;

        public ImageContainer(Bitmap bitmap, String requestUrl, String cacheKey, ImageListener listener) {
            this.f4797b = bitmap;
            this.e = requestUrl;
            this.d = cacheKey;
            this.c = listener;
        }

        public void cancelRequest() {
            if (this.c != null) {
                a aVar = (a) ImageLoader.this.d.get(this.d);
                if (aVar == null) {
                    a aVar2 = (a) ImageLoader.this.e.get(this.d);
                    if (aVar2 != null) {
                        aVar2.removeContainerAndCancelIfNecessary(this);
                        if (aVar2.e.size() == 0) {
                            ImageLoader.this.e.remove(this.d);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (aVar.removeContainerAndCancelIfNecessary(this)) {
                    ImageLoader.this.d.remove(this.d);
                }
            }
        }

        public Bitmap getBitmap() {
            return this.f4797b;
        }

        public String getRequestUrl() {
            return this.e;
        }
    }

    private class a {

        /* renamed from: b, reason: collision with root package name */
        private final Request<?> f4799b;
        private Bitmap c;
        private VolleyError d;
        private final LinkedList<ImageContainer> e = new LinkedList<>();

        public a(Request<?> request, ImageContainer imageContainer) {
            this.f4799b = request;
            this.e.add(imageContainer);
        }

        public void setError(VolleyError error) {
            this.d = error;
        }

        public VolleyError getError() {
            return this.d;
        }

        public void addContainer(ImageContainer container) {
            this.e.add(container);
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer container) {
            this.e.remove(container);
            if (this.e.size() != 0) {
                return false;
            }
            this.f4799b.cancel();
            return true;
        }
    }

    private void a(String str, a aVar) {
        this.e.put(str, aVar);
        if (this.g == null) {
            this.g = new Runnable() { // from class: com.mopub.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public void run() {
                    for (a aVar2 : ImageLoader.this.e.values()) {
                        Iterator it = aVar2.e.iterator();
                        while (it.hasNext()) {
                            ImageContainer imageContainer = (ImageContainer) it.next();
                            if (imageContainer.c != null) {
                                if (aVar2.getError() == null) {
                                    imageContainer.f4797b = aVar2.c;
                                    imageContainer.c.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.c.onErrorResponse(aVar2.getError());
                                }
                            }
                        }
                    }
                    ImageLoader.this.e.clear();
                    ImageLoader.this.g = null;
                }
            };
            this.f.postDelayed(this.g, this.f4788b);
        }
    }

    private void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    private static String a(String str, int i, int i2) {
        return new StringBuilder(str.length() + 12).append("#W").append(i).append("#H").append(i2).append(str).toString();
    }
}
