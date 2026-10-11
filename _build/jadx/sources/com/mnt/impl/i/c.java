package com.mnt.impl.i;

import android.content.Context;
import com.mnt.impl.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f4067a;

    /* renamed from: b, reason: collision with root package name */
    private Context f4068b;

    static {
        String str = e.cV;
        f4067a = null;
    }

    private c(Context context) {
        this.f4068b = context.getApplicationContext();
    }

    public static c a(Context context) {
        if (f4067a == null) {
            synchronized (c.class) {
                if (f4067a == null) {
                    f4067a = new c(context);
                }
            }
        }
        return f4067a;
    }

    public final void a(String str) {
        if (com.mnt.a.a.d(this.f4068b)) {
            b.a(this.f4068b, str);
        }
    }
}
