package com.mopub.nativesdk.d;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* compiled from: PackageUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public static String f4699a;

    /* renamed from: b, reason: collision with root package name */
    public static String f4700b;

    public static boolean a(PackageInfo packageInfo) {
        int i = packageInfo.applicationInfo.flags;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        return (i & 1) != 0;
    }
}
