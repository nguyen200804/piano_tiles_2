package com.facebook.internal;

import android.content.Intent;
import java.util.HashMap;
import java.util.Map;

/* compiled from: CallbackManagerImpl.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class e implements com.facebook.e {

    /* renamed from: a, reason: collision with root package name */
    private static Map<Integer, a> f3194a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private Map<Integer, a> f3195b = new HashMap();

    /* compiled from: CallbackManagerImpl.java */
    public interface a {
        boolean a(int i, Intent intent);
    }

    public static synchronized void a(int i, a aVar) {
        synchronized (e.class) {
            ab.a(aVar, "callback");
            if (!f3194a.containsKey(Integer.valueOf(i))) {
                f3194a.put(Integer.valueOf(i), aVar);
            }
        }
    }

    private static synchronized a a(Integer num) {
        a aVar;
        synchronized (e.class) {
            aVar = f3194a.get(num);
        }
        return aVar;
    }

    private static boolean b(int i, int i2, Intent intent) {
        a a2 = a(Integer.valueOf(i));
        if (a2 != null) {
            return a2.a(i2, intent);
        }
        return false;
    }

    public void b(int i, a aVar) {
        ab.a(aVar, "callback");
        this.f3195b.put(Integer.valueOf(i), aVar);
    }

    @Override // com.facebook.e
    public boolean a(int i, int i2, Intent intent) {
        a aVar = this.f3195b.get(Integer.valueOf(i));
        return aVar != null ? aVar.a(i2, intent) : b(i, i2, intent);
    }

    /* compiled from: CallbackManagerImpl.java */
    public enum b {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7);

        private final int i;

        b(int i) {
            this.i = i;
        }

        public int a() {
            return com.facebook.l.n() + this.i;
        }
    }
}
