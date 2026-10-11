package com.cmplay.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ConnectionChangedReceiver extends BroadcastReceiver {
    private int d;

    /* renamed from: a, reason: collision with root package name */
    public static int f1698a = 1024;
    private static ArrayList<a> c = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public static int f1699b = 4;
    private static int e = 4;

    public interface a {
        void a(int i);
    }

    public ConnectionChangedReceiver() {
        this.d = 0;
        this.d = 0;
    }

    public ConnectionChangedReceiver(int registType) {
        this.d = 0;
        if (registType == 0 || 1 == registType) {
            this.d = registType;
        }
    }

    public static void a(a aVar) {
        if (!c.contains(aVar)) {
            c.add(aVar);
        }
    }

    public static void b(a aVar) {
        if (c.contains(aVar)) {
            c.remove(aVar);
        }
    }

    public static void a(Context context) {
        int b2 = b(context.getApplicationContext());
        if (b2 != f1699b) {
            f1699b = b2;
        }
    }

    private static void b(int i) {
        switch (i) {
            case 1:
                f1698a = 5120;
                break;
            case 2:
                f1698a = 30720;
                break;
            case 3:
                f1698a = 102400;
                break;
        }
        if (i != f1699b) {
            f1699b = i;
            Iterator<a> it = c.iterator();
            while (it.hasNext()) {
                it.next().a(i);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            int b2 = b(context);
            if (this.d == 0) {
                b(b2);
            }
        } catch (Exception e2) {
            c.c("ConnectionChangedReceiver", e2.getMessage());
        }
    }

    public static boolean a(int i) {
        return i == 1 || i == 2 || i == 3 || i == 7;
    }

    public static int b(Context context) {
        int i;
        if (context == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                i = 4;
            } else if (activeNetworkInfo.getType() == 1) {
                i = t.b(context) ? 3 : 4;
            } else {
                i = a(activeNetworkInfo.getSubtype()) ? 1 : 2;
            }
        } catch (Exception e2) {
            i = 0;
        }
        return i;
    }
}
