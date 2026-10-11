package com.mopub.dg.c;

import android.content.Context;
import java.util.Timer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public a f4269a;

    /* renamed from: b, reason: collision with root package name */
    public Timer f4270b;
    public boolean c = false;
    public boolean d = false;

    public final void a(Context context, com.mopub.dg.b.d dVar, String str, String str2) {
        try {
            com.mopub.dg.e.a.a.l.a(context, str, str2);
            if (context == null) {
                com.mopub.dg.d.n.b("Error:context is null");
            }
            this.f4269a = a.a(context, dVar, str, str2);
        } catch (Exception e) {
            com.mopub.dg.d.n.a(e);
        }
    }
}
