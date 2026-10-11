package com.mopub.nativesdk.core;

import android.content.Context;
import android.support.v4.os.EnvironmentCompat;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.b.b;
import com.mopub.nativesdk.c.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BTManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {
    private static j c;

    /* renamed from: a, reason: collision with root package name */
    List<Campaign> f4666a;

    /* renamed from: b, reason: collision with root package name */
    List<Campaign> f4667b;
    private Context d;
    private y e;
    private int f;
    private int g;
    private int h;
    private Map<Long, Integer> i;

    private j(Context context) {
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = new HashMap();
        this.d = context;
        this.e = H.a(context).a();
    }

    public static j a(Context context) {
        if (c == null) {
            c = new j(context);
        }
        c.d = context;
        return c;
    }

    public final boolean a(y yVar) {
        if (yVar == null) {
            yVar = H.a(this.d).a();
        }
        this.e = yVar;
        long longValue = com.mopub.nativesdk.d.q.a(this.d, "ak.native.sdk", "BT_LAST_TIME", (Long) 0L).longValue();
        long j = 259200000;
        if (this.e != null) {
            j = y.a().f4640b;
        }
        new StringBuilder("BTManager 3  curr-lastBT: ").append(System.currentTimeMillis() - longValue).append("     time: ").append(j);
        if (System.currentTimeMillis() - longValue > j) {
            com.mopub.nativesdk.d.q.a(this.d, "ak.native.sdk", "BT_COUNT", 0);
            com.mopub.nativesdk.d.q.a(this.d, "ak.native.sdk", "BT_LAST_TIME", System.currentTimeMillis());
            if (this.f4666a != null) {
                this.f4666a.clear();
            }
            this.h = 0;
            this.g = 0;
            return false;
        }
        Context context = this.d;
        int i = context == null ? 0 : context.getSharedPreferences("ak.native.sdk", 0).getInt("BT_COUNT", 0);
        int i2 = 10;
        new StringBuilder("----------->    mStrategy: ").append(this.e);
        if (this.e != null) {
            i2 = y.a().e;
            new StringBuilder("----------->    mStrategy.getBTStrategy().btNum: ").append(y.a().e);
        }
        new StringBuilder("----------->    cache: ").append(this.f4666a).append("   btCount: ").append(this.h);
        if (this.f4666a == null || this.f4666a.size() <= 0) {
            if (this.f4666a == null) {
                this.f4666a = new ArrayList();
            }
            if (this.h == 0) {
                return a();
            }
        }
        if (this.i == null) {
            this.i = new HashMap();
        }
        new StringBuilder("BTManager 5  count: ").append(i).append("   max: ").append(i2);
        if (i >= i2 || this.f4666a.size() <= 0) {
            return false;
        }
        com.mopub.nativesdk.d.q.a(this.d, "ak.native.sdk", "BT_COUNT", i + 1);
        new StringBuilder("BTManager 6  count: ").append(i + 1);
        Campaign campaign = this.f4666a.get(0);
        if (this.i.containsKey(Long.valueOf(campaign.getId()))) {
            int intValue = this.i.get(Long.valueOf(campaign.getId())).intValue();
            if (intValue <= 0) {
                this.i.put(Long.valueOf(campaign.getId()), Integer.valueOf(intValue + 1));
            }
            this.f4666a.remove(0);
            return true;
        }
        this.i.put(Long.valueOf(campaign.getId()), 0);
        String str = campaign.getClickUrl() + "&bt=1";
        this.h++;
        new b().a(this.d, str, new v(this, campaign));
        this.f4666a.remove(0);
        return true;
    }

    private synchronized boolean a() {
        boolean z = false;
        synchronized (this) {
            new StringBuilder("BTManager 2  load ").append(this.g);
            Context context = this.d;
            if (((context == null || EnvironmentCompat.MEDIA_UNKNOWN.endsWith(com.mopub.nativesdk.d.l.b(context))) ? false : true) && this.g <= 5) {
                this.g++;
                int i = this.e != null ? y.a().d : 5;
                d dVar = new d(this.d);
                dVar.a(com.mopub.nativesdk.d.q.b(this.d, "ak.native.sdk", "APPID", "5745-186"));
                dVar.b(com.mopub.nativesdk.d.q.b(this.d, "ak.native.sdk", "SUBID", "1"));
                dVar.a(i);
                dVar.b(this.f);
                dVar.c("default");
                dVar.a(0, new u(this));
                z = true;
            }
        }
        return z;
    }

    public j() {
    }
}
