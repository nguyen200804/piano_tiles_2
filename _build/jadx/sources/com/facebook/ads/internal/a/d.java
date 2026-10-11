package com.facebook.ads.internal.a;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.facebook.ads.internal.util.aj;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.g;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2565a = d.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final Context f2566b;
    private final String c;
    private final Uri d;
    private final Map<String, String> e;

    public d(Context context, String str, Uri uri, Map<String, String> map) {
        this.f2566b = context;
        this.c = str;
        this.d = uri;
        this.e = map;
    }

    @Override // com.facebook.ads.internal.a.a
    public b.a a() {
        return b.a.OPEN_LINK;
    }

    @Override // com.facebook.ads.internal.a.a
    public void b() {
        a(this.f2566b, this.c, this.e);
        try {
            g.a(new aj(), this.f2566b, Uri.parse(this.d.getQueryParameter("link")), this.c);
        } catch (Exception e) {
            Log.d(f2565a, "Failed to open link url: " + this.d.toString(), e);
        }
    }
}
