package com.mnt.impl.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements Runnable {
    private static a d;

    /* renamed from: b, reason: collision with root package name */
    public Context f3932b;
    private static final Map<String, com.mnt.impl.e.a> c = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public static final Map<String, String> f3931a = new ConcurrentHashMap();

    private a(Context context) {
        this.f3932b = context.getApplicationContext();
        for (Map.Entry<String, ?> entry : h.b(context).getAll().entrySet()) {
            c.put(entry.getKey(), new com.mnt.impl.e.a(String.valueOf(entry.getValue())));
        }
        for (Map.Entry<String, ?> entry2 : h.c(context).getAll().entrySet()) {
            f3931a.put(entry2.getKey(), String.valueOf(entry2.getValue()));
        }
        new Thread(this).start();
    }

    public static a a(Context context) {
        a aVar;
        if (d != null || context == null) {
            return d;
        }
        synchronized (c) {
            if (d != null) {
                aVar = d;
            } else {
                d = new a(context);
                aVar = d;
            }
        }
        return aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            SharedPreferences.Editor edit = h.b(this.f3932b).edit();
            for (com.mnt.impl.e.a aVar : c.values()) {
                if (aVar.a() && aVar.c != null) {
                    edit.remove(aVar.c);
                    c.remove(aVar.c);
                }
            }
            h.a(edit);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final com.mnt.impl.e.a a(String str) {
        com.mnt.impl.e.a aVar = c.get(str);
        if (aVar == null) {
            String string = h.b(this.f3932b).getString(str, null);
            if (!TextUtils.isEmpty(string)) {
                return new com.mnt.impl.e.a(string);
            }
            return aVar;
        }
        return aVar;
    }

    public final void a(com.mnt.impl.e.a aVar) {
        if (this.f3932b != null && !TextUtils.isEmpty(aVar.f3981a) && !TextUtils.isEmpty(aVar.c)) {
            c.put(aVar.c, aVar);
            f3931a.put(aVar.f3981a, "");
            h.a(this.f3932b, aVar);
        }
    }
}
