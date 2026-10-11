package com.facebook.ads.internal.server;

import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import com.mopub.common.AdType;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum AdPlacementType {
    UNKNOWN(EnvironmentCompat.MEDIA_UNKNOWN),
    BANNER("banner"),
    INTERSTITIAL(AdType.INTERSTITIAL),
    NATIVE("native"),
    INSTREAM("instream"),
    REWARDED_VIDEO(AdType.REWARDED_VIDEO);


    /* renamed from: a, reason: collision with root package name */
    private String f2815a;

    AdPlacementType(String str) {
        this.f2815a = str;
    }

    public static AdPlacementType fromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNKNOWN;
        }
        try {
            return valueOf(str.toUpperCase(Locale.US));
        } catch (Exception e) {
            return UNKNOWN;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f2815a;
    }
}
