package com.mopub.dg.d.b;

import android.content.Context;
import java.util.HashMap;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap f4286a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private a f4287b;

    private b(Context context, String str) {
        this.f4287b = c.a(context, str);
    }

    public static b a(Context context) {
        return a(context, "dgspinfo");
    }

    public static b a(Context context, String str) {
        b bVar = (b) f4286a.get(str);
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(context, str);
        f4286a.put(str, bVar2);
        return bVar2;
    }

    public final Set a() {
        return this.f4287b.a();
    }

    public final boolean a(String str) {
        return a(str, String.valueOf(1));
    }

    public final boolean a(String str, long j) {
        return a(str, String.valueOf(j));
    }

    public final boolean a(String str, String str2) {
        return this.f4287b.a(str, str2);
    }

    public final boolean a(String str, boolean z) {
        return a(str, String.valueOf(z));
    }

    public final long b(String str, long j) {
        return this.f4287b.a(str, j);
    }

    public final String b(String str) {
        return this.f4287b.a(str);
    }

    public final String b(String str, String str2) {
        return this.f4287b.b(str, str2);
    }

    public final boolean c(String str) {
        return this.f4287b.b(str);
    }

    public final boolean d(String str) {
        return this.f4287b.c(str);
    }
}
