package com.cmcm.orion.picks.a;

import android.text.TextUtils;
import com.cmcm.orion.picks.a.a.i;
import java.util.Hashtable;
import java.util.Map;

/* compiled from: GlobalCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static c f853b;

    /* renamed from: a, reason: collision with root package name */
    private Map<String, i> f854a;

    public static c a() {
        if (f853b == null) {
            synchronized (c.class) {
                if (f853b == null) {
                    f853b = new c();
                }
            }
        }
        return f853b;
    }

    public final synchronized void a(String str, i iVar) {
        if (this.f854a == null) {
            this.f854a = new Hashtable();
        }
        if (!TextUtils.isEmpty(str) && iVar != null) {
            this.f854a.put(str, iVar);
            new StringBuilder("setcache").append(str).append(":").append(this.f854a.get(str).b().size());
        }
    }

    public final synchronized i a(String str) {
        i iVar;
        iVar = null;
        if (this.f854a != null && this.f854a.get(str) != null) {
            iVar = new i(this.f854a.get(str));
        }
        return iVar;
    }

    public final synchronized void b(String str) {
        if (this.f854a != null && this.f854a.get(str) != null) {
            new StringBuilder("removecache").append(str).append(":").append(this.f854a.get(str).b().size());
            this.f854a.remove(str);
        }
    }
}
