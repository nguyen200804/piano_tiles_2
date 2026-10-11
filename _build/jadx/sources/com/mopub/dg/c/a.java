package com.mopub.dg.c;

import android.content.Context;
import com.mopub.dg.adapi.AdData;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap f4257a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private Context f4258b;
    private com.mopub.dg.a.a c;
    private com.mopub.dg.b.b e;
    private List i;
    private String j;
    private long f = -1;
    private long g = -1;
    private boolean h = false;
    private com.mopub.dg.b.c d = new com.mopub.dg.b.c();

    private a(Context context, String str, String str2) {
        this.f4258b = context;
        this.j = str2;
        this.c = new com.mopub.dg.a.a(context, str, str2);
    }

    private a(Context context, String str, String str2, String str3) {
        this.f4258b = context;
        this.c = new com.mopub.dg.a.a(context, str, str2, str3);
    }

    public static synchronized a a(Context context, com.mopub.dg.b.d dVar, String str, String str2) {
        a aVar;
        synchronized (a.class) {
            aVar = (a) f4257a.get(str2);
            if (aVar == null) {
                aVar = new a(context, str, str2);
                f4257a.put(str2, aVar);
            }
            com.mopub.dg.b.c cVar = aVar.d;
            aVar.e = com.mopub.dg.b.c.a(context, dVar);
            aVar.e.f4253a = str;
            aVar.e.f4254b = str2;
        }
        return aVar;
    }

    public static synchronized a a(Context context, com.mopub.dg.b.d dVar, String str, String str2, String str3) {
        a aVar;
        synchronized (a.class) {
            String str4 = str2 + str3;
            aVar = (a) f4257a.get(str4);
            if (aVar == null) {
                aVar = new a(context, str, str2, str3);
                f4257a.put(str4, aVar);
            }
            com.mopub.dg.b.c cVar = aVar.d;
            aVar.e = com.mopub.dg.b.c.a(context, dVar);
            aVar.e.f4253a = str;
            aVar.e.f4254b = str2;
            aVar.e.c = str3;
        }
        return aVar;
    }

    static /* synthetic */ List a(a aVar, String str, boolean z, boolean z2) {
        ArrayList a2 = aVar.e.a(str);
        if (z2) {
            com.mopub.dg.e.a.a.l.b(a2, aVar.f4258b);
        }
        if (z) {
            aVar.c.b();
            Iterator it = a2.iterator();
            while (it.hasNext()) {
                aVar.c.a((AdData) it.next());
            }
        }
        return a2;
    }

    static /* synthetic */ boolean b(a aVar) {
        aVar.h = false;
        return false;
    }

    public final void a(AdData adData) {
        String str = "";
        String str2 = "";
        if (adData != null) {
            try {
                if (!com.mopub.dg.d.a.a(adData.getClickTrackUrl())) {
                    str = adData.getAdID();
                    str2 = adData.getClickRecordUrl();
                }
            } catch (Exception e) {
                com.mopub.dg.d.n.a(e);
                return;
            }
        }
        com.mopub.dg.e.a.a.l.c(adData, this.f4258b);
        if (g.c) {
            this.c.b(str);
        } else {
            this.c.a(str);
        }
        if (str2 != null && str2 != "") {
            try {
                com.mopub.dg.d.k.a(str2, new b(this));
            } catch (Exception e2) {
                com.mopub.dg.d.n.a(e2);
                return;
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put(VastExtensionXmlManager.TYPE, "31");
        hashMap.put("useApk", String.valueOf(false));
        hashMap.put("pkg", adData.getPackageName());
        com.mopub.dg.e.a.b.c.a(this.f4258b, "http://adbsc.krmobi.com/dzzb", true, hashMap);
    }

    public final synchronized void a(k kVar) {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            if (com.mopub.dg.d.a.b(this.f4258b)) {
                if (this.c != null) {
                    com.mopub.dg.d.b.b a2 = com.mopub.dg.d.b.b.a(this.f4258b);
                    String str = this.j + g.m;
                    this.f = a2.b(str, -1L);
                    long b2 = a2.b(g.o, g.n);
                    if (this.f == -1 || Math.abs(System.currentTimeMillis() - this.f) > b2) {
                        this.f = System.currentTimeMillis();
                        a2.a(str, this.f);
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        List a3 = this.c.a();
                        if (a3.size() > 0) {
                            kVar.a(a3);
                        }
                    }
                }
                com.mopub.dg.d.b.b a4 = com.mopub.dg.d.b.b.a(this.f4258b);
                String str2 = this.j + g.p;
                this.g = a4.b(str2, -1L);
                long b3 = a4.b(g.r, g.q);
                long currentTimeMillis = System.currentTimeMillis();
                if (this.g == -1 || Math.abs(currentTimeMillis - this.g) > b3) {
                    this.g = currentTimeMillis;
                    a4.a(str2, this.g);
                    z2 = true;
                }
                if (z2) {
                    a(kVar, true, true);
                } else if (kVar != null) {
                    kVar.a(null);
                }
            } else if (kVar != null) {
                kVar.a(null);
            }
        }
    }

    public final synchronized void a(k kVar, boolean z, boolean z2) {
        com.mopub.dg.d.n.a("Request ads...");
        if (com.mopub.dg.d.a.b(this.f4258b)) {
            if (!this.h) {
                this.h = true;
                c cVar = new c(this, this.f4258b.getMainLooper(), kVar);
                if (com.mopub.dg.d.h.a(this.f4258b).c().equals("")) {
                    com.mopub.dg.d.h.a(this.f4258b).a(new e(this, z, z2, cVar));
                } else {
                    com.mopub.dg.d.k.a(this.e.a(), new d(this, z, z2, cVar));
                }
            }
        } else if (kVar != null) {
            kVar.a(null);
        }
    }
}
