package com.cmcm.orion.picks.a;

import android.text.TextUtils;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.picks.a.a.i;
import com.cmcm.orion.picks.impl.a;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

/* compiled from: AdRequestController.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<String, com.cmcm.orion.picks.a.a.c> f816a = new Hashtable();

    /* renamed from: b, reason: collision with root package name */
    private static final Map<String, List<com.cmcm.orion.picks.a.a.c>> f817b = new Hashtable();
    private String c;
    private Map<String, String> h;
    private a.InterfaceC0019a i;
    private long j;
    private String k;
    private int o;
    private int d = 10;
    private int e = 0;
    private boolean f = false;
    private int g = 1;
    private int l = 15;
    private int m = 0;
    private int n = 0;

    public final void a(a.InterfaceC0019a interfaceC0019a) {
        this.i = interfaceC0019a;
    }

    public a(String str) {
        this.c = str;
    }

    public final void a(int i) {
        this.d = i;
    }

    public final void a() {
        this.f = true;
    }

    public final void b(int i) {
        this.m = i;
    }

    public final void b() {
        if (!com.cmcm.orion.utils.b.c(this.c)) {
            new StringBuilder("request controller:posid is not only digits -> posid :").append(this.c);
            a(100, 0L, 1);
            return;
        }
        if (this.d <= 0 || this.d > 30) {
            a(101, 0L, 1);
            return;
        }
        if (!com.cmcm.orion.utils.c.c(com.cmcm.orion.adsdk.e.a())) {
            a(115, 0L, 1);
            return;
        }
        ArrayList<String> a2 = h.a();
        if (!TextUtils.isEmpty(this.c) && a2.contains(this.c)) {
            a(139, 0L, 1);
        } else {
            com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    com.cmcm.orion.picks.a.a.c cVar = new com.cmcm.orion.picks.a.a.c(a.this.e, a.this.d, a.this.c, a.this.f, a.this.g, a.this.h) { // from class: com.cmcm.orion.picks.a.a.1.1
                        @Override // com.cmcm.orion.picks.a.a.c
                        public final void a(int i) {
                            a.this.a(i, System.currentTimeMillis() - this.f, this.g ? 0 : 1);
                        }

                        @Override // com.cmcm.orion.picks.a.a.c
                        public final void a(i iVar) {
                            super.a(iVar);
                            if (iVar == null || iVar.b() == null || iVar.b().size() <= 0) {
                                a.this.a(114, System.currentTimeMillis() - this.f, this.g ? 0 : 1);
                                return;
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.addAll(iVar.b());
                            a.a(a.this, arrayList, System.currentTimeMillis() - this.f, this.g ? 0 : 1);
                        }
                    };
                    cVar.a(a.this.j);
                    cVar.a(a.this.k);
                    cVar.d(a.this.l);
                    cVar.e(a.this.o);
                    cVar.b(a.this.m);
                    cVar.c(a.this.n);
                    a.b(a.this.c, cVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, int i2) {
        if (this.i != null) {
            this.i.b(new b(i));
        }
        com.cmcm.orion.adsdk.e.a(this.c, i, j, i2);
        a(this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(String str, com.cmcm.orion.picks.a.a.c cVar) {
        synchronized (a.class) {
            if (!f816a.containsKey(str)) {
                com.cmcm.orion.utils.a.a(cVar, new Void[0]);
                f816a.put(str, cVar);
            } else {
                List<com.cmcm.orion.picks.a.a.c> arrayList = f817b.get(str) == null ? new ArrayList<>() : f817b.get(str);
                arrayList.add(cVar);
                f817b.put(str, arrayList);
            }
        }
    }

    private static synchronized void a(String str) {
        synchronized (a.class) {
            List<com.cmcm.orion.picks.a.a.c> list = f817b.get(str);
            f816a.remove(str);
            if (list != null && list.size() > 0) {
                com.cmcm.orion.picks.a.a.c remove = list.remove(0);
                f817b.put(str, list);
                new StringBuilder("request controller:extra-posid:").append(str).append(", task num ").append(list.size()).append("\n -loading:").append(f816a.containsKey(str)).append("  hashCode:").append(remove.hashCode());
                f816a.put(str, remove);
                com.cmcm.orion.utils.a.a(remove, new Void[0]);
            }
        }
    }

    static /* synthetic */ void a(a aVar, List list, long j, int i) {
        if (aVar.i != null) {
            aVar.i.a(new b((List<com.cmcm.orion.picks.a.a.a>) list));
        }
        com.cmcm.orion.adsdk.e.a(aVar.c, 0, j, i);
        com.cmcm.orion.picks.a.a.c remove = f816a.remove(aVar.c);
        if (remove != null && remove.a()) {
            a aVar2 = new a(aVar.c);
            aVar2.d = aVar.d;
            aVar2.f = true;
            aVar2.b();
            return;
        }
        a(aVar.c);
    }
}
