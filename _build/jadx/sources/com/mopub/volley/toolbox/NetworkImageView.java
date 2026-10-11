package com.mopub.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetworkImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private String f4804a;

    /* renamed from: b, reason: collision with root package name */
    private int f4805b;
    private int c;
    private ImageLoader d;
    private ImageLoader.ImageContainer e;

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NetworkImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setImageUrl(String url, ImageLoader imageLoader) {
        this.f4804a = url;
        this.d = imageLoader;
        a(false);
    }

    public void setDefaultImageResId(int defaultImage) {
        this.f4805b = defaultImage;
    }

    public void setErrorImageResId(int errorImage) {
        this.c = errorImage;
    }

    void a(boolean z) {
        boolean z2;
        boolean z3;
        int width = getWidth();
        int height = getHeight();
        if (getLayoutParams() != null) {
            z3 = getLayoutParams().width == -2;
            z2 = getLayoutParams().height == -2;
        } else {
            z2 = false;
            z3 = false;
        }
        boolean z4 = z3 && z2;
        if (width != 0 || height != 0 || z4) {
            if (TextUtils.isEmpty(this.f4804a)) {
                if (this.e != null) {
                    this.e.cancelRequest();
                    this.e = null;
                }
                a();
                return;
            }
            if (this.e != null && this.e.getRequestUrl() != null) {
                if (!this.e.getRequestUrl().equals(this.f4804a)) {
                    this.e.cancelRequest();
                    a();
                } else {
                    return;
                }
            }
            this.e = this.d.get(this.f4804a, new AnonymousClass1(z), z3 ? 0 : width, z2 ? 0 : height);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    class AnonymousClass1 implements ImageLoader.ImageListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f4806a;

        AnonymousClass1(boolean z) {
            this.f4806a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError error) {
            if (NetworkImageView.this.c != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.c);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(final ImageLoader.ImageContainer response, boolean isImmediate) {
            if (isImmediate && this.f4806a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.mopub.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.onResponse(response, false);
                    }
                });
            } else {
                if (response.getBitmap() == null) {
                    if (NetworkImageView.this.f4805b != 0) {
                        NetworkImageView.this.setImageResource(NetworkImageView.this.f4805b);
                        return;
                    }
                    return;
                }
                NetworkImageView.this.setImageBitmap(response.getBitmap());
            }
        }
    }

    private void a() {
        if (this.f4805b != 0) {
            setImageResource(this.f4805b);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        a(true);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.e != null) {
            this.e.cancelRequest();
            setImageBitmap(null);
            this.e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }
}
