package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzo {
    private static final Uri yY = Uri.parse("http://plus.google.com/");
    private static final Uri yZ = yY.buildUpon().appendPath("circles").appendPath("find").build();

    private static Uri zzac(String str, @Nullable String str2) {
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter(FacebookAdapter.KEY_ID, str);
        if (!TextUtils.isEmpty(str2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", str2);
        }
        return appendQueryParameter.build();
    }

    public static Intent zzad(String str, @Nullable String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(zzac(str, str2));
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }

    public static Intent zzata() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }

    public static Intent zzho(String str) {
        Uri fromParts = Uri.fromParts("package", str, null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }
}
