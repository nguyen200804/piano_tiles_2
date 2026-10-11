package com.mopub.nativesdk.b;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mopub.nativesdk.d.p;

/* compiled from: JumpLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private f f4597a;

    /* renamed from: b, reason: collision with root package name */
    private e f4598b;
    private h c;
    private Handler d = new c(this, Looper.getMainLooper());

    public final void a(Context context, String str, f fVar) {
        boolean z;
        this.f4597a = fVar;
        String replace = str.replace(" ", "%20");
        if (replace == null || replace.length() == 0) {
            z = false;
        } else {
            z = p.d(replace) || p.e(replace);
        }
        if (!z) {
            this.f4598b = new e();
            this.f4598b.b(replace);
            this.f4598b.a(false);
            this.f4598b.a("InvalidURL");
            this.f4598b.a(4);
            this.d.sendEmptyMessage(1);
        }
        if (this.c == null) {
            this.c = new h(context);
        }
        com.mopub.nativesdk.d.a.a.a().a(new d(this, context, str, null));
    }
}
