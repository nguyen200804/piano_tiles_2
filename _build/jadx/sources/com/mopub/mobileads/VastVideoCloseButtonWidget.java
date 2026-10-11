package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoCloseButtonWidget extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private TextView f4424a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private ImageView f4425b;

    @NonNull
    private final ImageLoader c;

    @NonNull
    private CloseButtonDrawable d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;

    public VastVideoCloseButtonWidget(@NonNull Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        this.e = Dips.dipsToIntPixels(6.0f, context);
        this.g = Dips.dipsToIntPixels(15.0f, context);
        this.h = Dips.dipsToIntPixels(56.0f, context);
        this.f = Dips.dipsToIntPixels(0.0f, context);
        this.d = new CloseButtonDrawable();
        this.c = Networking.getImageLoader(context);
        a();
        b();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.h);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    private void a() {
        this.f4425b = new ImageView(getContext());
        this.f4425b.setId((int) Utils.generateUniqueId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.h, this.h);
        layoutParams.addRule(11);
        this.f4425b.setImageDrawable(this.d);
        this.f4425b.setPadding(this.g, this.g + this.e, this.g + this.e, this.g);
        addView(this.f4425b, layoutParams);
    }

    private void b() {
        this.f4424a = new TextView(getContext());
        this.f4424a.setSingleLine();
        this.f4424a.setEllipsize(TextUtils.TruncateAt.END);
        this.f4424a.setTextColor(-1);
        this.f4424a.setTextSize(20.0f);
        this.f4424a.setTypeface(DrawableConstants.CloseButton.TEXT_TYPEFACE);
        this.f4424a.setText("");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, this.f4425b.getId());
        this.f4424a.setPadding(0, this.e, 0, 0);
        layoutParams.setMargins(0, 0, this.f, 0);
        addView(this.f4424a, layoutParams);
    }

    void a(@Nullable String str) {
        if (this.f4424a != null) {
            this.f4424a.setText(str);
        }
    }

    void b(@NonNull final String str) {
        this.c.get(str, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.VastVideoCloseButtonWidget.1
            @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
            public void onResponse(ImageLoader.ImageContainer imageContainer, boolean isImmediate) {
                Bitmap bitmap = imageContainer.getBitmap();
                if (bitmap != null) {
                    VastVideoCloseButtonWidget.this.f4425b.setImageBitmap(bitmap);
                } else {
                    MoPubLog.d(String.format("%s returned null bitmap", str));
                }
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                MoPubLog.d("Failed to load image.", volleyError);
            }
        });
    }

    void a(@Nullable View.OnTouchListener onTouchListener) {
        this.f4425b.setOnTouchListener(onTouchListener);
        this.f4424a.setOnTouchListener(onTouchListener);
    }
}
