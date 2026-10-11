package com.cmcm.orion.picks.c;

import android.app.KeyguardManager;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.cmcm.orion.picks.PicksLoadingActivity;
import com.cmcm.orion.picks.a.d;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.webview.PicksBrowser;
import com.cmcm.orion.picks.webview.e;
import com.cmcm.orion.utils.b;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MarketUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    static HashMap<String, String> f879a = new HashMap<>();

    public static void a(Context context, String str, com.cmcm.orion.picks.a.a.a aVar) {
        if (context != null) {
            d dVar = new d(context);
            if (aVar.s() == 8) {
                a(dVar, aVar.m(), aVar, str);
                return;
            }
            if (aVar.s() == 256) {
                b.b(dVar, aVar.m());
                return;
            }
            if (aVar.s() == 512) {
                if (b.a(dVar, aVar.l())) {
                    b.a(dVar, aVar.l(), aVar.h());
                    return;
                } else {
                    a(dVar, aVar.m(), aVar, str);
                    return;
                }
            }
            PicksBrowser.a(new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.c.a.1
                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                public final void d_() {
                    a.a();
                }
            });
            PicksBrowser.a(dVar, aVar.m());
        }
    }

    public static void a() {
    }

    private static void a(final Context context, final String str, final com.cmcm.orion.picks.a.a.a aVar, final String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (b.a(str)) {
                if (b(str, aVar)) {
                    b.a(str, context, aVar);
                    com.cmcm.orion.picks.a.b.a("url_redirected", aVar, str2, "", (Map<String, String>) null);
                    return;
                } else {
                    b(10, str, 0L, aVar, str2);
                    b.a("market://details?id=" + aVar.l(), context, aVar);
                    return;
                }
            }
            String str3 = f879a.get(str);
            if (b.a(str3)) {
                b.a(str3, context, aVar);
                com.cmcm.orion.picks.a.b.a("url_redirected", aVar, str2, "", (Map<String, String>) null);
                return;
            }
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode()) {
                PicksLoadingActivity.a(context);
            }
            final long currentTimeMillis = System.currentTimeMillis();
            new com.cmcm.orion.utils.internal.d(str, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.c.a.2
                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                public final void a(e eVar) {
                    if (eVar != null) {
                        new StringBuilder("onGetGooglePlayUrl: url = ").append(eVar.f1055b);
                        new StringBuilder("onGetGooglePlayUrl: error = ").append(eVar.f1054a);
                        String str4 = eVar.f1055b;
                        a.a(context);
                        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                        if (!b.a(str4)) {
                            a.b(eVar.f1054a, str4, currentTimeMillis2, aVar, str2);
                            str4 = "market://details?id=" + aVar.l();
                        } else if (!a.b(str4, aVar)) {
                            a.b(10, str4, currentTimeMillis2, aVar, str2);
                            str4 = "market://details?id=" + aVar.l();
                        } else {
                            HashMap hashMap = new HashMap();
                            hashMap.put("rt", String.valueOf(currentTimeMillis2));
                            com.cmcm.orion.picks.a.b.a("url_redirected", aVar, str2, "", hashMap);
                            a.f879a.put(str, str4);
                        }
                        b.a(str4, context, aVar);
                    }
                }
            }).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(int i, String str, long j, com.cmcm.orion.picks.a.a.a aVar, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("rt", String.valueOf(j));
        hashMap.put("re", String.valueOf(i));
        try {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put("ru", URLEncoder.encode(Base64.encodeToString(str.getBytes("UTF-8"), 2), "UTF-8"));
            }
        } catch (Exception e) {
            new StringBuilder("onGetGooglePlayUrl: e = ").append(e.getMessage());
        }
        com.cmcm.orion.picks.a.b.a("click_failed", aVar, str2, "", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, com.cmcm.orion.picks.a.a.a aVar) {
        return (TextUtils.isEmpty(str) || aVar == null || !str.contains(new StringBuilder("details?id=").append(aVar.l()).toString())) ? false : true;
    }

    public static boolean a(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        if (keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode()) {
            return false;
        }
        PicksLoadingActivity.b(context);
        return PicksLoadingActivity.f810a;
    }
}
