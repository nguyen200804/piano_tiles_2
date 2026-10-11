package com.mnt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.mnt.impl.b.h;
import com.mnt.impl.b.j;
import com.mnt.impl.b.k;
import com.mnt.impl.g;
import com.mnt.impl.h.a;
import com.mnt.impl.l.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        b bVar = null;
        try {
            new g();
            String action = intent.getAction();
            if (g.f4038a.equals(action) || g.f4039b.equals(action)) {
                if (TextUtils.isEmpty(h.j(context))) {
                    a.a(context.getApplicationContext(), k.a(j.f3951b), null);
                }
                Uri data = intent.getData();
                if (data != null) {
                    String schemeSpecificPart = data.getSchemeSpecificPart();
                    if (action.equals(g.f4039b)) {
                        g.c = new b(System.currentTimeMillis(), schemeSpecificPart).toString();
                        return;
                    }
                    if (action.equals(g.f4038a)) {
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = 0;
                        String str = g.c;
                        if (!TextUtils.isEmpty(str) && str.length() >= 14) {
                            bVar = new b(Long.valueOf(str.substring(0, 13)).longValue(), str.substring(13));
                        }
                        if (bVar != null && schemeSpecificPart.equals(bVar.f4090b)) {
                            j = bVar.f4089a;
                        }
                        if (currentTimeMillis - j < 30000) {
                            g.a(context, schemeSpecificPart);
                        } else {
                            g.a(context, schemeSpecificPart);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
