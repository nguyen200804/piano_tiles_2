package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.util.aj;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.g;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2569a = f.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Context f2570b;
    private final String c;
    private final Uri d;

    public f(Context context, String str, Uri uri) {
        this.f2570b = context;
        this.c = str;
        this.d = uri;
    }

    @Override // com.facebook.ads.internal.a.a
    public b.a a() {
        return b.a.OPEN_LINK;
    }

    @Override // com.facebook.ads.internal.a.a
    public void b() {
        try {
            Log.w("REDIRECTACTION: ", this.d.toString());
            g.a(new aj(), this.f2570b, this.d, this.c);
        } catch (Exception e) {
            Log.d(f2569a, "Failed to open link url: " + this.d.toString(), e);
        }
    }
}
