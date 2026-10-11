package com.cmplay.kinfoc.report.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetWorkChangeReceiver extends BroadcastReceiver {
    private int c;

    /* renamed from: b, reason: collision with root package name */
    private static ArrayList<a> f1570b = new ArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    public static int f1569a = 4;
    private static int d = 4;

    public interface a {
        void a(int i);
    }

    public NetWorkChangeReceiver() {
        this.c = 0;
        this.c = 0;
    }

    public static void a(a aVar) {
        if (!f1570b.contains(aVar)) {
            f1570b.add(aVar);
        }
    }

    public static void b(a aVar) {
        if (f1570b.contains(aVar)) {
            f1570b.remove(aVar);
        }
    }

    private static void b(int i) {
        if (i != f1569a) {
            f1569a = i;
            Iterator<a> it = f1570b.iterator();
            while (it.hasNext()) {
                it.next().a(i);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            int a2 = a(context);
            if (this.c == 0) {
                b(a2);
            }
        } catch (Exception e) {
        }
    }

    public static boolean a(int i) {
        return i == 1 || i == 2 || i == 3 || i == 7;
    }

    public static int a(Context context) {
        int i;
        if (context == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                i = 4;
            } else if (activeNetworkInfo.getType() == 1) {
                i = b(context) ? 3 : 4;
            } else {
                i = a(activeNetworkInfo.getSubtype()) ? 1 : 2;
            }
        } catch (Exception e) {
            i = 0;
        }
        return i;
    }

    public static boolean b(Context context) {
        boolean z;
        NetworkInfo activeNetworkInfo;
        if (context == null) {
            return false;
        }
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e) {
            z = false;
        }
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            if (activeNetworkInfo.getType() == 1) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
