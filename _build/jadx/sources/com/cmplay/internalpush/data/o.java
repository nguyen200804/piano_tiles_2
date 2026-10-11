package com.cmplay.internalpush.data;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ParseCloudDataBase.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class o implements com.cmplay.internalpush.a.a.a {
    protected Context j;
    protected boolean c = false;
    protected CopyOnWriteArrayList<c> d = new CopyOnWriteArrayList<>();
    protected ArrayList<j> e = new ArrayList<>();
    protected List<c> f = new ArrayList();
    protected List<c> g = new ArrayList();
    protected List<m> h = new ArrayList();
    protected c i = null;
    protected boolean k = false;
    protected String l = "";

    public abstract String a();

    public CopyOnWriteArrayList<c> c() {
        i();
        return this.d;
    }

    public ArrayList<c> a(String str, boolean z) {
        int i = 0;
        if (this instanceof n) {
            i = 1;
        } else if (this instanceof p) {
            i = 2;
        } else if (this instanceof q) {
            i = 3;
        } else if (this instanceof ParseCloudDataVideo) {
            i = 4;
        } else if (this instanceof com.cmplay.internalpush.data.a) {
            i = 5;
        } else if (this instanceof k) {
            i = 6;
        } else if (this instanceof b) {
            i = 7;
        }
        ArrayList<c> arrayList = new ArrayList<>();
        int i2 = 2;
        if (this instanceof ParseCloudDataVideo) {
            i2 = 1;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONObject(str).getJSONArray("data");
                for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                    c cVar = new c();
                    JSONObject jSONObject = jSONArray.getJSONObject(i3);
                    cVar.a(jSONObject.optLong("start_time"));
                    cVar.b(jSONObject.optLong("end_time"));
                    cVar.a(jSONObject.optInt("show_times"));
                    cVar.c(jSONObject.optLong("interval_time"));
                    cVar.b(jSONObject.optString("pro_name"));
                    cVar.d(jSONObject.optLong("pro_id"));
                    cVar.e(jSONObject.optInt("pro_priority"));
                    cVar.b(jSONObject.optInt("rotation_times"));
                    cVar.b(jSONObject.optBoolean("click_dis"));
                    cVar.c(jSONObject.optString("bg_img"));
                    cVar.e(jSONObject.optString("button_img"));
                    cVar.f(jSONObject.optString("button_img2"));
                    cVar.p(jSONObject.optInt("show_type"));
                    cVar.t(jSONObject.optString("playable_url"));
                    cVar.a(jSONObject.optBoolean("button_moving"));
                    cVar.i(jSONObject.optString("pkg_name"));
                    cVar.j(jSONObject.optString("jump_url"));
                    cVar.c(jSONObject.optInt("jump_type"));
                    cVar.h(jSONObject.optInt("new_player"));
                    cVar.a(jSONObject.optString("default_jump_url"));
                    cVar.f(jSONObject.optInt("pro_type"));
                    cVar.k(jSONObject.optString("icon_url"));
                    cVar.m(jSONObject.optString("title"));
                    cVar.n(jSONObject.optString(FacebookAdapter.KEY_SUBTITLE_ASSET));
                    cVar.g(jSONObject.optInt("reward_counts"));
                    cVar.o(jSONObject.optString(BaseVideoPlayerActivity.VIDEO_URL));
                    cVar.i(jSONObject.optInt("video_width"));
                    cVar.j(jSONObject.optInt("video_height"));
                    cVar.g(jSONObject.optLong("comment_star"));
                    cVar.q(jSONObject.optString("downloads"));
                    cVar.k(jSONObject.optInt("shield_time"));
                    cVar.r(jSONObject.optString("button_txt"));
                    cVar.s(jSONObject.optString("button_txt2"));
                    cVar.a(jSONObject.isNull("percentage") ? 0.0d : jSONObject.getDouble("percentage"));
                    cVar.l(jSONObject.optInt("display_type"));
                    cVar.m(jSONObject.optInt("priority_reddot"));
                    cVar.n(jSONObject.optInt("show_by_startup"));
                    cVar.d(jSONObject.optBoolean("ad_tag_show"));
                    if (!jSONObject.isNull("day_limit")) {
                        cVar.q(jSONObject.getInt("day_limit"));
                    } else {
                        cVar.q(i2);
                    }
                    JSONArray optJSONArray = jSONObject.optJSONArray("language");
                    if (optJSONArray != null) {
                        for (int i4 = 0; i4 < optJSONArray.length(); i4++) {
                            JSONObject jSONObject2 = optJSONArray.getJSONObject(i4);
                            l lVar = new l();
                            lVar.f1453a = jSONObject2.optString("cl");
                            lVar.f1454b = jSONObject2.optString("title");
                            lVar.c = jSONObject2.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
                            cVar.X().add(lVar);
                        }
                    }
                    String optString = jSONObject.optString("appstore");
                    if (!TextUtils.isEmpty(optString)) {
                        JSONArray jSONArray2 = new JSONArray(optString);
                        for (int i5 = 0; i5 < jSONArray2.length(); i5++) {
                            JSONObject jSONObject3 = jSONArray2.getJSONObject(i5);
                            cVar.a(new com.cmplay.base.util.b(jSONObject3.optString("pkg"), jSONObject3.optString("market")));
                        }
                    }
                    arrayList.add(cVar);
                }
                if (z) {
                    com.cmplay.internalpush.o.a().a(i, 20, "", 0L, "", 0, 0, 0L);
                }
            } catch (JSONException e) {
                if (z) {
                    com.cmplay.internalpush.o.a().a(i, 15, "", 0L, Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")), 0, 0, 0L);
                }
                e.printStackTrace();
            }
        } else if (z) {
            boolean innpush_isPullDataFromServer = IpcCloudHelper.getInstance().innpush_isPullDataFromServer();
            String encode = innpush_isPullDataFromServer ? Uri.encode(IpcCloudHelper.getInstance().innpush_getUrl("")) : "";
            com.cmplay.internalpush.o.a().a(i, 23, "", 0L, encode, 0, 0, 0L);
            com.cmplay.base.util.g.a("internal_push", "没有json数据   isHavePullDataFromServer:" + innpush_isPullDataFromServer + "   maigcUrl:" + encode);
        }
        return arrayList;
    }

    public void a(String str) {
        ArrayList<c> a2 = a(str, true);
        Collections.sort(a2, new a());
        this.d.clear();
        this.d.addAll(a2);
        h();
    }

    public void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            ArrayList<c> a2 = a(str, true);
            a2.addAll(this.d);
            Collections.sort(a2, new a());
            this.d.clear();
            this.d.addAll(a2);
            h();
        }
    }

    /* compiled from: ParseCloudDataBase.java */
    class a implements Comparator<c> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(c cVar, c cVar2) {
            if (cVar == null || cVar2 == null) {
                return 0;
            }
            if (cVar.i() > cVar2.i()) {
                return -1;
            }
            return cVar.i() != cVar2.i() ? 1 : 0;
        }
    }

    public void h() {
        for (int i = 0; i < this.d.size(); i++) {
            c cVar = this.d.get(i);
            if (cVar != null && cVar.ac()) {
                this.d.remove(i);
                this.d.add(0, cVar);
                this.g.add(cVar);
            }
        }
    }

    public void a(long j, int i) {
        long a2 = com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L);
        boolean a3 = com.cmplay.internalpush.a.b.a(a2);
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null && next.h() == j) {
                switch (i) {
                    case 1:
                        next.f(System.currentTimeMillis());
                        next.d(next.u() + 1);
                        next.e(next.x() + 1);
                        if (next.ac()) {
                            if (!a3) {
                                next.r(0);
                                com.cmplay.base.util.g.a("internal_push", "updateShowedStatus  不是相同自然天，重置爆款当天展示次     lastShowHitTopTime:" + a2);
                            }
                            next.r(next.ab() + 1);
                        }
                        if (!(this instanceof n)) {
                            break;
                        } else if (next.ac()) {
                            com.cmplay.internalpush.a.d.b("hit_top_launch_time", 0);
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataBase.updateShowedStatus  HIT_TOP_LAUNCH_TIME reset  curLaunchTime:" + com.cmplay.internalpush.a.d.a("hit_top_launch_time", 0));
                            break;
                        } else {
                            com.cmplay.internalpush.a.d.b("launch_time", 0);
                            com.cmplay.base.util.g.a("internal_push", "ParseCloudDataBase.updateShowedStatus  LAUNCH_TIME reset  curLaunchTime:" + com.cmplay.internalpush.a.d.a("launch_time", 0));
                            break;
                        }
                    case 2:
                        next.c(true);
                        break;
                }
            }
        }
        a(this.d);
    }

    public void i() {
        long a2 = com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + a(), 0L);
        boolean a3 = com.cmplay.internalpush.a.b.a(a2);
        this.e.clear();
        this.e = j();
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            Iterator<j> it2 = this.e.iterator();
            while (it2.hasNext()) {
                j next2 = it2.next();
                if (next != null && next2 != null && next.h() == next2.a()) {
                    next.c(next2.d());
                    next.d(next2.b());
                    next.f(next2.c());
                    next.e(next2.e());
                    next.o(next2.f());
                    if (!a3) {
                        next2.d(0);
                        com.cmplay.base.util.g.a("internal_push", "synShowedStatusToInfoList  不是相同自然天，重置爆款当天展示次     lastShowHitTopTime:" + a2);
                    }
                    next.r(next2.g());
                }
            }
        }
    }

    public void a(CopyOnWriteArrayList<c> copyOnWriteArrayList) {
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            ArrayList arrayList = new ArrayList(copyOnWriteArrayList);
            int size = arrayList.size();
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (i < size) {
                c cVar = (c) arrayList.get(i);
                if (cVar != null) {
                    String str = i == 0 ? "%d|%d|%d|%d|%d|%d|%d" : ";%d|%d|%d|%d|%d|%d|%d";
                    try {
                        Object[] objArr = new Object[7];
                        objArr[0] = Long.valueOf(cVar.h());
                        objArr[1] = Integer.valueOf(cVar.w() ? 1 : 0);
                        objArr[2] = Integer.valueOf(cVar.u());
                        objArr[3] = Long.valueOf(cVar.v());
                        objArr[4] = Integer.valueOf(cVar.x());
                        objArr[5] = Integer.valueOf(cVar.T());
                        objArr[6] = Integer.valueOf(cVar.ab());
                        sb.append(String.format(str, objArr));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                i++;
            }
            com.cmplay.base.util.g.a("internal_push", "savePromotionStatus:" + sb.toString());
            com.cmplay.internalpush.a.d.b("promotion_app_status" + a(), sb.toString());
        }
    }

    public ArrayList<j> j() {
        ArrayList<j> arrayList = new ArrayList<>();
        String a2 = com.cmplay.internalpush.a.d.a("promotion_app_status" + a(), "");
        if (!TextUtils.isEmpty(a2)) {
            com.cmplay.base.util.g.a("internal_push", "parsePromotionStatus strStatus=" + a2);
            String[] split = a2.split(";");
            for (String str : split) {
                String[] split2 = str.split("\\|");
                j jVar = new j();
                for (int i = 0; i < split2.length; i++) {
                    if (i == 0) {
                        try {
                            jVar.a(Long.parseLong(split2[i]));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (1 == i) {
                        jVar.a(1 == Integer.parseInt(split2[i]));
                    }
                    if (2 == i) {
                        jVar.a(Integer.parseInt(split2[i]));
                    }
                    if (3 == i) {
                        jVar.b(Long.parseLong(split2[i]));
                    }
                    if (4 == i) {
                        jVar.b(Integer.parseInt(split2[i]));
                    }
                    if (5 == i) {
                        jVar.c(Integer.parseInt(split2[i]));
                    }
                    if (6 == i) {
                        jVar.d(Integer.parseInt(split2[i]));
                    }
                }
                arrayList.add(jVar);
            }
        }
        return arrayList;
    }

    public void k() {
        this.i = null;
        com.cmplay.base.util.g.a("internal_push", "resetCurShowInfo()");
    }

    public boolean a(long j, String str) {
        boolean z = false;
        Iterator<c> it = this.d.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                c next = it.next();
                if (next != null && next.h() == j) {
                    next.p(str);
                    z2 = true;
                }
                z = z2;
            } else {
                return z2;
            }
        }
    }

    public void a(long j) {
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null && next.h() == j) {
                next.f(true);
            }
        }
    }

    public void l() {
        Iterator<c> it = this.d.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null) {
                next.f(false);
            }
        }
    }

    public void a(c cVar, int i) {
        int i2;
        if (cVar != null) {
            String str = "";
            switch (i) {
                case 8:
                    str = cVar.l();
                    i2 = 1;
                    break;
                case 9:
                    str = cVar.n();
                    i2 = 2;
                    break;
                case 11:
                    str = cVar.y();
                    i2 = 3;
                    break;
                case 12:
                case 1001:
                    str = cVar.F();
                    i2 = 4;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (i2 > 0) {
                this.h.add(new m(cVar.h(), cVar.r(), str, cVar.i(), i2));
            }
        }
    }

    public void a(int i) {
        for (m mVar : this.h) {
            if (mVar != null) {
                com.cmplay.internalpush.o.a().a(i, 14, mVar.f1456b, mVar.f1455a, Uri.encode(mVar.c), mVar.e, 0, mVar.d);
            }
        }
    }
}
