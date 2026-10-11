package com.cmplay.internalpush.a;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.k;
import com.cmplay.base.util.l;
import com.cmplay.base.util.n;
import com.cmplay.base.util.t;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

/* compiled from: CommonUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static boolean a(Context context, String str) {
        if (context == null || str == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String a2 = l.a(str);
        if (a2 == null) {
            a2 = "";
        }
        return a2 + "_" + str.substring(str.lastIndexOf("/") + 1, str.length());
    }

    public static void a(Context context, com.cmplay.internalpush.data.d dVar, t tVar) {
        if (!b(context, dVar)) {
            int h = dVar.h();
            String g = dVar.g();
            String c = dVar.c();
            if (1 == h) {
                k.a(context, g, c, tVar);
                return;
            }
            if (2 == h && com.cmplay.internalpush.k.a() != null) {
                if (!com.cmplay.internalpush.k.a().b(g)) {
                    k.d(context, g);
                }
            } else {
                if (3 == h) {
                    com.cmplay.base.util.a.a.a(context).a(g, dVar.e());
                    return;
                }
                if (4 == h && com.cmplay.internalpush.k.a() != null) {
                    com.cmplay.internalpush.k.a().a(g);
                } else {
                    if (6 == h) {
                        if (!k.a(context, dVar.j())) {
                            k.d(context, g);
                            return;
                        }
                        return;
                    }
                    k.d(context, g);
                }
            }
        }
    }

    public static void a(Context context, com.cmplay.internalpush.data.d dVar) {
        a(context, dVar, null);
    }

    public static boolean b(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar == null || dVar.h() == 4 || dVar.h() == 2) {
            g.a("internal_push", "CommonUtil.openInnerPushAppIfInstalled  jumpType:" + dVar.h() + "    return false");
            return false;
        }
        ArrayList<com.cmplay.base.util.b> j = dVar.j();
        if (j != null && !j.isEmpty()) {
            Iterator<com.cmplay.base.util.b> it = j.iterator();
            while (it.hasNext()) {
                com.cmplay.base.util.b next = it.next();
                if (next != null) {
                    String str = next.f1212b;
                    if (!TextUtils.isEmpty(str) && a(context, str)) {
                        g.a("internal_push", "CommonUtil.openInnerPushAppIfInstalled  1    PackageUtils.openApp");
                        n.d(context, str);
                        return true;
                    }
                }
            }
        } else {
            String f = dVar.f();
            if (!TextUtils.isEmpty(f) && a(context, f)) {
                g.a("internal_push", "CommonUtil.openInnerPushAppIfInstalled  2    PackageUtils.openApp");
                n.d(context, f);
                return true;
            }
        }
        return false;
    }

    public static boolean c(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar == null) {
            return false;
        }
        ArrayList<com.cmplay.base.util.b> j = dVar.j();
        if (j != null && !j.isEmpty()) {
            Iterator<com.cmplay.base.util.b> it = j.iterator();
            while (it.hasNext()) {
                com.cmplay.base.util.b next = it.next();
                if (next != null) {
                    String str = next.f1212b;
                    if (!TextUtils.isEmpty(str) && a(context, str)) {
                        return true;
                    }
                }
            }
        } else {
            String f = dVar.f();
            if (!TextUtils.isEmpty(f) && a(context, f)) {
                return true;
            }
        }
        return false;
    }

    public static long a(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static long a() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return -1L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        if (Build.VERSION.SDK_INT >= 18) {
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        }
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static boolean a(long j) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j);
        return calendar2.get(1) == calendar.get(1) && calendar2.get(2) == calendar.get(2) && calendar2.get(5) == calendar.get(5);
    }
}
