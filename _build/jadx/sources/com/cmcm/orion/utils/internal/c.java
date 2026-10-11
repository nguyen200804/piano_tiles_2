package com.cmcm.orion.utils.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PackageManagerWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f1119a = new c();
    private List<PackageInfo> d;

    /* renamed from: b, reason: collision with root package name */
    private Context f1120b = com.cmcm.orion.adsdk.e.a();
    private PackageManager c = this.f1120b.getPackageManager();
    private Object e = new Object();

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            cVar = f1119a;
        }
        return cVar;
    }

    public final List<String> b() {
        ArrayList arrayList;
        try {
            List<PackageInfo> c = c();
            synchronized (this.e) {
                arrayList = new ArrayList();
                if (c != null && c.size() > 0) {
                    Iterator<PackageInfo> it = c.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().packageName);
                    }
                }
            }
            return arrayList;
        } catch (Exception e) {
            return null;
        }
    }

    public final List<PackageInfo> c() {
        try {
            synchronized (this.e) {
                if (this.d == null) {
                    this.d = this.c.getInstalledPackages(0);
                }
            }
        } catch (Exception e) {
        }
        return this.d;
    }

    public final void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.e) {
                if (this.d != null) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < this.d.size()) {
                            PackageInfo packageInfo = this.d.get(i2);
                            if (packageInfo == null || !str.equals(packageInfo.packageName)) {
                                i = i2 + 1;
                            } else {
                                this.d.remove(i2);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
        }
    }

    public final void a(String str, Context context) {
        int i = 0;
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                synchronized (this.e) {
                    if (this.d != null) {
                        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                        while (true) {
                            int i2 = i;
                            if (i2 < this.d.size()) {
                                PackageInfo packageInfo2 = this.d.get(i2);
                                if (packageInfo2 == null || !str.equals(packageInfo2.packageName)) {
                                    i = i2 + 1;
                                } else {
                                    this.d.remove(i2);
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        this.d.add(packageInfo);
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
