package com.cmplay.internalpush.data;

import android.content.Context;
import android.net.Uri;
import com.cmplay.internalpush.a.a.b;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import com.cmplay.internalpush.video.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: OpenScreenParseCloudData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n extends o {

    /* renamed from: b, reason: collision with root package name */
    private static n f1457b;

    /* renamed from: a, reason: collision with root package name */
    protected List<c> f1458a = new ArrayList();
    private int m = 0;

    static /* synthetic */ int a(n nVar) {
        int i = nVar.m;
        nVar.m = i + 1;
        return i;
    }

    private n(Context context) {
        this.j = context.getApplicationContext();
        com.cmplay.internalpush.a.d.a(context);
        com.cmplay.internalpush.k.f1477a = context;
        com.cmplay.internalpush.a.a.b.a().a(this);
    }

    public static n a(Context context) {
        if (f1457b == null) {
            f1457b = new n(context);
        }
        return f1457b;
    }

    @Override // com.cmplay.internalpush.data.o
    public String a() {
        return "open_screen_scene";
    }

    @Override // com.cmplay.internalpush.data.o
    public CopyOnWriteArrayList<c> c() {
        boolean sp_getBooleanValue = IpcSpHelper.getInstance().sp_getBooleanValue(a(), false);
        String b2 = com.ijinshan.cloudconfig.b.a.a().b("local_version", "none");
        com.cmplay.base.util.g.a("cloudVersion =" + b2);
        if (sp_getBooleanValue) {
            com.cmplay.internalpush.o.a().a(b2, 1, "open_screen", "");
        } else {
            com.cmplay.internalpush.o.a().a(b2, 2, "open_screen", "");
        }
        return super.c();
    }

    @Override // com.cmplay.internalpush.a.a.a
    public void d() {
        boolean z;
        String a2 = com.cmplay.internalpush.a.a.b.a().a(com.cmplay.base.util.i.b(), a());
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg openScreen 内推 json:" + a2);
        com.cmplay.base.util.g.a("获取开屏魔方数据--------------------" + (a2 != null ? a2.length() : 0));
        a(a2);
        String a3 = com.cmplay.internalpush.a.a.b.a().a(com.cmplay.base.util.i.b(), "open_screen_scene_rs_game_fuction");
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg openScreen RS 功能开屏 rsJson:" + a3);
        b(a3);
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<c> it = this.d.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            c next = it.next();
            if (next != null) {
                if (com.cmplay.internalpush.a.c.b(next)) {
                    arrayList.add(next.l());
                    arrayList.add(next.n());
                    arrayList.add(next.o());
                    arrayList.add(next.y());
                } else {
                    com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg   ProID:" + next.h() + "  已经过期，不下载资源素材");
                }
                if (next != null && com.cmplay.internalpush.a.c.a(next)) {
                    z = true;
                    z2 = z;
                }
            }
            z = z2;
            z2 = z;
        }
        if (!this.d.isEmpty()) {
            com.cmplay.internalpush.o.a().a(1, z2 ? 21 : 22, "", 0L, z2 ? "" : Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")), 0, 0, 0L);
        }
        com.cmplay.internalpush.a.a.b.a().a(a(), arrayList, new b.a() { // from class: com.cmplay.internalpush.data.n.1
            @Override // com.cmplay.internalpush.a.a.b.a
            public void a(String str, String str2) {
                Iterator<c> it2 = n.this.d.iterator();
                while (it2.hasNext()) {
                    c next2 = it2.next();
                    if (next2 != null) {
                        if (next2.l() != null && next2.l().equalsIgnoreCase(str)) {
                            next2.d(str2);
                            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg   下载图片成功，保存本地路径  setLocalPathBgImg  localPath:" + str2 + "   ProId:" + next2.h());
                        }
                        if (next2.n() != null && next2.n().equalsIgnoreCase(str)) {
                            next2.g(str2);
                            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg   下载图片成功，保存本地路径  setLocalPathButtonImg  localPath:" + str2 + "   ProId:" + next2.h());
                        }
                        if (next2.o() != null && next2.o().equalsIgnoreCase(str)) {
                            next2.h(str2);
                            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg   下载图片成功，保存本地路径  setLocalPathButtonImg2  localPath:" + str2 + "   ProId:" + next2.h());
                        }
                        if (next2.y() != null && next2.y().equalsIgnoreCase(str)) {
                            next2.l(str2);
                            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.startAsynPreLoadImg   下载图片成功，保存本地路径  setLocalPathIconImg  localPath:" + str2 + "   ProId:" + next2.h());
                        }
                    }
                }
            }
        });
        g();
        f();
    }

    private boolean c(boolean z) {
        boolean z2;
        boolean z3 = false;
        Iterator<c> it = this.d.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            c next = it.next();
            if (next != null && next.j() > 0 && next.x() == 0 && 14 == next.T()) {
                z3 = true;
                com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()    仍然有因为启动次数而未曾展示的  id:" + next.h());
                break;
            }
        }
        Iterator<c> it2 = this.d.iterator();
        while (it2.hasNext()) {
            c next2 = it2.next();
            if (next2 != null && next2.x() >= next2.j() && !z3) {
                next2.e(0);
                com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()    setHaveRotationTimes(0)  id:" + next2.h());
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
                if (com.cmplay.internalpush.a.c.a(cVar, z) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3, com.cmplay.internalpush.n.a().b(), this.c) && (((cVar.t() != 4 && com.cmplay.internalpush.a.c.a(this.j, cVar)) || cVar.t() == 4 || cVar.t() == 2) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && (((cVar.V() != 2 && com.cmplay.internalpush.a.c.e(cVar)) || (cVar.V() == 2 && com.cmplay.internalpush.a.c.h(cVar) && com.cmplay.internalpush.a.c.g(cVar))) && com.cmplay.internalpush.a.c.f(cVar) && com.cmplay.internalpush.a.c.k(cVar) && com.cmplay.internalpush.a.c.j(cVar)))) {
                    z2 = true;
                    this.f.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                    break;
                }
                cVar.o(com.cmplay.internalpush.a.c.f1411a);
                if (i != 0) {
                    sb.append("!");
                }
                sb.append(String.valueOf(cVar.h()));
                sb.append(":");
                sb.append(String.valueOf(com.cmplay.internalpush.a.c.f1411a));
                a(cVar, com.cmplay.internalpush.a.c.f1411a);
                com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
            }
            i++;
        }
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:" + z2 + "   mInfoList.size():" + this.d.size());
        this.l = sb.toString();
        if (!z2) {
            a(1);
        }
        return z2;
    }

    public void b() {
        com.cmplay.internalpush.o.a().a(1, 4, "", 0L, this.l, com.cmplay.internalpush.n.a().b(), 0, 0L);
    }

    public boolean a(boolean z, boolean z2) {
        boolean z3;
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.canShow()   isNewPlayer:" + z);
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
                        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.canShow()  不是相同自然天，重置爆款当天展示次");
                    }
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    if (com.cmplay.internalpush.a.c.a(cVar, z) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.a(cVar, a2, a3, com.cmplay.internalpush.n.a().b(), this.c) && (((cVar.t() != 4 && com.cmplay.internalpush.a.c.a(this.j, cVar)) || cVar.t() == 4 || cVar.t() == 2) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.d(cVar) && (((cVar.V() != 2 && com.cmplay.internalpush.a.c.e(cVar)) || (cVar.V() == 2 && com.cmplay.internalpush.a.c.h(cVar) && com.cmplay.internalpush.a.c.g(cVar))) && com.cmplay.internalpush.a.c.f(cVar) && com.cmplay.internalpush.a.c.k(cVar) && com.cmplay.internalpush.a.c.j(cVar)))) {
                        z3 = true;
                        this.f.add(cVar);
                        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                        break;
                    }
                    cVar.o(com.cmplay.internalpush.a.c.f1411a);
                    com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.canShow()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a) + "   是否爆款:" + cVar.ac());
                }
                i++;
            }
            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.canShow()  canShow:" + z3 + "  mInfoList.size()" + this.d.size());
            if (!z3) {
                return c(z);
            }
            return z3;
        }
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.canShow()  没有数据");
        com.cmplay.internalpush.o.a().a(1, z ? 17 : 16, "", 0L, String.valueOf(10), com.cmplay.internalpush.n.a().b(), 0, 0L);
        return false;
    }

    public g a(boolean z) {
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getInfoForShowNt()");
        if (this.f.isEmpty()) {
            return null;
        }
        this.c = true;
        c cVar = this.f.get(0);
        a(cVar.h(), 1);
        if (cVar.ac()) {
            com.cmplay.internalpush.a.d.b("last_show_hit_top_time" + a(), System.currentTimeMillis());
        } else {
            com.cmplay.internalpush.a.d.b("last_show_open_screen_time" + a(), System.currentTimeMillis());
        }
        if (z) {
            com.cmplay.internalpush.o.a().a(1, 1, cVar.r(), cVar.h(), "", com.cmplay.internalpush.n.a().b(), 0, cVar.i());
        }
        return new g(cVar.h(), cVar.r(), cVar.g(), cVar.z(), cVar.A(), cVar.B(), cVar.m(), cVar.p(), cVar.q(), cVar.t(), cVar.s(), cVar.O(), cVar.P(), cVar.Q(), cVar.b(), cVar.U(), cVar.G(), cVar.H(), cVar.I(), cVar.V(), cVar.W(), cVar.a(), cVar.i());
    }

    public String b(boolean z) {
        g a2 = a(z);
        if (a2 == null) {
            return null;
        }
        return a2.a();
    }

    private String c(String str) {
        return "innerpush_" + com.cmplay.internalpush.a.b.a(str);
    }

    public c e() {
        c cVar = null;
        Iterator it = new ArrayList(this.f1458a).iterator();
        while (it.hasNext()) {
            c cVar2 = (c) it.next();
            if (cVar2 == null || cVar2.Y() || com.cmplay.internalpush.a.c.h(cVar2)) {
                cVar2 = cVar;
            }
            cVar = cVar2;
        }
        return cVar;
    }

    public void f() {
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()");
        if (this.m > this.f1458a.size()) {
            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()  开屏 循环遍历了一遍， resetDownloadFailTag  停止下一个下载");
            l();
            return;
        }
        final c e = e();
        if (e != null) {
            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()  开屏视频 开始下载 pro_id:" + e.h());
            e.e(true);
            com.cmplay.internalpush.video.a.a.a().a(e.h(), e.r(), e.F(), c(e.F()), e.l(), e.y(), e.i(), null, new b.a() { // from class: com.cmplay.internalpush.data.n.2
                @Override // com.cmplay.internalpush.video.a.b.a
                public void a(int i, String str) {
                    com.cmplay.base.util.g.a("info id =" + e.h());
                    e.e(false);
                    if (i == 0 || i == 1000) {
                        if (n.this.a(e.h(), str)) {
                            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()  开屏视频 下载成功 pro_id:" + e.h() + "  resetDownloadFailTag()");
                            n.this.l();
                            n.this.f();
                            n.this.m = 0;
                        } else {
                            com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()  开屏视频 下载失败 pro_id:" + e.h() + "   下载下一个");
                            n.this.a(e.h());
                            n.a(n.this);
                            n.this.f();
                        }
                    } else {
                        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()  开屏视频 下载失败 pro_id:" + e.h() + "   下载下一个");
                        n.this.a(e.h());
                        n.a(n.this);
                        n.this.f();
                    }
                    String r = e.r();
                    long h = e.h();
                    switch (i) {
                        case -1:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "-1", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 0:
                            com.cmplay.internalpush.o.a().a(1, 7, r, h, "0", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 1:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "1", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 2:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "2", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 3:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "3", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 4:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "4", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 5:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "5", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 6:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "6", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 7:
                            com.cmplay.internalpush.o.a().a(1, 8, r, h, "7", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                        case 8:
                            com.cmplay.base.util.g.a("zzb", e.h() + " 无网，去筛选缓存的-----------");
                            break;
                        case 1000:
                            com.cmplay.internalpush.o.a().a(1, 12, r, h, "1000", com.cmplay.internalpush.n.a().b(), 0, e.i());
                            break;
                    }
                }
            });
            return;
        }
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getNextVideo()  开屏视频  info=null  没有需要下载");
    }

    public boolean g() {
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getVideoCanShowList()  过滤找出需要下载视频的");
        this.f1458a.clear();
        if (this.d.isEmpty()) {
            return false;
        }
        int size = this.d.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            c cVar = this.d.get(i);
            if (cVar != null && 2 == cVar.V()) {
                com.cmplay.internalpush.a.c.f1411a = 0;
                if (((cVar.t() != 4 && com.cmplay.internalpush.a.c.a(this.j, cVar)) || cVar.t() == 4 || cVar.t() == 2) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.i(cVar)) {
                    z = true;
                    this.f1458a.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getVideoCanShowList()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                } else {
                    com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getVideoCanShowList()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                }
            }
            i++;
            z = z;
        }
        com.cmplay.base.util.g.a("internal_push", "OpenScreenParseCloudData.getVideoCanShowList()  haveDataDl:" + z + "  mInfoList.size()" + this.d.size() + "  mAdVideoCanShowList.size():" + this.f1458a.size());
        return z;
    }
}
