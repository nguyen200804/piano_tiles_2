package com.cmplay.crashreport.a;

import android.os.Build;
import android.os.StatFs;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f1289a;

    static {
        f1289a = !b.class.desiredAssertionStatus();
    }

    public static long a(StatFs statFs) {
        Method method;
        if (!f1289a && statFs == null) {
            throw new AssertionError();
        }
        if (Build.VERSION.SDK_INT < 18) {
            return statFs.getAvailableBlocks();
        }
        try {
            method = statFs.getClass().getMethod("getAvailableBlocksLong", new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            method = null;
        }
        if (method == null) {
            return statFs.getAvailableBlocks();
        }
        try {
            return ((Long) method.invoke(statFs, new Object[0])).longValue();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return statFs.getAvailableBlocks();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return statFs.getAvailableBlocks();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return statFs.getAvailableBlocks();
        }
    }

    public static long b(StatFs statFs) {
        Method method;
        if (!f1289a && statFs == null) {
            throw new AssertionError();
        }
        if (Build.VERSION.SDK_INT < 18) {
            return statFs.getBlockCount();
        }
        try {
            method = statFs.getClass().getMethod("getBlockCountLong", new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            method = null;
        }
        if (method == null) {
            return statFs.getBlockCount();
        }
        try {
            return ((Long) method.invoke(statFs, new Object[0])).longValue();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return statFs.getBlockCount();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return statFs.getBlockCount();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return statFs.getBlockCount();
        }
    }

    public static long c(StatFs statFs) {
        Method method;
        if (!f1289a && statFs == null) {
            throw new AssertionError();
        }
        if (Build.VERSION.SDK_INT < 18) {
            return statFs.getBlockSize();
        }
        try {
            method = statFs.getClass().getMethod("getBlockSizeLong", new Class[0]);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            method = null;
        }
        if (method == null) {
            return statFs.getBlockSize();
        }
        try {
            return ((Long) method.invoke(statFs, new Object[0])).longValue();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return statFs.getBlockSize();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return statFs.getBlockSize();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return statFs.getBlockSize();
        }
    }
}
