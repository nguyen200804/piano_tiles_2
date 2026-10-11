package com.mopub.nativesdk.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import java.util.List;
import java.util.Map;

/* compiled from: InstalledPkgLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Context f4629a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ e f4630b;

    j(e eVar, Context context) {
        this.f4630b = eVar;
        this.f4629a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Map map;
        Map map2;
        try {
            List<PackageInfo> installedPackages = this.f4629a.getPackageManager().getInstalledPackages(128);
            if (installedPackages != null && installedPackages.size() > 0) {
                map2 = this.f4630b.f4624a;
                map2.clear();
            }
            for (PackageInfo packageInfo : installedPackages) {
                if (packageInfo.packageName.equalsIgnoreCase("com.android.vending")) {
                    String str = packageInfo.versionName;
                } else if (packageInfo.packageName.equalsIgnoreCase("com.google.android.gms")) {
                    String str2 = packageInfo.versionName;
                } else if (!com.mopub.nativesdk.d.n.a(packageInfo)) {
                    map = this.f4630b.f4624a;
                    map.put(packageInfo.packageName, packageInfo);
                }
            }
        } catch (Exception e) {
        }
        handler = this.f4630b.c;
        handler.sendEmptyMessage(1);
    }
}
