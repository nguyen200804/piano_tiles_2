package com.duapps.ad.c.a;

import android.content.Context;
import com.duapps.ad.base.h;
import com.duapps.ad.base.m;
import com.duapps.ad.base.n;
import com.duapps.ad.base.p;
import com.duapps.ad.base.s;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import com.duapps.ad.stats.f;
import java.util.Iterator;
import java.util.List;

/* compiled from: TimerPuller.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: b, reason: collision with root package name */
    private static e f2112b = null;

    /* renamed from: a, reason: collision with root package name */
    s<AdModel> f2113a = new s<AdModel>() { // from class: com.duapps.ad.c.a.e.1
        @Override // com.duapps.ad.base.s
        public void a() {
        }

        @Override // com.duapps.ad.base.s
        public void a(int i, AdModel adModel) {
            List<AdData> list;
            int size;
            if (adModel != null && (list = adModel.h) != null && (size = list.size()) > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    AdData adData = list.get(i2);
                    String str = adData.d;
                    if (str != null && str.equals(e.this.d) && adData.H == 1) {
                        f fVar = new f(adData);
                        fVar.a(true);
                        e.this.e.e(fVar, adData.i);
                    }
                }
            }
        }

        @Override // com.duapps.ad.base.s
        public void a(int i, String str) {
        }
    };
    private Context c;
    private String d;
    private com.duapps.ad.stats.d e;

    private e(Context context) {
        this.c = context;
        this.e = new com.duapps.ad.stats.d(context);
    }

    public static e a(Context context) {
        if (f2112b == null) {
            synchronized (e.class) {
                if (f2112b == null) {
                    f2112b = new e(context.getApplicationContext());
                }
            }
        }
        return f2112b;
    }

    public void a(String str) {
        this.d = str;
        h.a("TimerPuller", "Pull TriggerPreParseAd ... ");
        long n = m.n(this.c);
        if (n != 0) {
            long a2 = a(m.o(this.c), n);
            if (a2 == -1) {
                m.p(this.c);
            } else if (a2 == 0) {
                a();
            }
        }
    }

    private long a(long j, long j2) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (currentTimeMillis < 0) {
            return -1L;
        }
        if (currentTimeMillis <= j2) {
            return j2 - currentTimeMillis;
        }
        return 0L;
    }

    private void a() {
        if (com.duapps.ad.c.b.c.a(this.c)) {
            h.a("TimerPuller", "PullTcppNativeWall ... ");
            m.p(this.c);
            Iterator<Integer> it = p.a(this.c).a().iterator();
            if (it.hasNext()) {
                n.a(this.c).a(it.next().intValue(), 1, this.f2113a, this.d);
            }
        }
    }

    public void a(boolean z, String str) {
        this.d = str;
        int i = 0;
        if (z) {
            Iterator<Integer> it = p.a(this.c).a().iterator();
            if (it.hasNext()) {
                i = it.next().intValue();
            }
        } else {
            i = m.A(this.c);
        }
        if (i == 0) {
            i = -19999;
        }
        n.a(this.c).a(i, 1, this.f2113a, this.d);
    }
}
