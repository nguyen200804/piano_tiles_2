package com.cmplay.i;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.text.TextUtils;
import com.cmplay.tiles4.R;
import com.cmplay.util.aa;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* compiled from: ChannelInfoUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static synchronized String a(Context context) {
        String b2;
        synchronized (a.class) {
            b2 = aa.b("key_channel_id", "");
            if (TextUtils.isEmpty(b2)) {
                b2 = a(context, "cn");
                if (TextUtils.isEmpty(b2)) {
                    Resources resources = context.getResources();
                    if (resources != null) {
                        b2 = resources.getString(R.string.channel_id);
                    } else {
                        b2 = "gp";
                    }
                }
                a(b2);
            }
        }
        return b2;
    }

    public static synchronized void a(String str) {
        synchronized (a.class) {
            aa.a("key_channel_id", str);
        }
    }

    public static synchronized void a(boolean z) {
        synchronized (a.class) {
            aa.a("key_n_r_channel", z);
        }
    }

    public static synchronized boolean a() {
        boolean b2;
        synchronized (a.class) {
            b2 = aa.b("key_n_r_channel", false);
        }
        return b2;
    }

    public static synchronized void b(boolean z) {
        synchronized (a.class) {
            aa.a("k_h_r_channel", z);
        }
    }

    public static synchronized boolean b() {
        boolean b2;
        synchronized (a.class) {
            b2 = aa.b("k_h_r_channel", false);
        }
        return b2;
    }

    public static synchronized String b(Context context) {
        String b2;
        synchronized (a.class) {
            b2 = aa.b("key_app_child_channel_id", "");
            if (TextUtils.isEmpty(b2)) {
                b2 = a(context, "cn2");
                if (TextUtils.isEmpty(b2)) {
                    b2 = "0";
                }
                b(b2);
            }
        }
        return b2;
    }

    public static synchronized void b(String str) {
        synchronized (a.class) {
            aa.a("key_app_child_channel_id", str);
        }
    }

    private static String a(Context context, String str) {
        try {
            AssetManager assets = context.getAssets();
            if (assets == null) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open(str)));
            try {
                String readLine = bufferedReader.readLine();
                if (!TextUtils.isEmpty(readLine)) {
                    readLine = readLine.trim();
                }
                bufferedReader.close();
                return readLine;
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        } catch (IOException | Exception e) {
            return null;
        }
    }
}
