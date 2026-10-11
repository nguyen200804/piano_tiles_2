package com.facebook.ads.internal.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final List<b> f2873a = new ArrayList();

    public static String a() {
        synchronized (f2873a) {
            if (f2873a.isEmpty()) {
                return "";
            }
            ArrayList arrayList = new ArrayList(f2873a);
            f2873a.clear();
            JSONArray jSONArray = new JSONArray();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jSONArray.put(((b) it.next()).a());
            }
            return jSONArray.toString();
        }
    }

    public static void a(b bVar) {
        synchronized (f2873a) {
            f2873a.add(bVar);
        }
    }
}
