package com.facebook.ads.internal.a;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.internal.g.g;
import com.facebook.ads.internal.util.b;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {
    public abstract b.a a();

    protected void a(Context context, String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str)) {
            g a2 = g.a(context);
            if (this instanceof c) {
                a2.f(str, map);
            } else {
                a2.g(str, map);
            }
        }
        com.facebook.ads.internal.util.g.a(context, "Click logged");
    }

    public abstract void b();
}
