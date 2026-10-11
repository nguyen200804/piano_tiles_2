package com.cmplay.util;

import android.content.Context;
import android.text.TextUtils;
import com.cmplay.util.w;
import com.mopub.common.Constants;

/* compiled from: MarketUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n {

    /* compiled from: MarketUtil.java */
    public interface a {
        void a(String str, boolean z);
    }

    public static boolean a(final Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if (a(str)) {
            a(context, str, null);
            return false;
        }
        w wVar = new w(context);
        com.cmplay.tile2.ui.view.a.a(Constants.TEN_SECONDS_MILLIS, false, true);
        wVar.a(new w.b() { // from class: com.cmplay.util.n.1
            @Override // com.cmplay.util.w.b
            public void a(String str2) {
                if (com.cmplay.tile2.ui.view.a.a()) {
                    com.cmplay.tile2.ui.view.a.b();
                    n.a(context, str2, null);
                }
            }
        });
        wVar.b(str);
        return true;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("https://play.google.com") || str.startsWith("http://play.google.com") || str.startsWith("market:");
    }

    public static void a(Context context, String str, a aVar) {
        if (context != null && !TextUtils.isEmpty(str)) {
            boolean a2 = a(str);
            if (a2) {
                boolean z = false;
                if (v.a(context)) {
                    z = f.a(str, context);
                }
                if (z) {
                    return;
                }
            }
            if (aVar != null) {
                aVar.a(str, a2);
            }
        }
    }
}
