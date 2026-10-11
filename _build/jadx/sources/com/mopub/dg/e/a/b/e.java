package com.mopub.dg.e.a.b;

import android.content.Context;
import android.util.Log;
import com.mopub.dg.c.g;
import com.mopub.dg.d.k;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f4330a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4331b;
    final /* synthetic */ boolean c;
    final /* synthetic */ Map d;

    e(Context context, String str, boolean z, Map map) {
        this.f4330a = context;
        this.f4331b = str;
        this.c = z;
        this.d = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f4330a;
        String str = this.f4331b;
        boolean z = this.c;
        Map map = this.d;
        if (z) {
            try {
                com.mopub.dg.d.b.b a2 = com.mopub.dg.d.b.b.a(context);
                String b2 = a2.b(g.x);
                String b3 = a2.b(g.y);
                map.put("aid", b2);
                map.put("sid", b3);
            } catch (Exception e) {
            }
            String a3 = a.a(context, map);
            str = str.indexOf("?") > 0 ? str + "&" + a3 : str + "?" + a3;
        }
        if (!a.b(context)) {
            Log.i("sendEventToLogUrl", "Network not available,cancel sendEventToTrackUrl");
            return;
        }
        try {
            k.a(str, new d());
        } catch (Exception e2) {
            Log.w("sendEventToLogUrl", "Error executing sendEventToTrackUrl", e2);
        }
    }
}
