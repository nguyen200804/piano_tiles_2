package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class DowngradeableSafeParcel extends AbstractSafeParcelable implements ReflectedParcelable {
    private static final Object yq = new Object();
    private static ClassLoader yr = null;
    private static Integer ys = null;
    private boolean yt = false;

    protected static ClassLoader zzass() {
        synchronized (yq) {
        }
        return null;
    }

    protected static Integer zzast() {
        synchronized (yq) {
        }
        return null;
    }

    private static boolean zzd(Class<?> cls) {
        try {
            return SafeParcelable.NULL.equals(cls.getField("NULL").get(null));
        } catch (IllegalAccessException e) {
            return false;
        } catch (NoSuchFieldException e2) {
            return false;
        }
    }

    protected static boolean zzhk(String str) {
        ClassLoader zzass = zzass();
        if (zzass == null) {
            return true;
        }
        try {
            return zzd(zzass.loadClass(str));
        } catch (Exception e) {
            return false;
        }
    }

    protected boolean zzasu() {
        return false;
    }
}
