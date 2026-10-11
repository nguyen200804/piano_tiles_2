package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CtaButtonDrawable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoCtaButtonWidget extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private CtaButtonDrawable f4433a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout.LayoutParams f4434b;

    @NonNull
    private final RelativeLayout.LayoutParams c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;

    public VastVideoCtaButtonWidget(@NonNull Context context, int videoViewId, boolean hasCompanionAd, boolean hasClickthroughUrl) {
        super(context);
        this.f = hasCompanionAd;
        this.g = hasClickthroughUrl;
        this.h = false;
        setId((int) Utils.generateUniqueId());
        int dipsToIntPixels = Dips.dipsToIntPixels(150.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(38.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        this.f4433a = new CtaButtonDrawable(context);
        setImageDrawable(this.f4433a);
        this.f4434b = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.f4434b.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.f4434b.addRule(8, videoViewId);
        this.f4434b.addRule(7, videoViewId);
        this.c = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels2);
        this.c.setMargins(dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3, dipsToIntPixels3);
        this.c.addRule(12);
        this.c.addRule(11);
        c();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        c();
    }

    void a(@NonNull String str) {
        this.f4433a.setCtaText(str);
    }

    void a(boolean z) {
        this.h = z;
    }

    void a() {
        this.d = true;
        c();
    }

    void b() {
        this.d = true;
        this.e = true;
        c();
    }

    private void c() {
        if (!this.g) {
            setVisibility(8);
            return;
        }
        if (!this.d) {
            setVisibility(4);
            return;
        }
        if (this.e && this.f && !this.h) {
            setVisibility(8);
            return;
        }
        switch (getResources().getConfiguration().orientation) {
            case 0:
                MoPubLog.d("Screen orientation undefined: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.c);
                break;
            case 1:
                setLayoutParams(this.c);
                break;
            case 2:
                setLayoutParams(this.f4434b);
                break;
            case 3:
                MoPubLog.d("Screen orientation is deprecated ORIENTATION_SQUARE: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.c);
                break;
            default:
                MoPubLog.d("Unrecognized screen orientation: CTA button widget defaulting to portrait layout");
                setLayoutParams(this.c);
                break;
        }
        setVisibility(0);
    }
}
