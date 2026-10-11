package com.mopub.dg.e.a.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.mopub.dg.adapi.DGAdApi;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Timer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static Timer f4304a = null;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f4305b = false;

    private static String a(String str, Intent intent, Context context) {
        String str2 = "";
        List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers != null) {
            for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                str2 = resolveInfo.activityInfo.packageName == str ? resolveInfo.activityInfo.name : str2;
            }
        }
        return str2;
    }

    public static void a(Context context) {
        l.a().a(context);
        if (f4304a != null) {
            f4304a.cancel();
        }
        Timer timer = new Timer();
        f4304a = timer;
        timer.schedule(new c(context), 0L, 3000L);
    }

    public static void a(Context context, String str) {
        l.a().a(context);
        if (l.a().b().contains(str)) {
            if (f4304a != null) {
                f4304a.cancel();
            }
            f4305b = false;
            Timer timer = new Timer();
            f4304a = timer;
            timer.schedule(new b(context, str), 0L, 3000L);
        }
    }

    private static void b() {
        if (f4304a != null) {
            f4304a.cancel();
            f4304a = null;
        }
    }

    public static synchronized void b(Context context) {
        synchronized (a.class) {
            try {
                Set<String> b2 = l.a().b();
                if (b2.size() == 0) {
                    b();
                }
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
                HashSet hashSet = new HashSet();
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next().processName);
                }
                for (String str : b2) {
                    if (hashSet.contains(str)) {
                        c(context, str);
                        l.a().b(str);
                        if (l.a().b().size() == 0) {
                            b();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    protected static void b(Context context, String str) {
        HashMap hashMap = new HashMap();
        String a2 = l.a().a(str);
        hashMap.put("pkg", str);
        hashMap.put(VastExtensionXmlManager.TYPE, "9");
        hashMap.put("refer", a2);
        com.mopub.dg.e.a.b.c.a(context, "http://adbsc.krmobi.com/dzzb", true, hashMap);
        f4305b = true;
        DGAdApi dGAdApi = DGAdApi.getInstance(context);
        if (dGAdApi != null && dGAdApi.getStatusListener() != null) {
            dGAdApi.getStatusListener().onStatusEvent("App_Refer_Install", str);
        }
        com.mopub.dg.d.n.a("App_Refer_Install");
    }

    public static void c(Context context, String str) {
        try {
            String a2 = l.a().a(str);
            if (a2.equals("")) {
                return;
            }
            Intent intent = new Intent("com.android.vending.INSTALL_REFERRER");
            String a3 = a(str, intent, context);
            if (a3 == null || a3.equals("")) {
                intent.setPackage(str);
            } else {
                intent.setClassName(str, a3);
            }
            intent.putExtra("referrer", a2);
            context.sendBroadcast(intent);
            String a4 = l.a().a(str);
            HashMap hashMap = new HashMap();
            hashMap.put("pkg", str);
            hashMap.put(VastExtensionXmlManager.TYPE, "10");
            hashMap.put("refer", a4);
            com.mopub.dg.e.a.b.c.a(context, "http://adbsc.krmobi.com/dzzb", true, hashMap);
            DGAdApi dGAdApi = DGAdApi.getInstance(context);
            if (dGAdApi != null && dGAdApi.getStatusListener() != null) {
                dGAdApi.getStatusListener().onStatusEvent("App_Refer_Send", str);
            }
            com.mopub.dg.d.n.a("App_Refer_Send");
        } catch (Exception e) {
        }
    }
}
