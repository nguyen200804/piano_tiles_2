package com.cmplay.exitpopup;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.i;
import com.cmplay.internalpush.a.a.b;
import com.cmplay.internalpush.data.o;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import com.cmplay.internalpush.k;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ExitGameParseCloudData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends o {
    private static b m;
    private HashMap<String, Integer> n = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public HashMap<String, Boolean> f1348a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public HashMap<String, Boolean> f1349b = new HashMap<>();

    private b(Context context) {
        this.j = context.getApplicationContext();
        k.f1477a = context;
        com.cmplay.internalpush.a.a.b.a().a(this);
    }

    public static b a(Context context) {
        if (m == null) {
            m = new b(context);
        }
        return m;
    }

    @Override // com.cmplay.internalpush.data.o
    public String a() {
        return "section_quit_card";
    }

    public HashMap<String, Integer> b() {
        return this.n;
    }

    @Override // com.cmplay.internalpush.data.o
    public CopyOnWriteArrayList<com.cmplay.internalpush.data.c> c() {
        Iterator<com.cmplay.internalpush.data.c> it = this.d.iterator();
        while (it.hasNext()) {
            com.cmplay.internalpush.data.c next = it.next();
            next.l(com.cmplay.internalpush.a.a.b.a(this.j, a(), next.y()));
            next.d(com.cmplay.internalpush.a.a.b.a(this.j, a(), next.l()));
        }
        boolean sp_getBooleanValue = IpcSpHelper.getInstance().sp_getBooleanValue(a(), false);
        String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "none");
        g.a("cloudVersion =" + b2);
        if (sp_getBooleanValue) {
            com.cmplay.internalpush.o.a().a(b2, 1, "exit_game", "");
        } else {
            com.cmplay.internalpush.o.a().a(b2, 2, "exit_game", "");
        }
        return super.c();
    }

    @Override // com.cmplay.internalpush.a.a.a
    public void d() {
        String a2 = com.cmplay.internalpush.a.a.b.a().a(i.b(), a());
        this.f1348a.clear();
        if (TextUtils.isEmpty(a2)) {
            this.f1348a.put("not_data", Boolean.valueOf(NativeUtil.isNetworkAvailable()));
        }
        g.a("internal_push", "startAsynPreLoadImg ExitGame json:" + a2);
        a(a2);
        g.a("internal_push", "startAsynPreLoadImg ExitGame mInfoList.size():" + this.d.size());
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<com.cmplay.internalpush.data.c> it = this.d.iterator();
        while (it.hasNext()) {
            com.cmplay.internalpush.data.c next = it.next();
            arrayList.add(next.l());
            arrayList.add(next.y());
        }
        this.f1349b.clear();
        com.cmplay.internalpush.a.a.b.a().a(new com.cmplay.base.util.c.b() { // from class: com.cmplay.exitpopup.b.1
            @Override // com.cmplay.base.util.c.b
            public void a(String str, String str2) {
                b.this.f1349b.put(str, Boolean.valueOf(NativeUtil.isNetworkAvailable()));
            }

            @Override // com.cmplay.base.util.c.b
            public void a(Bitmap bitmap, String str, String str2) {
            }
        });
        com.cmplay.internalpush.a.a.b.a().a(a(), arrayList, (b.a) null);
    }

    private boolean c(boolean z) {
        boolean z2;
        Iterator<com.cmplay.internalpush.data.c> it = this.d.iterator();
        while (it.hasNext()) {
            com.cmplay.internalpush.data.c next = it.next();
            if (next != null && next.x() >= next.j()) {
                next.e(0);
            }
        }
        a(this.d);
        long b2 = aa.b("last_show_open_screen_time" + a(), 0L);
        long b3 = aa.b("last_show_hit_top_time" + a(), 0L);
        long b4 = aa.b("last_last_shield_time" + a(), 0L);
        StringBuilder sb = new StringBuilder();
        int size = this.d.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z2 = false;
                break;
            }
            com.cmplay.internalpush.data.c cVar = this.d.get(i);
            if (cVar != null) {
                com.cmplay.internalpush.a.c.f1411a = 0;
                boolean a2 = com.cmplay.internalpush.a.c.a(cVar, b4);
                if (a2 && b4 > 0) {
                    aa.a("last_last_shield_time" + a() + cVar.r(), 0L);
                }
                if (com.cmplay.internalpush.a.c.a(cVar, z) && com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, b2, b3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar) && a2 && com.cmplay.internalpush.a.c.e(cVar) && com.cmplay.internalpush.a.c.a(cVar, b4) && com.cmplay.internalpush.a.c.k(cVar)) {
                    this.f.add(cVar);
                    g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                    z2 = true;
                    break;
                }
                if (i != 0) {
                    sb.append("!");
                }
                sb.append(String.valueOf(cVar.h()));
                sb.append(":");
                sb.append(String.valueOf(com.cmplay.internalpush.a.c.f1411a));
                int i2 = com.cmplay.internalpush.a.c.f1411a;
                if (i2 == 11) {
                    i2 = (this.f1349b.get(cVar.y()) == null || !this.f1349b.get(cVar.y()).booleanValue()) ? 110 : 11;
                } else if (com.cmplay.internalpush.a.c.f1411a == 8) {
                    i2 = (this.f1349b.get(cVar.l()) == null || !this.f1349b.get(cVar.l()).booleanValue()) ? 80 : 8;
                }
                this.n.put(cVar.h() + "", Integer.valueOf(i2));
                g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
            }
            i++;
        }
        g.a("internal_push", "ExitGameParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:" + z2 + "   mInfoList.size():" + this.d.size());
        if (!z2) {
            com.cmplay.internalpush.o.a().a(5, 4, "", 0L, sb.toString(), 0, 0, 0L);
        } else {
            this.n.clear();
        }
        return z2;
    }

    public boolean a(boolean z, boolean z2) {
        boolean z3;
        g.a("internal_push", "ExitGameParseCloudData.canShow()");
        this.f.clear();
        c();
        this.n.clear();
        if (!this.d.isEmpty()) {
            long b2 = aa.b("last_show_open_screen_time" + a(), 0L);
            long b3 = aa.b("last_show_hit_top_time" + a(), 0L);
            int size = this.d.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z3 = false;
                    break;
                }
                com.cmplay.internalpush.data.c cVar = this.d.get(i);
                if (cVar != null) {
                    long b4 = aa.b("last_last_shield_time" + a() + cVar.r(), 0L);
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    boolean a2 = com.cmplay.internalpush.a.c.a(cVar, b4);
                    if (a2 && b4 > 0) {
                        aa.a("last_last_shield_time" + a() + cVar.r(), 0L);
                    }
                    if (com.cmplay.internalpush.a.c.a(cVar, z) && com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, b2, b3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar) && a2 && com.cmplay.internalpush.a.c.e(cVar) && com.cmplay.internalpush.a.c.a(cVar, b4) && com.cmplay.internalpush.a.c.k(cVar)) {
                        this.f.add(cVar);
                        g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                        z3 = true;
                        break;
                    }
                    g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                }
                i++;
            }
            g.a("internal_push", "ExitGameParseCloudData.canShow()  canShow:" + z3 + "  mInfoList.size()" + this.d.size());
            if (!z3) {
                return c(z);
            }
            return z3;
        }
        g.a("internal_push", "ExitGameParseCloudData.canShow()  没有数据");
        com.cmplay.internalpush.o.a().a(5, 4, "", 0L, String.valueOf(10), 0, 0, 0L);
        return false;
    }

    public c a(boolean z) {
        g.a("internal_push", "ExitGameParseCloudData.getInfoForShow()");
        if (this.f.isEmpty()) {
            return null;
        }
        com.cmplay.internalpush.data.c cVar = this.f.get(0);
        a(cVar.h(), 1);
        if (cVar.ac()) {
            aa.a("last_show_hit_top_time" + a(), System.currentTimeMillis());
        } else {
            aa.a("last_show_open_screen_time" + a(), System.currentTimeMillis());
        }
        if (z) {
            com.cmplay.internalpush.o.a().a(5, 1, cVar.r(), cVar.h(), "", a.a().b(), 0, cVar.i());
        }
        return new c(cVar.h(), cVar.r(), cVar.g(), cVar.z(), cVar.m(), cVar.A(), cVar.B(), cVar.C(), cVar.D(), cVar.t(), cVar.s(), cVar.M(), cVar.i());
    }

    public String b(boolean z) {
        c a2 = a(z);
        if (a2 == null) {
            return null;
        }
        return a2.a();
    }
}
