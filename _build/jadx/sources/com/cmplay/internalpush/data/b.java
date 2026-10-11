package com.cmplay.internalpush.data;

import android.content.Context;
import android.net.Uri;
import com.cmplay.internalpush.a.a.b;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;

/* compiled from: FamilyParseCloudData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends o {

    /* renamed from: b, reason: collision with root package name */
    private static b f1436b;

    /* renamed from: a, reason: collision with root package name */
    protected boolean f1437a = false;

    private b(Context context) {
        this.j = context.getApplicationContext();
        com.cmplay.internalpush.a.d.a(context);
        com.cmplay.internalpush.k.f1477a = context;
        com.cmplay.internalpush.a.a.b.a().a(this);
    }

    public static b a(Context context) {
        if (f1436b == null) {
            f1436b = new b(context);
        }
        return f1436b;
    }

    @Override // com.cmplay.internalpush.data.o
    public String a() {
        return "section_family_popup";
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
            com.cmplay.internalpush.o.a().a(b2, 1, "Family", "");
        } else {
            com.cmplay.internalpush.o.a().a(b2, 2, "Family", "");
        }
        return super.c();
    }

    @Override // com.cmplay.internalpush.a.a.a
    public void d() {
        this.f1437a = false;
        this.f.clear();
        this.g.clear();
        this.h.clear();
        String a2 = com.cmplay.internalpush.a.a.b.a().a(com.cmplay.base.util.i.b(), a());
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.startAsynPreLoadImg Family card json:" + a2);
        com.cmplay.base.util.g.a("获取Family魔方数据--------------------" + (a2 != null ? a2.length() : 0));
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
                    com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.startAsynPreLoadImg  ProID:" + next.h() + "  已经过期，不下载资源素材");
                }
                if (next != null && com.cmplay.internalpush.a.c.a(next)) {
                    z = true;
                }
            }
            z = z;
        }
        if (!this.d.isEmpty()) {
            com.cmplay.internalpush.o.a().a(7, z ? 21 : 22, "", 0L, z ? "" : Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")), 0, 0, 0L);
        }
        com.cmplay.internalpush.a.a.b.a().a(a(), arrayList, (b.a) null);
    }

    private boolean b(boolean z) {
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.resetHaveRotationTimesAndCheckAgain()");
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
        boolean z2 = false;
        while (i < size) {
            c cVar = this.d.get(i);
            if (cVar != null) {
                com.cmplay.internalpush.a.c.f1411a = 0;
                if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar)) {
                    z2 = true;
                    this.f.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                } else {
                    if (i != 0) {
                        sb.append("!");
                    }
                    sb.append(String.valueOf(cVar.h()));
                    sb.append(":");
                    sb.append(String.valueOf(com.cmplay.internalpush.a.c.f1411a));
                    a(cVar, com.cmplay.internalpush.a.c.f1411a);
                    com.cmplay.base.util.g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                }
            }
            i++;
            z2 = z2;
        }
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:" + z2 + "   mInfoList.size():" + this.d.size() + "  mAdCansShowList.size()" + this.f.size() + "  report:" + z);
        this.l = sb.toString();
        if (!z2) {
            a(7);
        }
        return z2;
    }

    public void b() {
        com.cmplay.internalpush.o.a().a(7, 4, "", 0L, this.l, com.cmplay.internalpush.g.a().b(), 0, 0L);
    }

    public boolean a(boolean z, boolean z2) {
        boolean z3;
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.canShow()");
        this.f1437a = false;
        this.f.clear();
        this.g.clear();
        this.h.clear();
        c();
        if (!this.d.isEmpty()) {
            long a2 = com.cmplay.internalpush.a.d.a("last_show_open_screen_time" + a(), 0L);
            long a3 = com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L);
            int size = this.d.size();
            int i = 0;
            z3 = false;
            while (i < size) {
                c cVar = this.d.get(i);
                if (cVar != null) {
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar)) {
                        z3 = true;
                        this.f.add(cVar);
                        com.cmplay.base.util.g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                    } else {
                        com.cmplay.base.util.g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                    }
                }
                i++;
                z3 = z3;
            }
            com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.canShow()  canShow:" + z3 + "  mInfoList.size()" + this.d.size() + "  mAdCansShowList.size()" + this.f.size());
            if (!z3) {
                z3 = b(z2);
            }
        } else {
            com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.canShow()  没有数据");
            if (z2) {
                com.cmplay.internalpush.o.a().a(7, z ? 17 : 16, "", 0L, String.valueOf(10), com.cmplay.internalpush.g.a().b(), 0, 0L);
            }
            z3 = false;
        }
        return g() || z3;
    }

    private boolean g() {
        boolean z;
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.addHaveInstalledAppToShowList()");
        if (this.d.isEmpty()) {
            z = false;
        } else {
            long a2 = com.cmplay.internalpush.a.d.a("last_show_open_screen_time" + a(), 0L);
            long a3 = com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L);
            int size = this.d.size();
            int i = 0;
            z = false;
            while (i < size) {
                c cVar = this.d.get(i);
                if (cVar != null) {
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    if (!com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar)) {
                        z = true;
                        a(this.j).a(cVar.h(), 2);
                        this.f.add(cVar);
                        com.cmplay.base.util.g.a("internal_push", "name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                    }
                }
                i++;
                z = z;
            }
        }
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.getHaveInstalledToShowList()  canShow:" + z + "   mAdCansShowList.size()" + this.f.size());
        return z;
    }

    public String a(boolean z) {
        String str = null;
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.getInfoForShow  call canShow");
        a(false, false);
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.getInfoForShow  mAdCansShowList.size():" + this.f.size());
        if (!this.f.isEmpty()) {
            JSONArray jSONArray = new JSONArray();
            for (c cVar : this.f) {
                if (cVar != null) {
                    jSONArray.put(new e(cVar.h(), cVar.r(), cVar.g(), cVar.z(), cVar.A(), cVar.B(), cVar.M(), cVar.N(), cVar.C(), cVar.D(), cVar.t(), cVar.s(), !cVar.w(), cVar.P(), cVar.b(), cVar.i()).a());
                    if (z) {
                        a(cVar.h(), 1);
                        com.cmplay.internalpush.o.a().a(7, 1, cVar.r(), cVar.h(), "", com.cmplay.internalpush.a.b.a(this.j, cVar.r()) ? 2 : 1, 0, cVar.i());
                        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.getInfoForShow   上报展示PV");
                    }
                }
            }
            if (!this.f1437a) {
                this.f1437a = true;
            }
            str = jSONArray.toString();
        }
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.getInfoForShow()  jsonData:" + str);
        return str;
    }

    public boolean e() {
        com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.canShowRedDot()");
        if (this.f.isEmpty()) {
            a(false, false);
        }
        if (!this.f.isEmpty()) {
            for (c cVar : this.f) {
                if (cVar != null && cVar.u() < 1) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean f() {
        if (!this.d.isEmpty()) {
            int size = this.d.size();
            for (int i = 0; i < size; i++) {
                c cVar = this.d.get(i);
                if (cVar != null && 1 == cVar.R()) {
                    com.cmplay.base.util.g.a("internal_push", "FamilyParseCloudData.isRedDotPriorityHigherThanSetting()   红点优先级高于设置页   id:" + cVar.h());
                    return true;
                }
            }
        }
        return false;
    }
}
