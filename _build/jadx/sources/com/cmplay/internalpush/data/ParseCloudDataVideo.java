package com.cmplay.internalpush.data;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.cmplay.internalpush.video.IncentiveVideoPlayActivity;
import com.cmplay.internalpush.video.a.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ParseCloudDataVideo extends o {

    /* renamed from: a, reason: collision with root package name */
    private static ParseCloudDataVideo f1425a;
    private static int y = 800;
    private com.cmplay.internalpush.video.b.c m;
    private HandlerThread o;
    private Handler p;
    private com.cmplay.internalpush.video.b.d u;
    private VideoProgressStatusReceiver v;
    private com.cmplay.internalpush.video.b.a w;
    private Timer x;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1426b = false;
    private boolean n = false;
    private int q = 0;
    private int r = 0;
    private List<c> s = new ArrayList();
    private List<Long> t = new ArrayList();
    private long z = 0;
    private com.cmplay.internalpush.video.b.b A = new com.cmplay.internalpush.video.b.b() { // from class: com.cmplay.internalpush.data.ParseCloudDataVideo.2
        @Override // com.cmplay.internalpush.video.b.b
        public void a() {
            if (!com.cmplay.internalpush.video.e.f1547b) {
                com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.IVideoDownloadFinishCallback  先等待其其它视频拉取，innerpush不被允许拉取视频 not allowed load video");
            } else {
                ParseCloudDataVideo.this.a(com.cmplay.internalpush.f.a(Integer.valueOf(com.cmplay.base.util.i.b()), "inner_push_common_section", "inner_push_reward_video_init_delay_time", 40) * 1000, new TimerTask() { // from class: com.cmplay.internalpush.data.ParseCloudDataVideo.2.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.IVideoDownloadFinishCallback TimerTask    延时时间到，开始下载视频");
                        ParseCloudDataVideo.this.f();
                        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.IVideoDownloadFinishCallback TimerTask    下载视频完成");
                    }
                });
            }
        }
    };

    static /* synthetic */ int c(ParseCloudDataVideo parseCloudDataVideo) {
        int i = parseCloudDataVideo.q;
        parseCloudDataVideo.q = i + 1;
        return i;
    }

    private ParseCloudDataVideo(Context context) {
        this.j = context.getApplicationContext();
        com.cmplay.internalpush.a.d.a(context);
        this.o = new HandlerThread("clean_videocache_thread");
        this.o.start();
        this.p = new Handler(this.o.getLooper());
        b();
    }

    public void b() {
        this.v = new VideoProgressStatusReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
        this.j.registerReceiver(this.v, intentFilter);
    }

    public static ParseCloudDataVideo a(Context context) {
        if (f1425a == null) {
            f1425a = new ParseCloudDataVideo(context);
        }
        return f1425a;
    }

    @Override // com.cmplay.internalpush.data.o
    public String a() {
        return "section_video_distribution";
    }

    public void a(String str, com.cmplay.internalpush.video.b.a aVar, com.cmplay.internalpush.video.b.c cVar) {
        boolean z;
        this.m = cVar;
        this.w = aVar;
        a(this.j).a(str);
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.startAsynPreLoadImg video json:" + str);
        if (this.d.size() > 0 && com.cmplay.internalpush.video.e.c != null) {
            com.cmplay.internalpush.video.e.c.a(4);
        }
        g();
        if (!this.d.isEmpty()) {
            Iterator<c> it = this.d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                c next = it.next();
                if (next != null && com.cmplay.internalpush.a.c.a(next)) {
                    z = true;
                    break;
                }
            }
            com.cmplay.internalpush.o.a().a(4, z ? 21 : 22, "", 0L, z ? "" : Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")), 0, 0, 0L);
        }
        if (!this.n) {
            this.p.post(new Runnable() { // from class: com.cmplay.internalpush.data.ParseCloudDataVideo.1
                @Override // java.lang.Runnable
                public void run() {
                    ArrayList<String> arrayList = new ArrayList<>();
                    Iterator<c> it2 = ParseCloudDataVideo.this.d.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(ParseCloudDataVideo.this.d(it2.next().F()));
                    }
                    Iterator it3 = ParseCloudDataVideo.this.r().iterator();
                    while (it3.hasNext()) {
                        arrayList.add(ParseCloudDataVideo.this.d(((c) it3.next()).F()));
                    }
                    com.cmplay.internalpush.video.a.a.a().a(arrayList);
                }
            });
        }
        e();
    }

    public void e() {
        b(true);
    }

    public void f() {
        a(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<c> r() {
        return a(com.cmplay.internalpush.a.a.b.a().a(com.cmplay.base.util.i.b(), "open_screen_scene"), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        return "innerpush_" + com.cmplay.internalpush.a.b.a(str);
    }

    public void a(boolean z) {
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextVideo()");
        if (z) {
            n();
        }
        ArrayList arrayList = new ArrayList(this.f);
        if (this.q > this.d.size()) {
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextVideo() 内推视频 循环遍历了一遍， resetDownloadFailTag  停止下一个下载");
            l();
            return;
        }
        com.cmplay.base.util.g.a("ParseCloudDataVideo.getNextVideo()  内推视频 需要下载的个数：" + arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            final c cVar = (c) it.next();
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextVideo()  内推视频 开始下载 pro_id:" + cVar.h() + "    isHitTopApp:" + cVar.ac());
            cVar.e(true);
            com.cmplay.internalpush.video.a.a.a().a(cVar.h(), cVar.r(), cVar.F(), d(cVar.F()), cVar.l(), cVar.y(), cVar.i(), this.w, new b.a() { // from class: com.cmplay.internalpush.data.ParseCloudDataVideo.3
                @Override // com.cmplay.internalpush.video.a.b.a
                public void a(int i, String str) {
                    com.cmplay.base.util.g.a("info id =" + cVar.h());
                    cVar.e(false);
                    if (ParseCloudDataVideo.this.m != null) {
                        if (i != 0 && i != 1000) {
                            ParseCloudDataVideo.this.f1426b = false;
                            ParseCloudDataVideo.this.m.a(i, str);
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextVideo()  内推视频 下载失败 pro_id:" + cVar.h() + "   下载下一个");
                            ParseCloudDataVideo.this.a(cVar.h());
                            ParseCloudDataVideo.c(ParseCloudDataVideo.this);
                            if (com.cmplay.base.util.m.c(ParseCloudDataVideo.this.j)) {
                                ParseCloudDataVideo.this.a(true);
                            }
                        } else if (!ParseCloudDataVideo.this.a(cVar.h(), str)) {
                            ParseCloudDataVideo.this.m.a(-1, "not set local video path");
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextVideo()  内推视频 下载失败 pro_id:" + cVar.h() + "   下载下一个");
                            ParseCloudDataVideo.this.a(cVar.h());
                            ParseCloudDataVideo.c(ParseCloudDataVideo.this);
                            ParseCloudDataVideo.this.a(true);
                        } else {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextVideo()  内推视频 下载成功 pro_id:" + cVar.h() + "    isLoaded = true");
                            ParseCloudDataVideo.this.l();
                            ParseCloudDataVideo.this.q = 0;
                            ParseCloudDataVideo.this.f1426b = true;
                            ParseCloudDataVideo.this.m.d();
                        }
                    }
                    String r = cVar.r();
                    long h = cVar.h();
                    if (!cVar.ac()) {
                        switch (i) {
                            case -1:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "-1", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 0:
                                com.cmplay.internalpush.o.a().a(4, 7, r, h, "0", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 1:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "1", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 2:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "2", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 3:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "3", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 4:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "4", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 5:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "5", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 6:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "6", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 7:
                                com.cmplay.internalpush.o.a().a(4, 8, r, h, "7", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                            case 8:
                                com.cmplay.base.util.g.a("zzb", cVar.h() + " 无网，去筛选缓存的-----------");
                                break;
                            case 1000:
                                com.cmplay.internalpush.o.a().a(4, 12, r, h, "1000", 0, ParseCloudDataVideo.this.p(), (int) cVar.i());
                                break;
                        }
                    }
                }
            });
            if (!com.cmplay.internalpush.video.e.d) {
                c(cVar.l());
                c(cVar.y());
            }
        }
    }

    public void b(boolean z) {
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo()");
        if (z) {
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo()  执行canShow()刷新mAdCansShowList");
            n();
        }
        if (this.q > this.s.size()) {
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo  爆款 内推视频 循环遍历了一遍， resetDownloadFailTag  停止下一个下载");
            l();
            if (this.A != null) {
                this.A.a();
                return;
            }
            return;
        }
        final c m = m();
        if (m != null) {
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo  爆款 内推视频 开始下载 pro_id:" + m.h() + "    isHitTopApp:" + m.ac());
            m.e(true);
            com.cmplay.internalpush.video.a.a.a().a(m.h(), m.r(), m.F(), d(m.F()), m.l(), m.y(), m.i(), this.w, new b.a() { // from class: com.cmplay.internalpush.data.ParseCloudDataVideo.4
                @Override // com.cmplay.internalpush.video.a.b.a
                public void a(int i, String str) {
                    com.cmplay.base.util.g.a("info id =" + m.h());
                    m.e(false);
                    if (i == 0 || i == 1000) {
                        if (ParseCloudDataVideo.this.a(m.h(), str)) {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo  爆款 内推视频 下载成功 pro_id:" + m.h());
                            ParseCloudDataVideo.this.l();
                            ParseCloudDataVideo.this.b(false);
                            ParseCloudDataVideo.this.q = 0;
                        } else {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo  爆款 内推视频 下载失败 pro_id:" + m.h() + "   下载下一个");
                            ParseCloudDataVideo.this.a(m.h());
                            ParseCloudDataVideo.c(ParseCloudDataVideo.this);
                            ParseCloudDataVideo.this.c(m.h());
                            ParseCloudDataVideo.this.b(true);
                        }
                    } else {
                        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo  爆款 内推视频 下载失败 pro_id:" + m.h() + "   下载下一个");
                        ParseCloudDataVideo.this.a(m.h());
                        ParseCloudDataVideo.c(ParseCloudDataVideo.this);
                        ParseCloudDataVideo.this.c(m.h());
                        ParseCloudDataVideo.this.b(true);
                    }
                    String r = m.r();
                    long h = m.h();
                    switch (i) {
                        case -1:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "-1", 0, 0, m.i());
                            break;
                        case 0:
                            com.cmplay.internalpush.o.a().a(4, 7, r, h, "0", 0, 0, m.i());
                            break;
                        case 1:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "1", 0, 0, m.i());
                            break;
                        case 2:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "2", 0, 0, m.i());
                            break;
                        case 3:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "3", 0, 0, m.i());
                            break;
                        case 4:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "4", 0, 0, m.i());
                            break;
                        case 5:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "5", 0, 0, m.i());
                            break;
                        case 6:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "6", 0, 0, m.i());
                            break;
                        case 7:
                            com.cmplay.internalpush.o.a().a(4, 8, r, h, "7", 0, 0, m.i());
                            break;
                        case 8:
                            com.cmplay.base.util.g.a("zzb", m.h() + " 无网，去筛选缓存的-----------");
                            break;
                        case 1000:
                            com.cmplay.internalpush.o.a().a(4, 12, r, h, "1000", 0, 0, m.i());
                            break;
                    }
                }
            });
        } else {
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getNextHitTopVideo  爆款 内推视频  info=null  没有需要下载");
            if (this.A != null) {
                this.A.a();
            }
        }
    }

    public boolean g() {
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getHitTopCanShowList()  过滤找出需要下载素材的爆款");
        this.s.clear();
        this.t.clear();
        if (this.g.isEmpty()) {
            return false;
        }
        int size = this.g.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            c cVar = this.g.get(i);
            if (cVar != null && cVar.ac()) {
                com.cmplay.internalpush.a.c.f1411a = 0;
                if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.b(cVar) && com.cmplay.internalpush.a.c.i(cVar)) {
                    z = true;
                    this.s.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getHitTopCanShowList()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                } else {
                    com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getHitTopCanShowList()  name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                }
            }
            i++;
            z = z;
        }
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getHitTopCanShowList()  haveDataDl:" + z + "  mAdHitTopDataList.size()" + this.g.size() + "  mHitTopDownloadList.size():" + this.s.size());
        return z;
    }

    public c m() {
        c cVar = null;
        Iterator it = new ArrayList(this.s).iterator();
        while (it.hasNext()) {
            c cVar2 = (c) it.next();
            if (cVar2 == null || cVar2.Y() || com.cmplay.internalpush.a.c.h(cVar2)) {
                cVar2 = cVar;
            }
            cVar = cVar2;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.s.size()) {
                c cVar = this.s.get(i2);
                if (cVar != null && cVar.h() == j) {
                    this.t.add(Long.valueOf(cVar.h()));
                    this.s.remove(i2);
                    i2--;
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    private void s() {
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            for (Long l : this.t) {
                if (next != null && next.h() == l.longValue()) {
                    next.f(true);
                }
            }
        }
    }

    public synchronized void c(String str) {
        if (com.cmplay.internalpush.video.e.c() != null) {
            com.cmplay.internalpush.video.e.c().a(str, new com.cmplay.base.util.c.b() { // from class: com.cmplay.internalpush.data.ParseCloudDataVideo.5
                @Override // com.cmplay.base.util.c.b
                public void a(String str2, String str3) {
                    com.cmplay.base.util.g.a("视频图片下载失败!  errorCode:" + str3);
                }

                @Override // com.cmplay.base.util.c.b
                public void a(Bitmap bitmap, String str2, String str3) {
                    com.cmplay.base.util.g.a("视频图片下载成功--!");
                }
            });
        }
    }

    @Override // com.cmplay.internalpush.data.o
    public CopyOnWriteArrayList<c> c() {
        return super.c();
    }

    @Override // com.cmplay.internalpush.a.a.a
    public void d() {
    }

    private boolean t() {
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null && next.x() >= next.j()) {
                next.e(0);
            }
        }
        a(this.d);
        StringBuilder sb = new StringBuilder();
        int size = this.d.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            c cVar = this.d.get(i);
            if (cVar != null) {
                com.cmplay.internalpush.a.c.f1411a = 0;
                if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.i(cVar) && com.cmplay.internalpush.a.c.k(cVar)) {
                    z = true;
                    this.f.add(cVar);
                    com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.resetHaveRotationTimesAndCheckAgain() name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                    if (!cVar.ac()) {
                        break;
                    }
                } else {
                    if (i != 0) {
                        sb.append("!");
                    }
                    sb.append(String.valueOf(cVar.h()));
                    sb.append(":");
                    sb.append(String.valueOf(com.cmplay.internalpush.a.c.f1411a));
                    a(cVar, com.cmplay.internalpush.a.c.f1411a);
                    com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.resetHaveRotationTimesAndCheckAgain()name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                }
            }
            i++;
            z = z;
        }
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.resetHaveRotationTimesAndCheckAgain()  canShow:" + z + "   mInfoList.size():" + this.d.size() + "    \tmErrorCodeStr:" + this.l);
        this.l = sb.toString();
        if (!z) {
            a(4);
        }
        return z;
    }

    public void b(long j) {
        com.cmplay.internalpush.o.a().a(4, 4, "", 0L, this.l, 0, p(), j);
    }

    public boolean n() {
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.canShow()");
        this.f.clear();
        this.g.clear();
        this.h.clear();
        c();
        s();
        if (!this.d.isEmpty()) {
            boolean a2 = com.cmplay.internalpush.a.b.a(com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L));
            int size = this.d.size();
            int i = 0;
            boolean z = false;
            while (i < size) {
                c cVar = this.d.get(i);
                if (cVar != null) {
                    if (!a2 && cVar.ac()) {
                        cVar.r(0);
                        cVar.e(0);
                        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.canShow()  不是相同自然天，重置爆款当天展示次");
                    }
                    com.cmplay.internalpush.a.c.f1411a = 0;
                    if (com.cmplay.internalpush.a.c.a(this.j, cVar) && com.cmplay.internalpush.a.c.a(cVar) && com.cmplay.internalpush.a.c.c(cVar) && com.cmplay.internalpush.a.c.i(cVar) && com.cmplay.internalpush.a.c.k(cVar)) {
                        z = true;
                        this.f.add(cVar);
                        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.canShow() name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                        if (!cVar.ac()) {
                            break;
                        }
                    } else {
                        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.canShow() name:" + cVar.g() + "  pro_id:" + cVar.h() + "  filter rusult:" + com.cmplay.internalpush.a.c.a(com.cmplay.internalpush.a.c.f1411a));
                    }
                }
                i++;
                z = z;
            }
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.canShow()  canShow:" + z + "  mInfoList.size()" + this.d.size() + "     mAdCansShowList.size():" + this.f.size());
            if (!z) {
                return t();
            }
            return z;
        }
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.canShow()  没有数据");
        com.cmplay.internalpush.o.a().a(4, 16, "", 0L, String.valueOf(10), p(), 0, 0L);
        return false;
    }

    public boolean b(int i) {
        this.r = i;
        if (this.f.isEmpty()) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.z > y) {
            this.z = currentTimeMillis;
            boolean a2 = a(this.f.get(0));
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.show()   isShow =" + a2);
            if (a2) {
                a(this.j).k();
                return IncentiveVideoPlayActivity.a(this.j, false, a(this.j).o());
            }
        } else {
            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.show()    频繁调起");
        }
        this.f1426b = false;
        return false;
    }

    public void a(com.cmplay.internalpush.video.b.d dVar) {
        this.u = dVar;
    }

    public boolean c(int i) {
        this.r = i;
        com.cmplay.base.util.g.a("reportNeituiSdkApp", "ParseCloudDataVideo.isPlayable scene:" + this.r);
        return this.f1426b;
    }

    public boolean d(int i) {
        c cVar;
        this.r = i;
        boolean z = !this.f.isEmpty() && (cVar = this.f.get(0)) != null && cVar.ac() && a(cVar);
        com.cmplay.base.util.g.a("reportNeituiSdkApp", "ParseCloudDataVideo.isHitTopPlayable scene:" + this.r + "   isHitTopPlayable:" + z);
        return z;
    }

    public boolean a(c cVar) {
        File file;
        if (cVar == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        com.cmplay.base.util.g.a("zzb", "show id =" + cVar.h() + ", videourl=" + cVar.F() + ", ");
        com.cmplay.base.util.g.a("zzb", "show LocalPathVideo=" + cVar.G());
        if (TextUtils.isEmpty(cVar.F()) || TextUtils.isEmpty(cVar.G()) || (file = new File(cVar.G())) == null || !file.exists() || file.length() <= 0) {
            return false;
        }
        com.cmplay.base.util.g.a("zzb", "checkVideoDownloaded 耗时：" + (System.currentTimeMillis() - currentTimeMillis));
        return true;
    }

    public String o() {
        String str = null;
        if (this.i != null) {
            str = new com.cmplay.internalpush.video.b(this.i.h(), this.i.r(), this.i.A(), this.i.B(), this.i.y(), this.i.F(), this.i.G(), this.i.l(), this.i.H(), this.i.I(), this.i.t(), this.i.s(), this.i.J(), this.i.K(), this.i.Q(), this.i.P(), this.i.b(), this.r, this.i.i()).a();
        } else if (!this.f.isEmpty()) {
            this.i = this.f.get(0);
            a(this.j).a(this.i.h(), 1);
            if (this.i.ac()) {
                com.cmplay.internalpush.a.d.b("last_show_hit_top_time" + a(), System.currentTimeMillis());
            } else {
                com.cmplay.internalpush.a.d.b("last_show_open_screen_time" + a(), System.currentTimeMillis());
            }
            str = new com.cmplay.internalpush.video.b(this.i.h(), this.i.r(), this.i.A(), this.i.B(), this.i.y(), this.i.F(), this.i.G(), this.i.l(), this.i.H(), this.i.I(), this.i.t(), this.i.s(), this.i.J(), this.i.K(), this.i.Q(), this.i.P(), this.i.b(), this.r, this.i.i()).a();
        }
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.getInnerPushModelForShow  dataJson:" + str);
        return str;
    }

    public class VideoProgressStatusReceiver extends BroadcastReceiver {
        public VideoProgressStatusReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction().equals("com.cmplay.libinnerpushvideo.video.Progress_notify")) {
                switch (intent.getIntExtra("video_progress_status", 0)) {
                    case 1:
                        if (ParseCloudDataVideo.this.u != null) {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoShow()");
                            ParseCloudDataVideo.this.u.a();
                            ParseCloudDataVideo.this.f1426b = false;
                            ParseCloudDataVideo.this.a(true);
                        }
                        ParseCloudDataVideo.this.n = true;
                        break;
                    case 2:
                        boolean booleanExtra = intent.getBooleanExtra("is_complete_view", false);
                        if (ParseCloudDataVideo.this.u != null) {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoComplete()");
                            ParseCloudDataVideo.this.u.a(booleanExtra);
                            break;
                        }
                        break;
                    case 3:
                        if (ParseCloudDataVideo.this.u != null) {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoClick()");
                            ParseCloudDataVideo.this.u.b();
                            break;
                        }
                        break;
                    case 4:
                        String stringExtra = intent.getStringExtra("error_info");
                        if (ParseCloudDataVideo.this.u != null) {
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.VideoProgressStatusReceiver  onReceive onVideoShowFail()");
                            ParseCloudDataVideo.this.u.a(stringExtra);
                        }
                        ParseCloudDataVideo.this.n = false;
                        break;
                    case 5:
                        ParseCloudDataVideo.this.n = false;
                        break;
                }
            }
        }
    }

    public int p() {
        com.cmplay.base.util.g.a("reportNeituiSdkApp", "ParseCloudDataVideo.getScence scene:" + this.r);
        return this.r;
    }

    public void a(int i, TimerTask timerTask) {
        com.cmplay.base.util.g.a("internal_push", "ParseCloudDataVideo.startTimer   delayTime:" + i);
        q();
        u();
        if (i < 0) {
            i = 0;
        }
        this.x.schedule(timerTask, i);
    }

    private void u() {
        if (this.x == null) {
            this.x = new Timer();
        }
    }

    public void q() {
        if (this.x != null) {
            this.x.cancel();
            this.x = null;
        }
    }
}
