package com.duapps.ad.base;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.duapps.ad.base.e;
import com.mopub.common.GpsHelper;
import java.lang.reflect.Method;

/* compiled from: GoogleAdvertisingIdHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {
    public static String a(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot get advertising info on main thread.");
        }
        String b2 = b(context);
        if (TextUtils.isEmpty(b2)) {
            b2 = c(context);
        }
        h.c("GMS", "getAdvertisingId = " + b2);
        return b2;
    }

    private static String b(Context context) {
        Method a2 = com.duapps.ad.c.b.c.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
        if (a2 == null) {
            h.c("GMS", "getAdvertisingIdInfo =  null");
            return null;
        }
        Object a3 = com.duapps.ad.c.b.c.a((Object) null, a2, new Object[]{context});
        if (a3 == null) {
            h.c("GMS", "advertisingInfo =  null");
            return null;
        }
        Method a4 = com.duapps.ad.c.b.c.a(a3.getClass(), "getId", (Class<?>[]) new Class[0]);
        Method a5 = com.duapps.ad.c.b.c.a(a3.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, (Class<?>[]) new Class[0]);
        if (a4 == null || a5 == null) {
            h.c("GMS", "getId =  null or isLimitAdTrackingEnabled = null");
            return null;
        }
        return (String) com.duapps.ad.c.b.c.a(a3, a4, new Object[0]);
    }

    private static String c(Context context) {
        try {
            e.a a2 = e.a(context);
            if (a2 == null) {
                return null;
            }
            return a2.a();
        } catch (RemoteException e) {
            return null;
        } catch (InterruptedException e2) {
            return null;
        } catch (Exception e3) {
            return null;
        }
    }
}
