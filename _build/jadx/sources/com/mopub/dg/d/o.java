package com.mopub.dg.d;

import android.content.Context;
import android.telephony.TelephonyManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class o {
    public static String a(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception e) {
            return "";
        }
    }
}
