package com.cmplay.internalpush.data;

import android.content.Context;
import android.net.Uri;
import com.cmplay.internalpush.a.a.b;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import com.cmplay.internalpush.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: SettingParseCloudData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q extends o {

    /* renamed from: b, reason: collision with root package name */
    private static q f1464b;
    private c m = null;

    /* renamed from: a, reason: collision with root package name */
    protected boolean f1465a = false;

    private q(Context context) {
        this.j = context.getApplicationContext();
        com.cmplay.internalpush.a.d.a(context);
        com.cmplay.internalpush.k.f1477a = context;
        com.cmplay.internalpush.a.a.b.a().a(this);
    }

    public static q a(Context context) {
        if (f1464b == null) {
            f1464b = new q(context);
        }
        return f1464b;
    }

    @Override // com.cmplay.internalpush.data.o
    public String a() {
        return "section_setting_card";
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
            com.cmplay.internalpush.o.a().a(b2, 1, "setting", "");
        } else {
            com.cmplay.internalpush.o.a().a(b2, 2, "setting", "");
        }
        return super.c();
    }

    @Override // com.cmplay.internalpush.a.a.a
    public void d() {
        this.m = null;
        this.f1465a = false;
        this.f.clear();
        this.g.clear();
        this.h.clear();
        String a2 = com.cmplay.internalpush.a.a.b.a().a(com.cmplay.base.util.i.b(), a());
        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.startAsynPreLoadImg setting card json:" + a2);
        com.cmplay.base.util.g.a("获取seting页魔方数据--------------------" + (a2 != null ? a2.length() : 0));
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
                    com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.startAsynPreLoadImg ProID:" + next.h() + "  已经过期，不下载资源素材");
                }
                if (next != null && com.cmplay.internalpush.a.c.a(next)) {
                    z = true;
                }
            }
            z = z;
        }
        if (!this.d.isEmpty()) {
            com.cmplay.internalpush.o.a().a(3, z ? 21 : 22, "", 0L, z ? "" : Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")), 0, 0, 0L);
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
                if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar) && com.cmplay.internalpush.a.c.k(cVar)) {
                    this.f.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
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
                com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
            }
            i++;
        }
        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:" + z2 + "   mInfoList.size():" + this.d.size());
        this.l = sb.toString();
        if (z && !z2) {
            a(3);
        }
        return z2;
    }

    public void b() {
        com.cmplay.internalpush.o.a().a(3, 4, "", 0L, this.l, s.a().b(), 0, 0L);
    }

    public boolean a(boolean z, boolean z2) {
        boolean z3;
        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()");
        this.m = null;
        this.f1465a = false;
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
                        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  不是相同自然天，重置爆款当天展示次   lastShowHitTopTime:" + a3);
                    }
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && com.cmplay.internalpush.a.c.g(cVar) && com.cmplay.internalpush.a.c.k(cVar)) {
                        this.f.add(cVar);
                        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                        z3 = true;
                        break;
                    }
                    com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                }
                i++;
            }
            com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  canShow:" + z3 + "  mInfoList.size()" + this.d.size());
            if (!z3) {
                z3 = c(z2);
            }
            return z3;
        }
        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShow()  没有数据");
        if (!z2) {
            return false;
        }
        com.cmplay.internalpush.o.a().a(3, z ? 17 : 16, "", 0L, String.valueOf(10), s.a().b(), 0, 0L);
        return false;
    }

    public i a(boolean z) {
        i iVar;
        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.getInfoForShowNt()  reportShow:" + z);
        if (this.m != null && com.cmplay.internalpush.a.c.a(this.j, this.m)) {
            i iVar2 = new i(this.m.h(), this.m.r(), this.m.g(), this.m.z(), this.m.A(), this.m.B(), this.m.M(), this.m.C(), this.m.D(), this.m.t(), this.m.s(), !this.m.w(), this.m.b(), this.m.i());
            com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.getInfoForShowNt()    上一个展示      id:" + this.m.h());
            iVar = iVar2;
        } else if (!a(false, true)) {
            iVar = null;
        } else {
            this.m = this.f.get(0);
            i iVar3 = new i(this.m.h(), this.m.r(), this.m.g(), this.m.z(), this.m.A(), this.m.B(), this.m.M(), this.m.C(), this.m.D(), this.m.t(), this.m.s(), !this.m.w(), this.m.b(), this.m.i());
            com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.getInfoForShowNt()    新的展示       id:" + this.m.h());
            iVar = iVar3;
        }
        if (iVar != null && z) {
            com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.getInfoForShowNt()  updateShowedStatus      mCurInfoHaveShowedOnce:" + this.f1465a);
            a(iVar.d(), 1);
            if (this.m.ac()) {
                com.cmplay.internalpush.a.d.b("last_show_hit_top_time" + a(), System.currentTimeMillis());
            } else {
                com.cmplay.internalpush.a.d.b("last_show_open_screen_time" + a(), System.currentTimeMillis());
            }
            if (!this.f1465a) {
                com.cmplay.internalpush.o.a().a(3, 1, iVar.f(), iVar.d(), "", s.a().b(), 0, iVar.m());
                com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.getInfoForShowNt()  上报展示PV");
                this.f1465a = true;
            }
        }
        return iVar;
    }

    public String b(boolean z) {
        i a2 = a(z);
        if (a2 == null) {
            return null;
        }
        return a2.a();
    }

    public boolean e() {
        boolean z;
        if (this.m != null && com.cmplay.internalpush.a.c.a(this.j, this.m)) {
            z = this.m.u() < 1;
            com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShowRedDot()    上一个展示      id:" + this.m.h());
        } else if (a(false, false)) {
            this.m = this.f.get(0);
            boolean z2 = this.m.u() < 1;
            com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShowRedDot()    新的展示      id:" + this.m.h());
            z = z2;
        } else {
            z = false;
        }
        com.cmplay.base.util.g.a("internal_push", "SettingParseCloudData.canShowRedDot()   canShowRedDot:" + z);
        return z;
    }
}
