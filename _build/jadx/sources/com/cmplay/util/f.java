package com.cmplay.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* compiled from: ComponentUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {
    public static boolean a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean a(String str, Context context) {
        boolean z = false;
        if (str == null || str.length() == 0) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage("com.android.vending");
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            } else {
                intent.addFlags(524288);
            }
            intent.setData(Uri.parse(str));
            z = a(context, intent);
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return z;
        }
    }
}
