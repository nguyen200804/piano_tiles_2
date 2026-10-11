package com.duapps.ad.a;

import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import java.util.List;

/* compiled from: AdmobNativeAd.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public NativeContentAd f1992a;

    /* renamed from: b, reason: collision with root package name */
    public NativeAppInstallAd f1993b;

    public b(NativeContentAd nativeContentAd) {
        this.f1992a = nativeContentAd;
    }

    public b(NativeAppInstallAd nativeAppInstallAd) {
        this.f1993b = nativeAppInstallAd;
    }

    public boolean a() {
        return this.f1993b != null;
    }

    public boolean b() {
        return this.f1992a != null;
    }

    public String c() {
        if (a()) {
            return this.f1993b.getHeadline().toString();
        }
        if (b()) {
            return this.f1992a.getHeadline().toString();
        }
        return null;
    }

    public String d() {
        if (a()) {
            return this.f1993b.getBody().toString();
        }
        if (b()) {
            return this.f1992a.getBody().toString();
        }
        return null;
    }

    public String e() {
        if (a()) {
            return this.f1993b.getCallToAction().toString();
        }
        if (b()) {
            return this.f1992a.getCallToAction().toString();
        }
        return null;
    }

    public String f() {
        List<NativeAd.Image> images;
        if (!a() || (images = this.f1993b.getImages()) == null || images.size() <= 0) {
            return null;
        }
        return images.get(0).getUri().toString();
    }

    public String g() {
        List<NativeAd.Image> images;
        if (a()) {
            NativeAd.Image icon = this.f1993b.getIcon();
            if (icon != null) {
                return icon.getUri().toString();
            }
            return null;
        }
        if (!b() || (images = this.f1992a.getImages()) == null || images.size() <= 0) {
            return null;
        }
        return images.get(0).getUri().toString();
    }

    public float h() {
        Double starRating;
        if (!a() || (starRating = this.f1993b.getStarRating()) == null) {
            return 4.5f;
        }
        return (float) (starRating.doubleValue() + 0.0d);
    }
}
