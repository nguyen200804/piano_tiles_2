package com.cmcm.orion.picks.a.a;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.cmcm.orion.adsdk.b;
import com.cmcm.orion.picks.a.a.g;
import com.cmcm.orion.utils.b;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AppLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends AsyncTask<Void, Void, i> {

    /* renamed from: b, reason: collision with root package name */
    protected g.b f824b;
    protected final String c;
    protected final int d;
    protected final int e;
    public long f;
    public boolean g;
    private long h;
    private final boolean j;
    private int k;
    private Map<String, String> l;
    private int s;

    /* renamed from: a, reason: collision with root package name */
    private boolean f823a = false;
    private i i = null;
    private long m = -1;
    private String n = "0";
    private boolean o = true;
    private int p = 15;
    private boolean q = false;
    private boolean r = false;
    private int t = 0;
    private int u = 0;
    private boolean v = false;
    private i w = null;

    @Override // android.os.AsyncTask
    protected /* bridge */ /* synthetic */ void onPostExecute(i iVar) {
    }

    public c(int i, int i2, String str, boolean z, int i3, Map<String, String> map) {
        this.k = 1;
        this.c = str;
        this.d = i;
        this.e = i2;
        this.j = z;
        this.k = i3;
        this.l = map;
    }

    public final void a(long j) {
        if (j > 1800000) {
            this.m = j;
        }
    }

    public final void a(String str) {
        if (com.cmcm.orion.utils.b.f(str)) {
            this.n = str;
        }
    }

    public final void b(int i) {
        this.t = i;
    }

    public final void c(int i) {
        this.u = i;
    }

    public final void d(int i) {
        this.p = i;
    }

    private boolean f(int i) {
        return (this.p & i) == i;
    }

    private URI b() {
        this.f824b = new g.b();
        this.f824b.a(this.c).b(this.d).a(this.e);
        if (this.d == 0) {
            this.f824b.d(0);
        } else {
            this.f824b.d(Integer.parseInt(h.b(this.c + "_pageloader_offset", "0")));
        }
        this.f824b.b(this.n);
        if (this.t != 0) {
            this.f824b.e(this.t);
            new StringBuilder("support vext =").append(this.t);
        }
        if (this.u != 0) {
            this.f824b.f(this.u);
        }
        if (this.s >= 0) {
            this.f824b.c(this.s);
        }
        if (this.l != null && !this.l.isEmpty()) {
            this.f824b.a(this.l);
        }
        return this.f824b.a();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        this.g = false;
        this.f = System.currentTimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0041, code lost:
    
        r3 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c() {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.a.a.c.c():void");
    }

    private int g(int i) {
        if (i == 0) {
            if (this.i == null) {
                return 116;
            }
            if (!this.i.e()) {
                return 113;
            }
            if (this.i.b() == null || this.i.b().size() <= 0) {
                return 102;
            }
            if (!this.o) {
                if (!this.v) {
                    i.a(this.i.b(), this.j, this.p);
                }
                new StringBuilder("after filter net has ads number:").append(this.i.b() == null ? 0 : this.i.b().size());
            }
            if (this.i.b() == null || this.i.b().size() <= 0) {
                return 103;
            }
            return i;
        }
        return i;
    }

    private int a(URI uri) {
        m mVar = new m();
        long currentTimeMillis = System.currentTimeMillis();
        b.AnonymousClass1 b2 = com.cmcm.orion.utils.d.b(uri.toString());
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (mVar.f848a == 0) {
            String str = "";
            if (b2.f1064b == 200) {
                str = b2.f1063a;
            } else if (b2.f1064b == -1) {
                mVar.f848a = 105;
            } else {
                mVar.f848a = 104;
            }
            if (mVar.f848a == 0) {
                if (!TextUtils.isEmpty(str)) {
                    this.i = i.a(this.c, this.n, str, mVar);
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            String string = new JSONObject(str).getString("ext");
                            if (!TextUtils.isEmpty(string)) {
                                String str2 = new String(com.cmcm.orion.utils.b.b("7069636b733230313531313034".getBytes(), com.cmcm.orion.utils.b.b(string)), "UTF-8");
                                if (!TextUtils.isEmpty(str2)) {
                                    JSONArray jSONArray = new JSONArray(str2);
                                    ArrayList arrayList = new ArrayList();
                                    for (int i = 0; i < jSONArray.length(); i++) {
                                        JSONObject optJSONObject = jSONArray.optJSONObject(i);
                                        if (optJSONObject != null) {
                                            a aVar = new a();
                                            aVar.j(optJSONObject.optString("pkg_url", ""));
                                            aVar.a(optJSONObject.optString("click_tracking_url", ""));
                                            aVar.b(optJSONObject.optString("third_imp_url", ""));
                                            aVar.b(optJSONObject.optLong("report_interval", 0L));
                                            aVar.j(optJSONObject.optInt("report_ratio", 100));
                                            arrayList.add(aVar);
                                        }
                                    }
                                    com.cmcm.orion.utils.internal.a.a().a((List<a>) arrayList);
                                }
                            }
                        } catch (Exception e) {
                        }
                    }
                    if (this.i != null && com.cmcm.orion.utils.b.f(this.i.d())) {
                        this.n = this.i.d();
                    }
                    if (this.i != null) {
                        com.cmcm.orion.adsdk.e.a(b.a.LOAD_PICKS_NET_SUCCESS, this.c, "brand", 0L, String.valueOf(mVar), null);
                    } else {
                        com.cmcm.orion.adsdk.e.a(b.a.LOAD_PICKS_NET_FAIL, this.c, "brand", 0L, String.valueOf(mVar), null);
                    }
                    if (this.i != null && com.cmcm.orion.utils.b.f(this.i.d())) {
                        this.n = this.i.d();
                    }
                } else {
                    m.a(mVar, 106);
                }
            }
        }
        int i2 = 0;
        if (mVar.f848a == 0) {
            if (this.i != null && this.i.e()) {
                if (this.i.b() == null || this.i.b().size() <= 0) {
                    i2 = 102;
                }
            } else {
                i2 = 113;
            }
        } else {
            i2 = mVar.f848a;
        }
        com.cmcm.orion.adsdk.e.a(this.c, b2.f1064b, currentTimeMillis2, b2.c, i2);
        return mVar.f848a;
    }

    private void d() {
        this.h = System.currentTimeMillis();
        h.a(f(), this.h);
    }

    private void e() {
        this.h = 0L;
        h.a(f(), 0L);
    }

    private String f() {
        if (com.cmcm.orion.utils.b.f(this.n)) {
            return this.c + "_cache_time_" + this.n + "_" + b.f822a;
        }
        return this.c + "_cache_time_" + b.f822a;
    }

    private boolean g() {
        long c;
        if (this.m > 0) {
            c = this.m;
        } else {
            c = h.c(this.c);
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (this.h <= 0) {
            this.h = h.g(f());
        }
        return currentTimeMillis - (c + this.h) > 0;
    }

    private int h() {
        m mVar = new m();
        if (mVar.f848a == 0) {
            this.i = com.cmcm.orion.picks.a.c.a().a(this.c + "_" + this.d + "_" + this.n);
            if (this.i == null || this.i.b() == null || this.i.b().size() == 0) {
                String str = this.c;
                if (com.cmcm.orion.utils.b.f(this.n)) {
                    str = str + "_" + this.n;
                }
                List<a> a2 = j.a().a(str, mVar);
                if (mVar.f848a == 0) {
                    if (a2.isEmpty()) {
                        m.a(mVar, 112);
                    } else {
                        this.i = new i();
                        this.i.a(this.n);
                        this.i.a(a2);
                        b(this.i);
                    }
                }
            }
        }
        if (this.i != null) {
            com.cmcm.orion.adsdk.e.a(b.a.LOAD_PICKS_CACHE_SUCCESS, this.c, "brand", 0L, String.valueOf(mVar.f848a), null);
        } else {
            com.cmcm.orion.adsdk.e.a(b.a.LOAD_PICKS_CACHE_FAIL, this.c, "brand", 0L, String.valueOf(mVar.f848a), null);
        }
        return mVar.f848a;
    }

    private boolean i() {
        List<a> b2;
        if (this.i != null && (b2 = this.i.b()) != null && b2.size() > 0) {
            new StringBuilder("before filter cache has ads number:").append(b2.size());
            a(b2);
            new StringBuilder("after filter cache has ads number:").append(b2.size());
            if (b2.size() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01c9 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.List<com.cmcm.orion.picks.a.a.a> r7) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.a.a.c.a(java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0066 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0020 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.cmcm.orion.picks.a.a.i r8, com.cmcm.orion.picks.a.a.i r9) {
        /*
            r7 = this;
            r2 = 0
            if (r8 == 0) goto L13
            java.util.List r0 = r8.b()
            if (r0 == 0) goto L13
            java.util.List r0 = r8.b()
            int r0 = r0.size()
            if (r0 != 0) goto L14
        L13:
            return
        L14:
            java.util.List r3 = r8.b()
            java.util.List r0 = r9.b()
            java.util.Iterator r4 = r0.iterator()
        L20:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L6c
            java.lang.Object r0 = r4.next()
            com.cmcm.orion.picks.a.a.a r0 = (com.cmcm.orion.picks.a.a.a) r0
            boolean r1 = r3.contains(r0)
            if (r1 == 0) goto L20
            int r1 = r3.indexOf(r0)
            java.lang.Object r1 = r3.get(r1)
            com.cmcm.orion.picks.a.a.a r1 = (com.cmcm.orion.picks.a.a.a) r1
            java.lang.String r5 = r1.E()
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 != 0) goto L6a
            java.lang.String r1 = new java.lang.String
            byte[] r6 = r5.getBytes()
            byte[] r6 = android.util.Base64.decode(r6, r2)
            r1.<init>(r6)
            java.lang.String r6 = "VAST"
            boolean r6 = r1.contains(r6)
            if (r6 == 0) goto L6a
            java.lang.String r6 = "http"
            boolean r1 = r1.startsWith(r6)
            if (r1 != 0) goto L6a
            r1 = 1
        L64:
            if (r1 == 0) goto L20
            r0.r(r5)
            goto L20
        L6a:
            r1 = r2
            goto L64
        L6c:
            r0 = 0
            r7.w = r0
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.a.a.c.a(com.cmcm.orion.picks.a.a.i, com.cmcm.orion.picks.a.a.i):void");
    }

    private void b(i iVar) {
        String str = this.c + "_" + this.d + "_" + iVar.d();
        com.cmcm.orion.picks.a.c.a().a(str, iVar);
        this.i = com.cmcm.orion.picks.a.c.a().a(str);
    }

    public void a(int i) {
    }

    public void a(i iVar) {
        h.a(this.c + "_pageloader_offset", new StringBuilder().append(iVar.a()).toString());
    }

    public final boolean a() {
        return this.r;
    }

    public final void e(int i) {
        this.s = i;
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ i doInBackground(Void[] voidArr) {
        boolean z;
        boolean z2;
        int i;
        int h;
        boolean z3;
        if (1 == this.k) {
            z = g() || this.d != 0 || this.f823a;
        } else {
            z = 2 == this.k;
        }
        if (!z) {
            i = h();
            if (i == 0) {
                z2 = i();
                if (z2 && !this.q) {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
        } else {
            if (2 != this.k && !this.j && (h = h()) == 0 && !i()) {
                int g = g(h);
                this.w = new i();
                this.w.a(this.n);
                this.w.a(this.i.b());
                com.cmcm.orion.picks.a.c.a().b(this.c + "_" + this.d + "_" + this.n);
                if (g != 0) {
                    a(g);
                    z2 = true;
                    i = 0;
                } else {
                    this.r = true;
                    this.v = true;
                    c();
                }
            }
            z2 = true;
            i = 0;
        }
        if (!this.v && z2 && 3 != this.k) {
            this.g = true;
            m mVar = new m();
            URI b2 = b();
            if (b2 == null) {
                m.a(mVar, 107);
            } else if (mVar.f848a == 0) {
                m.a(mVar, a(b2));
                if (mVar.f848a == 0 && this.i != null) {
                    i iVar = this.i;
                    if (this.k != 2) {
                        a(this.w, iVar);
                        b(iVar);
                        String str = this.c;
                        if (iVar != null && com.cmcm.orion.utils.b.f(iVar.d())) {
                            str = str + "_" + iVar.d();
                        }
                        z3 = j.a().a(str, iVar.b()) == iVar.b().size();
                    } else {
                        z3 = true;
                    }
                    if (z3 && this.k != 2) {
                        e();
                        if (this.d == 0) {
                            d();
                        }
                    }
                }
            }
            if (mVar.f848a != 0) {
                final String str2 = this.c;
                if (com.cmcm.orion.utils.b.f(this.n)) {
                    str2 = str2 + "_" + this.n;
                }
                if ((this.d == 0) && j.a().b(str2) > 0) {
                    com.cmcm.orion.picks.a.c.a().b(this.c + "_" + this.d + "_" + this.n);
                    com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.picks.a.a.c.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                j.a().a(str2);
                            } catch (Exception e) {
                            }
                        }
                    });
                }
            }
            this.f823a = false;
            i = mVar.f848a;
            this.o = false;
        }
        if (!this.v) {
            int g2 = g(i);
            if (g2 != 0) {
                a(g2);
            } else {
                c();
            }
        }
        return this.i;
    }
}
