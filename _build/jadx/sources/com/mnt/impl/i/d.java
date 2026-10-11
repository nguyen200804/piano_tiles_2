package com.mnt.impl.i;

import android.content.Context;
import android.os.Build;
import com.mnt.impl.b.h;
import com.mnt.impl.b.j;
import com.mnt.impl.b.k;
import com.mnt.impl.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private static String f4069a = e.aK;

    public static void a(Context context, StringBuffer stringBuffer) {
        stringBuffer.append(k.a(System.currentTimeMillis()));
        stringBuffer.append(f4069a);
        stringBuffer.append(h.j(context));
        stringBuffer.append(f4069a);
        String g = h.g(context);
        if (g == null) {
            g = "";
        }
        stringBuffer.append(g);
        stringBuffer.append(f4069a);
        stringBuffer.append(com.mnt.a.a.a(context));
        stringBuffer.append(f4069a);
        stringBuffer.append(com.mnt.a.a.k(context));
        stringBuffer.append(f4069a);
        stringBuffer.append(com.mnt.a.a.b(context));
        stringBuffer.append(f4069a);
        stringBuffer.append(com.mnt.a.a.e());
        stringBuffer.append(f4069a);
        stringBuffer.append(Build.VERSION.SDK_INT);
        stringBuffer.append(f4069a);
        stringBuffer.append(Build.VERSION.RELEASE);
        stringBuffer.append(f4069a);
        stringBuffer.append(com.mnt.a.a.i(context));
        stringBuffer.append(f4069a);
        stringBuffer.append(com.mnt.a.a.h(context));
        stringBuffer.append(f4069a);
        stringBuffer.append(128);
        stringBuffer.append(f4069a);
        stringBuffer.append(j.f3950a);
        stringBuffer.append(f4069a);
        stringBuffer.append(f4069a);
    }

    public static void a(StringBuffer stringBuffer, int i) {
        stringBuffer.append(79);
        stringBuffer.append(f4069a);
        stringBuffer.append(i);
        stringBuffer.append(f4069a);
    }
}
