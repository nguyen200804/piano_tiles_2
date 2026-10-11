package com.facebook.ads.internal.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    public interface a {
        String D();

        e F();

        Collection<String> G();
    }

    public static Collection<String> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.optString(i));
        }
        return hashSet;
    }

    public static boolean a(Context context, a aVar) {
        Collection<String> G;
        boolean z;
        e F = aVar.F();
        if (F == null || F == e.NONE || (G = aVar.G()) == null || G.isEmpty()) {
            return false;
        }
        Iterator<String> it = G.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (a(context, it.next())) {
                z = true;
                break;
            }
        }
        if (z != (F == e.INSTALLED)) {
            return false;
        }
        String D = aVar.D();
        if (TextUtils.isEmpty(D)) {
            return true;
        }
        com.facebook.ads.internal.g.g.a(context).e(D, null);
        return true;
    }

    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (RuntimeException e2) {
            return false;
        }
    }
}
