package com.facebook.ads;

import android.content.Context;
import com.facebook.ads.internal.f.h;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class BidderTokenProvider {
    public static String getBidderToken(Context context) {
        return new h(context, true).a();
    }
}
