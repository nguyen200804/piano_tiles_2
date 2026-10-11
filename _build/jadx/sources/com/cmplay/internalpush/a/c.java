package com.cmplay.internalpush.a;

import android.content.Context;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: FilterHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static int f1411a = 0;

    public static boolean a(com.cmplay.internalpush.data.c cVar) {
        long currentTimeMillis = System.currentTimeMillis();
        long c = cVar.c() * 1000;
        long d = cVar.d() * 1000;
        if (c > 0 && currentTimeMillis < c) {
            f1411a = 6;
            return false;
        }
        if (d > 0 && currentTimeMillis > d) {
            f1411a = 6;
            return false;
        }
        return true;
    }

    public static boolean b(com.cmplay.internalpush.data.c cVar) {
        long currentTimeMillis = System.currentTimeMillis();
        long c = cVar.c() * 1000;
        long d = cVar.d() * 1000;
        if (d <= 0 || currentTimeMillis <= d) {
            return true;
        }
        f1411a = 6;
        return false;
    }

    public static boolean a(com.cmplay.internalpush.data.c cVar, long j, long j2) {
        if (!cVar.ac()) {
            j2 = j;
        }
        long f = cVar.f() * 60 * 60 * 1000;
        if (f <= 0 || j2 <= 0 || System.currentTimeMillis() - j2 >= f) {
            return true;
        }
        f1411a = 7;
        return false;
    }

    public static boolean b(com.cmplay.internalpush.data.c cVar, long j, long j2) {
        if (j <= j2) {
            j = j2;
        }
        long f = (cVar.f() > 3 ? cVar.f() : 3L) * 60 * 60 * 1000;
        if (f > 0 && j > 0 && System.currentTimeMillis() - j < f) {
            f1411a = 7;
            return false;
        }
        return true;
    }

    public static boolean a(com.cmplay.internalpush.data.c cVar, long j, long j2, int i, boolean z) {
        return (z && 2 == i) ? b(cVar, j, j2) : a(cVar, j, j2);
    }

    public static boolean c(com.cmplay.internalpush.data.c cVar) {
        if (cVar.e() > 0 && cVar.u() >= cVar.e()) {
            f1411a = 5;
            return false;
        }
        if (cVar.j() > 0 && cVar.x() >= cVar.j()) {
            f1411a = 1000;
            return false;
        }
        return true;
    }

    public static boolean d(com.cmplay.internalpush.data.c cVar) {
        if (!cVar.k() || !cVar.w()) {
            return true;
        }
        f1411a = 3;
        return false;
    }

    public static boolean a(Context context, com.cmplay.internalpush.data.c cVar) {
        ArrayList<com.cmplay.base.util.b> P = cVar.P();
        if (P != null && !P.isEmpty()) {
            Iterator<com.cmplay.base.util.b> it = P.iterator();
            while (it.hasNext()) {
                com.cmplay.base.util.b next = it.next();
                if (next != null) {
                    String str = next.f1212b;
                    if (!TextUtils.isEmpty(str) && b.a(context, str)) {
                        f1411a = 1;
                        return false;
                    }
                }
            }
        } else {
            String r = cVar.r();
            if (!TextUtils.isEmpty(r) && b.a(context, r)) {
                f1411a = 1;
                return false;
            }
        }
        return true;
    }

    public static boolean e(com.cmplay.internalpush.data.c cVar) {
        File file;
        if (!TextUtils.isEmpty(cVar.l()) && !TextUtils.isEmpty(cVar.m()) && (file = new File(cVar.m())) != null && file.exists()) {
            return true;
        }
        f1411a = 8;
        return false;
    }

    public static boolean f(com.cmplay.internalpush.data.c cVar) {
        File file;
        if (TextUtils.isEmpty(cVar.n())) {
            return true;
        }
        if (!TextUtils.isEmpty(cVar.n()) && !TextUtils.isEmpty(cVar.p()) && (file = new File(cVar.p())) != null && file.exists()) {
            return true;
        }
        f1411a = 9;
        return false;
    }

    public static boolean g(com.cmplay.internalpush.data.c cVar) {
        File file;
        if (!TextUtils.isEmpty(cVar.y()) && !TextUtils.isEmpty(cVar.z()) && (file = new File(cVar.z())) != null && file.exists()) {
            return true;
        }
        f1411a = 11;
        return false;
    }

    public static boolean h(com.cmplay.internalpush.data.c cVar) {
        File file;
        if (!TextUtils.isEmpty(cVar.F()) && !TextUtils.isEmpty(cVar.G()) && (file = new File(cVar.G())) != null && file.exists()) {
            return true;
        }
        f1411a = 12;
        return false;
    }

    public static boolean a(com.cmplay.internalpush.data.c cVar, boolean z) {
        if (!z || cVar.E() != 0) {
            return true;
        }
        f1411a = 2;
        return false;
    }

    public static boolean i(com.cmplay.internalpush.data.c cVar) {
        if (!cVar.Z()) {
            return true;
        }
        f1411a = 1001;
        return false;
    }

    public static boolean a(com.cmplay.internalpush.data.c cVar, long j) {
        long currentTimeMillis = System.currentTimeMillis();
        long L = cVar.L() * 24 * 60 * 60 * 1000;
        g.a("internal_push", "checkShieldTime  curTime:" + currentTimeMillis + "  lastShieldTime:" + j + "  interval:" + L);
        if (cVar.L() <= 0 || j <= 0 || currentTimeMillis - j >= L) {
            return true;
        }
        f1411a = 13;
        return false;
    }

    public static boolean j(com.cmplay.internalpush.data.c cVar) {
        int a2;
        int S = cVar.S();
        if (cVar.ac()) {
            a2 = d.a("hit_top_launch_time", 0);
        } else {
            a2 = d.a("launch_time", 0);
        }
        g.a("internal_push", "checkLaunchTime  showByStartup:" + S + "  launchTime:" + a2);
        if (S > 0 && a2 < S) {
            f1411a = 14;
            return false;
        }
        return true;
    }

    public static boolean k(com.cmplay.internalpush.data.c cVar) {
        int aa = cVar.aa();
        if (!cVar.ac()) {
            return true;
        }
        int ab = cVar.ab();
        g.a("internal_push", "checkDayLimit  dayLimit:" + aa + "  curHitTopTodayShowTime:" + ab);
        if (aa <= 0 || ab < aa) {
            return true;
        }
        f1411a = 15;
        return false;
    }

    public static String a(int i) {
        switch (i) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            case 9:
                break;
            case 11:
                break;
            case 12:
                break;
            case 13:
                break;
            case 14:
                break;
            case 15:
                break;
            case 1000:
                break;
            case 1001:
                break;
        }
        return "ERROR_CODE_NO_ERROR\t\t成功";
    }
}
