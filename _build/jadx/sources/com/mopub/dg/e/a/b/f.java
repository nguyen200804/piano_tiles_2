package com.mopub.dg.e.a.b;

import android.content.Context;
import android.content.Intent;
import com.mopub.dg.adsdk.DGService;
import java.security.MessageDigest;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f4332a = new AtomicInteger(1);

    public static String a(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            for (byte b2 : messageDigest.digest()) {
                sb.append(String.format("%02X", Byte.valueOf(b2)));
            }
            return sb.toString().toLowerCase();
        } catch (Exception e) {
            return "";
        }
    }

    public static boolean a(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean b(Context context) {
        return context.getPackageManager().queryIntentServices(new Intent(context, (Class<?>) DGService.class), 65536).size() > 0;
    }
}
