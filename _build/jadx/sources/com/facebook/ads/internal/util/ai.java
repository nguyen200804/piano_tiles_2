package com.facebook.ads.internal.util;

import java.util.Iterator;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ai {
    public static String a(Set<String> set, String str) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(str);
        }
        return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : "";
    }
}
