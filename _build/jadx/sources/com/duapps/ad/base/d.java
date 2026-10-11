package com.duapps.ad.base;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ChannelFactory.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f2029a = {"admob", "download", "facebook", "inmobi", "online", "dlh"};

    public static long a(Context context, int i, int i2, List<String> list, ConcurrentHashMap<String, com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a>> concurrentHashMap, String str) {
        long j = 0;
        if (context == null || list == null || list.size() == 0 || concurrentHashMap == null) {
            return 0L;
        }
        h.c("ChannelFactory", "cacheSize==" + i2);
        com.duapps.ad.c.a.c a2 = com.duapps.ad.c.a.b.a(context).a(i, true, false);
        int i3 = 0;
        Iterator<String> it = list.iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                String next = it.next();
                long a3 = a2.a(next);
                int a4 = a(list, i2, next);
                h.c("ChannelFactory", "Create channel:" + next + ",wt:" + a3 + ",cacheSize: " + a4 + ", iType : " + str);
                com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> a5 = a(next, context, i, a3, a4, str);
                if (a5 != null) {
                    concurrentHashMap.put(next, a5);
                    j = j2 + a3;
                    a5.g = j - a3;
                    h.c("ChannelFactory", "channel:" + next + "startTime:" + a5.g);
                    a5.m = i3;
                    i3++;
                } else {
                    j = j2;
                }
            } else {
                return j2;
            }
        }
    }

    private static com.duapps.ad.entity.a.b<com.duapps.ad.entity.a.a> a(String str, Context context, int i, long j, int i2, String str2) {
        if ("facebook".equals(str)) {
            return new com.duapps.ad.entity.b(context, i, j, i2, str2);
        }
        if ("download".equals(str)) {
            return new o(context, i, j, str2);
        }
        if ("inmobi".equals(str)) {
            return new com.duapps.ad.inmobi.a(context, i, j, i2, str2);
        }
        if ("dlh".equals(str)) {
            return new com.duapps.ad.b.a(context, i, j, str2);
        }
        if ("online".equals(str)) {
            return new q(context, i, j, i2, str2);
        }
        if ("admob".equals(str)) {
            String d = p.a(context).d(i);
            if (TextUtils.isEmpty(d)) {
                return null;
            }
            return new com.duapps.ad.a.a(context, i, j, i2, d, str2);
        }
        h.d("ChannelFactory", "Unsupport error channel:" + str);
        return null;
    }

    public static List<String> a(List<String> list, Context context, int i, String str) {
        ArrayList arrayList = new ArrayList(f2029a.length);
        List asList = Arrays.asList(f2029a);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < list.size()) {
                String str2 = list.get(i3);
                if (asList.contains(str2) && a(str2, context, i, str)) {
                    arrayList.add(str2);
                }
                i2 = i3 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public static int a(List<String> list, int i, String str) {
        if (list == null || list.size() == 0 || str == null) {
            return 1;
        }
        if (i < 1) {
            i = 1;
        }
        if (i > list.size() - 1 && i > 5) {
            i = 5;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        if (arrayList.contains("download")) {
            arrayList.remove("download");
        }
        if (arrayList.contains("dlh")) {
            arrayList.remove("dlh");
        }
        if (arrayList.size() <= 0 || i <= arrayList.size() || !((String) arrayList.get(0)).equals(str)) {
            return 1;
        }
        return i - (arrayList.size() - 1);
    }

    private static boolean a(String str, Context context, int i, String str2) {
        if (TextUtils.equals(str2, "offerwall") && !"facebook".equals(str)) {
            return false;
        }
        if ("admob".equals(str)) {
            return !TextUtils.isEmpty(p.a(context).d(i)) && Build.VERSION.SDK_INT > 10 && com.duapps.ad.c.b.c.c();
        }
        if (!"facebook".equals(str)) {
            return true;
        }
        if (TextUtils.equals(str2, "offerwall")) {
            return !TextUtils.isEmpty(p.a(context).c(i)) && com.duapps.ad.c.b.c.b();
        }
        List<String> b2 = p.a(context).b(i);
        return b2 != null && b2.size() > 0 && com.duapps.ad.c.b.c.b();
    }
}
