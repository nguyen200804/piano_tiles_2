package com.cmplay.internalpush.data;

import android.content.Context;
import android.net.Uri;
import com.cmplay.internalpush.a.a.b;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: ResultPageParseCloudData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p extends o {

    /* renamed from: a, reason: collision with root package name */
    private static p f1463a;

    private p(Context context) {
        this.j = context.getApplicationContext();
        com.cmplay.internalpush.a.d.a(context);
        com.cmplay.internalpush.k.f1477a = context;
        com.cmplay.internalpush.a.a.b.a().a(this);
    }

    public static p a(Context context) {
        if (f1463a == null) {
            f1463a = new p(context);
        }
        return f1463a;
    }

    @Override // com.cmplay.internalpush.data.o
    public String a() {
        return "section_result_card";
    }

    @Override // com.cmplay.internalpush.data.o
    public CopyOnWriteArrayList<c> c() {
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            next.l(com.cmplay.internalpush.a.a.b.a(this.j, a(), next.y()));
        }
        boolean sp_getBooleanValue = IpcSpHelper.getInstance().sp_getBooleanValue(a(), false);
        String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "none");
        com.cmplay.base.util.g.a("cloudVersion =" + b2);
        if (sp_getBooleanValue) {
            com.cmplay.internalpush.o.a().a(b2, 1, "result_page", "");
        } else {
            com.cmplay.internalpush.o.a().a(b2, 2, "result_page", "");
        }
        return super.c();
    }

    @Override // com.cmplay.internalpush.a.a.a
    public void d() {
        String a2 = com.cmplay.internalpush.a.a.b.a().a(com.cmplay.base.util.i.b(), a());
        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.startAsynPreLoadImg result card json:" + a2);
        com.cmplay.base.util.g.a("获取结果页魔方数据--------------------" + (a2 != null ? a2.length() : 0));
        a(a2);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<c> it = this.d.iterator();
        boolean z = false;
        while (it.hasNext()) {
            c next = it.next();
            if (next != null) {
                if (com.cmplay.internalpush.a.c.b(next)) {
                    arrayList.add(next.y());
                } else {
                    com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.startAsynPreLoadImg  ProID:" + next.h() + "  已经过期，不下载资源素材");
                }
                if (next != null && com.cmplay.internalpush.a.c.a(next)) {
                    z = true;
                }
            }
            z = z;
        }
        if (!this.d.isEmpty()) {
            com.cmplay.internalpush.o.a().a(2, z ? 21 : 22, "", 0L, z ? "" : Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")), 0, 0, 0L);
        }
        com.cmplay.internalpush.a.a.b.a().a(a(), arrayList, (b.a) null);
    }

    private boolean c(boolean z) {
        boolean z2;
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null && next.x() >= next.j()) {
                next.e(0);
            }
        }
        a(this.d);
        long a2 = com.cmplay.internalpush.a.d.a("last_show_open_screen_time" + a(), 0L);
        long a3 = com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L);
        StringBuilder sb = new StringBuilder();
        int size = this.d.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z2 = false;
                break;
            }
            c cVar = this.d.get(i);
            if (cVar != null) {
                com.cmplay.internalpush.a.c.f1411a = 0;
                if (com.cmplay.internalpush.a.c.a(cVar, z) && com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar) && com.cmplay.internalpush.a.c.k(cVar)) {
                    this.f.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                    z2 = true;
                    break;
                }
                if (i != 0) {
                    sb.append("!");
                }
                sb.append(String.valueOf(cVar.h()));
                sb.append(":");
                sb.append(String.valueOf(com.cmplay.internalpush.a.c.f1411a));
                a(cVar, com.cmplay.internalpush.a.c.f1411a);
                com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
            }
            i++;
        }
        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:" + z2 + "   mInfoList.size():" + this.d.size());
        this.l = sb.toString();
        if (!z2) {
            a(2);
        }
        return z2;
    }

    public void b() {
        com.cmplay.internalpush.o.a().a(2, 4, "", 0L, this.l, com.cmplay.internalpush.p.a().b(), 0, 0L);
    }

    public boolean a(boolean z, boolean z2) {
        boolean z3;
        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.canShow()");
        this.f.clear();
        this.g.clear();
        this.h.clear();
        c();
        if (!this.d.isEmpty()) {
            long a2 = com.cmplay.internalpush.a.d.a("last_show_open_screen_time" + a(), 0L);
            long a3 = com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L);
            boolean a4 = com.cmplay.internalpush.a.b.a(a3);
            int size = this.d.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z3 = false;
                    break;
                }
                c cVar = this.d.get(i);
                if (cVar != null) {
                    if (!a4 && cVar.ac()) {
                        cVar.r(0);
                        cVar.e(0);
                        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.canShow()  不是相同自然天，重置爆款当天展示次");
                    }
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    if (com.cmplay.internalpush.a.c.a(cVar, z) && com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar) && com.cmplay.internalpush.a.c.k(cVar)) {
                        this.f.add(cVar);
                        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                        z3 = true;
                        break;
                    }
                    com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                }
                i++;
            }
            com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.canShow()  canShow:" + z3 + "  mInfoList.size()" + this.d.size());
            if (!z3) {
                return c(z);
            }
            return z3;
        }
        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.canShow()  没有数据");
        com.cmplay.internalpush.o.a().a(2, z ? 17 : 16, "", 0L, String.valueOf(10), com.cmplay.internalpush.p.a().b(), 0, 0L);
        return false;
    }

    public h a(boolean z) {
        com.cmplay.base.util.g.a("internal_push", "ResultPageParseCloudData.getInfoForShowNt()");
        if (this.f.isEmpty()) {
            return null;
        }
        c cVar = this.f.get(0);
        a(cVar.h(), 1);
        if (cVar.ac()) {
            com.cmplay.internalpush.a.d.b("last_show_hit_top_time" + a(), System.currentTimeMillis());
        } else {
            com.cmplay.internalpush.a.d.b("last_show_open_screen_time" + a(), System.currentTimeMillis());
        }
        if (z) {
            com.cmplay.internalpush.o.a().a(2, 1, cVar.r(), cVar.h(), "", com.cmplay.internalpush.p.a().b(), 0, cVar.i());
        }
        return new h(cVar.h(), cVar.r(), cVar.g(), cVar.z(), cVar.A(), cVar.B(), cVar.C(), cVar.D(), cVar.t(), cVar.s(), cVar.b(), cVar.i());
    }

    public String b(boolean z) {
        h a2 = a(z);
        if (a2 == null) {
            return null;
        }
        return a2.a();
    }
}
