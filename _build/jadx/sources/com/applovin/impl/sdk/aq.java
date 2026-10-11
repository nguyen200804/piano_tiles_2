package com.applovin.impl.sdk;

import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinLogger;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class aq implements de, AppLovinNativeAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    protected final AppLovinSdkImpl f432a;

    /* renamed from: b, reason: collision with root package name */
    protected final AppLovinLogger f433b;
    protected final Object c = new Object();
    protected final Map d = a();
    protected final Map e = new HashMap();
    protected final Set f = new HashSet();

    aq(AppLovinSdkImpl appLovinSdkImpl) {
        this.f432a = appLovinSdkImpl;
        this.f433b = appLovinSdkImpl.getLogger();
    }

    private ar h(c cVar) {
        return (ar) this.d.get(cVar);
    }

    abstract au a(c cVar);

    abstract c a(ay ayVar);

    abstract Map a();

    abstract void a(Object obj, ay ayVar);

    abstract void a(Object obj, c cVar, int i);

    public boolean a(c cVar, Object obj) {
        boolean z;
        synchronized (this.c) {
            if (g(cVar)) {
                z = false;
            } else {
                b(cVar, obj);
                z = true;
            }
        }
        return z;
    }

    public ay b(c cVar) {
        ay e;
        synchronized (this.c) {
            e = h(cVar).e();
        }
        return e;
    }

    void b(ay ayVar) {
        f(a(ayVar));
    }

    protected void b(c cVar, int i) {
        Object remove;
        this.f433b.d("PreloadManager", "Failed to pre-load an ad of spec " + cVar + ", error code " + i);
        synchronized (this.c) {
            remove = this.e.remove(cVar);
            this.f.add(cVar);
        }
        if (remove != null) {
            try {
                a(remove, cVar, i);
            } catch (Throwable th) {
                this.f432a.getLogger().userError("PreloadManager", "Encountered exception while invoking user callback", th);
            }
        }
    }

    public void b(c cVar, Object obj) {
        synchronized (this.c) {
            if (this.e.containsKey(cVar)) {
                this.f433b.w("PreloadManager", "Possibly missing prior registered preload callback.");
            }
            this.e.put(cVar, obj);
        }
    }

    protected void c(ay ayVar) {
        Object obj;
        synchronized (this.c) {
            c a2 = a(ayVar);
            obj = this.e.get(a2);
            this.e.remove(a2);
            this.f.add(a2);
            if (obj == null) {
                h(a2).a(ayVar);
                this.f433b.d("PreloadManager", "Ad enqueued: " + ayVar);
            } else {
                this.f433b.d("PreloadManager", "Additional callback found, skipping enqueue.");
            }
        }
        if (obj != null) {
            this.f433b.d("PreloadManager", "Called additional callback regarding " + ayVar);
            try {
                a(obj, ayVar);
            } catch (Throwable th) {
                this.f432a.getLogger().userError("PreloadManager", "Encountered throwable while notifying user callback", th);
            }
            b(ayVar);
        }
        this.f433b.d("PreloadManager", "Pulled ad from network and saved to preload cache: " + ayVar);
    }

    public boolean c(c cVar) {
        boolean c;
        synchronized (this.c) {
            c = h(cVar).c();
        }
        return c;
    }

    public void d(c cVar) {
        int b2;
        synchronized (this.c) {
            ar h = h(cVar);
            b2 = h.b() - h.a();
        }
        if (b2 > 0) {
            for (int i = 0; i < b2; i++) {
                f(cVar);
            }
        }
    }

    public boolean e(c cVar) {
        boolean z;
        synchronized (this.c) {
            z = !h(cVar).d();
        }
        return z;
    }

    public void f(c cVar) {
        if (!((Boolean) this.f432a.a(av.G)).booleanValue() || c(cVar)) {
            return;
        }
        this.f433b.d("PreloadManager", "Preloading ad for spec " + cVar + "...");
        this.f432a.a().a(a(cVar), bp.MAIN, 500L);
    }

    boolean g(c cVar) {
        boolean contains;
        synchronized (this.c) {
            contains = this.f.contains(cVar);
        }
        return contains;
    }
}
