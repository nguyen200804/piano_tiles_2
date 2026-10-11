package com.mopub.network;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.toolbox.ImageLoader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MaxWidthImageLoader extends ImageLoader {

    /* renamed from: a, reason: collision with root package name */
    private final int f4718a;

    public MaxWidthImageLoader(RequestQueue queue, Context context, ImageLoader.ImageCache imageCache) {
        super(queue, imageCache);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.f4718a = Math.min(point.x, point.y);
    }

    @Override // com.mopub.volley.toolbox.ImageLoader
    public ImageLoader.ImageContainer get(String requestUrl, ImageLoader.ImageListener listener) {
        return super.get(requestUrl, listener, this.f4718a, 0);
    }
}
