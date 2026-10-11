package com.cmcm.orion.picks.impl;

import android.content.Context;
import android.text.TextUtils;
import com.cmcm.orion.picks.impl.h;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* compiled from: VastAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {
    private boolean B;
    private String D;
    private boolean E;

    /* renamed from: a, reason: collision with root package name */
    private int f976a;

    /* renamed from: b, reason: collision with root package name */
    private int f977b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private h t;
    private h.a u;
    private com.cmcm.orion.picks.a.a.a v;
    private String w;
    private boolean x = true;
    private boolean y = true;
    private boolean z = false;
    private boolean A = false;
    private boolean C = false;

    static /* synthetic */ boolean b(g gVar) {
        gVar.C = true;
        return true;
    }

    /* compiled from: VastAgent.java */
    public enum a {
        CREATE_VIEW(0),
        SHOW(1),
        PLAY_COMPLETE(2),
        PUSH_BACK(3),
        PAUSE(4),
        FIRSTQUARTILE(5),
        MIDPOINT(6),
        THIRDQUARTILE(7),
        MUTE(8),
        UNMUTE(9),
        ERROR(10),
        RESUME(11),
        FULL_SCREEN(12),
        EXIT_FULL_SCREEN(13),
        IMPRESSION(14),
        START(15),
        CLOSE(16),
        CLICK_TRACKING(17),
        COMPANION_CREATE_VIEW(20),
        COMPANION_CLICK_TRACKING(21),
        PROGRESS(22),
        SKIP(23);

        private final int w;

        a(int i) {
            this.w = i;
        }

        public static a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if ("creativeView".equals(str)) {
                return CREATE_VIEW;
            }
            if ("start".equals(str)) {
                return START;
            }
            if ("firstQuartile".equals(str)) {
                return FIRSTQUARTILE;
            }
            if ("midpoint".equals(str)) {
                return MIDPOINT;
            }
            if ("thirdQuartile".equals(str)) {
                return THIRDQUARTILE;
            }
            if ("complete".equals(str)) {
                return PLAY_COMPLETE;
            }
            if ("close".equals(str)) {
                return CLOSE;
            }
            if ("pause".equals(str)) {
                return PAUSE;
            }
            if ("resume".equals(str)) {
                return RESUME;
            }
            if ("mute".equals(str)) {
                return MUTE;
            }
            if ("unmute".equals(str)) {
                return UNMUTE;
            }
            if ("fullscreen".equals(str)) {
                return FULL_SCREEN;
            }
            if ("exitFullscreen".equals(str)) {
                return EXIT_FULL_SCREEN;
            }
            if ("ClickTracking".equals(str)) {
                return CLICK_TRACKING;
            }
            if ("Error".equals(str)) {
                return ERROR;
            }
            if ("Impression".equals(str)) {
                return IMPRESSION;
            }
            if ("CompanionClickTracking".equals(str)) {
                return COMPANION_CLICK_TRACKING;
            }
            if ("progress".equals(str)) {
                return PROGRESS;
            }
            if ("skip".equals(str)) {
                return SKIP;
            }
            return null;
        }
    }

    public g(h hVar) {
        this.w = "";
        this.B = true;
        this.t = hVar;
        if (hVar == null) {
            throw new IllegalStateException("the vast model is null, please check");
        }
        this.v = hVar.p();
        if (this.v != null) {
            this.w = this.v.d();
            this.B = i.c(i.a(this.v.E())) ? false : true;
        }
    }

    public final void a(String str) {
        this.D = str;
    }

    public final h a() {
        return this.t;
    }

    public final int b() {
        return this.f977b;
    }

    public final boolean c() {
        return this.c && !this.d;
    }

    public final void a(int i) {
        if (!this.c) {
            this.c = true;
            if (this.c && !this.p) {
                a(a.PLAY_COMPLETE, i, i);
                com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.g.1
                    @Override // java.lang.Runnable
                    public final void run() {
                    }
                });
                this.p = true;
            }
        }
    }

    public final h.a d() {
        return this.u;
    }

    public final void a(h.a aVar) {
        this.u = aVar;
    }

    public final void a(a aVar) {
        List<String> list;
        if (aVar != a.CREATE_VIEW || !this.E) {
            if (this.u != null && (list = this.u.d().get(aVar)) != null && list.size() > 0) {
                a(list);
            }
            if (aVar == a.CLICK_TRACKING) {
                b(aVar, 0, 0L);
                com.cmcm.orion.utils.internal.a.a().a(this.v, 0, false);
                this.o = true;
            }
            if (aVar == a.COMPANION_CLICK_TRACKING) {
                e();
            }
            if (aVar == a.CREATE_VIEW) {
                this.E = true;
            }
            if (this.B) {
                a(aVar, true, this.f976a, this.f976a);
            }
        }
    }

    public final void a(a aVar, int i, long j) {
        a(aVar, i, j, true);
    }

    private void a(a aVar, int i, long j, boolean z) {
        if (aVar != a.CREATE_VIEW || !this.e) {
            if (aVar != a.SKIP || !this.i) {
                if (aVar != a.MUTE || !this.g) {
                    if (aVar != a.UNMUTE || !this.h) {
                        if (aVar != a.FULL_SCREEN || !this.j) {
                            if (aVar != a.EXIT_FULL_SCREEN || !this.k) {
                                if (aVar != a.RESUME || !this.s) {
                                    if (aVar != a.PAUSE || !this.r) {
                                        if (aVar == a.FIRSTQUARTILE) {
                                            if (!this.q) {
                                                b(i);
                                            }
                                            if (this.l) {
                                                return;
                                            }
                                        }
                                        if (aVar == a.MIDPOINT) {
                                            if (!this.l) {
                                                a(a.FIRSTQUARTILE, i, (int) (i * 0.25f), z);
                                            }
                                            if (this.m) {
                                                return;
                                            }
                                        }
                                        if (aVar == a.THIRDQUARTILE) {
                                            if (!this.m) {
                                                a(a.MIDPOINT, i, (int) (i * 0.5f), z);
                                            }
                                            if (this.n) {
                                                return;
                                            }
                                        }
                                        if (aVar == a.PLAY_COMPLETE) {
                                            if (!this.n) {
                                                a(a.THIRDQUARTILE, i, (int) (i * 0.75f), z);
                                            }
                                            if (this.p) {
                                                return;
                                            }
                                        }
                                        b(aVar, i, j);
                                        if (aVar == a.SKIP) {
                                            this.i = true;
                                        }
                                        if (aVar == a.MUTE) {
                                            this.g = true;
                                        }
                                        if (aVar == a.UNMUTE) {
                                            this.h = true;
                                        }
                                        if (aVar == a.FULL_SCREEN) {
                                            this.j = true;
                                        }
                                        if (aVar == a.EXIT_FULL_SCREEN) {
                                            this.k = true;
                                        }
                                        if (aVar == a.CREATE_VIEW) {
                                            this.e = true;
                                        }
                                        if (aVar == a.MIDPOINT) {
                                            this.m = true;
                                        }
                                        if (aVar == a.FIRSTQUARTILE) {
                                            this.l = true;
                                        }
                                        if (aVar == a.THIRDQUARTILE) {
                                            this.n = true;
                                        }
                                        if (aVar == a.RESUME) {
                                            this.s = true;
                                            this.r = false;
                                        }
                                        if (aVar == a.PAUSE) {
                                            this.r = true;
                                            this.s = false;
                                        }
                                        if (aVar == a.CLICK_TRACKING) {
                                            if (z) {
                                                e();
                                            }
                                            com.cmcm.orion.utils.internal.a.a().a(this.v, 0, false);
                                        }
                                        if (this.B) {
                                            a(aVar, false, i, j);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void e() {
        com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.g.2
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    private void b(a aVar, int i, long j) {
        List<String> list;
        if (this.t != null && (list = this.t.d().get(aVar)) != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String replace = it.next().replace("{DURATION}", String.valueOf(i)).replace("{CONTENTPLAYHEAD}", String.valueOf(j > ((long) i) ? i : j)).replace("{CACHEBUSTING}", i.a()).replace("{TIMESTAMP}", String.valueOf(System.currentTimeMillis() / 1000));
                if (this.D != null && !this.D.isEmpty()) {
                    replace = replace.replace("{LOCKPKG}", this.D);
                }
                arrayList.add(replace);
            }
            a(arrayList);
        }
    }

    public final void a(int i, long j) {
        List<h.b> list;
        if (this.t != null && (list = this.t.e().get(a.PROGRESS)) != null) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < list.size()) {
                    h.b bVar = list.get(i3);
                    long a2 = i.a(i, bVar.a());
                    if (a2 >= 0 && a2 <= i && j >= a2 && !bVar.c()) {
                        String replace = bVar.b().replace("{DURATION}", String.valueOf(i)).replace("{CONTENTPLAYHEAD}", String.valueOf(j > ((long) i) ? i : j)).replace("{CACHEBUSTING}", i.a()).replace("{TIMESTAMP}", String.valueOf(System.currentTimeMillis() / 1000));
                        if (this.D != null && !this.D.isEmpty()) {
                            replace = replace.replace("{LOCKPKG}", this.D);
                        }
                        com.cmcm.orion.utils.d.a(replace);
                        bVar.d();
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public final void b(int i) {
        if (!this.q) {
            if (!this.e) {
                a(a.CREATE_VIEW, i, 0L);
            }
            if (!this.f) {
                this.f = true;
                a(a.START, i, 0L);
                a(a.IMPRESSION, i, 0L);
            }
            if (this.B) {
                HashMap hashMap = new HashMap();
                if (this.D != null && !this.D.isEmpty()) {
                    hashMap.put("lockpkg", this.D);
                }
                com.cmcm.orion.picks.a.a.a aVar = this.v;
                String str = this.w;
                if (hashMap.isEmpty()) {
                    hashMap = null;
                }
                com.cmcm.orion.picks.a.b.a("view", aVar, str, "", hashMap);
                a(a.SHOW, false, i, 0L);
            }
            this.q = true;
            com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.g.3
                @Override // java.lang.Runnable
                public final void run() {
                    if (!g.this.C) {
                        g.b(g.this);
                    }
                }
            });
        }
    }

    private void a(a aVar, boolean z, int i, long j) {
        String valueOf;
        if (i >= 0) {
            HashMap hashMap = new HashMap();
            hashMap.put(VastIconXmlManager.DURATION, String.valueOf(i));
            hashMap.put("playtime", String.valueOf(j));
            if (this.D != null && !this.D.isEmpty()) {
                hashMap.put("lockpkg", this.D);
            }
            boolean z2 = aVar == a.CLICK_TRACKING;
            if (z2) {
                valueOf = "0";
            } else if (aVar != a.CREATE_VIEW) {
                valueOf = String.valueOf(aVar.w);
            } else {
                valueOf = z ? String.valueOf(a.COMPANION_CREATE_VIEW.w) : String.valueOf(a.CREATE_VIEW.w);
            }
            hashMap.put("event", valueOf);
            com.cmcm.orion.picks.a.b.a(z2 ? "vast_click" : "vast_play", this.t.p(), this.w, (String) null, hashMap);
        }
    }

    public static void a(h hVar, int i) {
        List<String> list;
        if (hVar != null && (list = hVar.d().get(a.ERROR)) != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < list.size()) {
                    String str = list.get(i3);
                    if (!TextUtils.isEmpty(str)) {
                        arrayList.add(str.replaceAll("ERRORCODE", String.valueOf(i)));
                    }
                    i2 = i3 + 1;
                } else {
                    a(arrayList);
                    return;
                }
            }
        }
    }

    public final void a(Context context) {
        com.cmcm.orion.picks.a.a.a p = this.t.p();
        if (p != null && context != null) {
            com.cmcm.orion.picks.c.a.a(context, p.d(), p);
        }
    }

    private static void a(List<String> list) {
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                com.cmcm.orion.utils.d.a(it.next());
            }
        }
    }
}
