package com.mnt.impl.a;

import android.content.Context;
import android.text.TextUtils;
import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntBuild;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h implements com.mnt.a.f {
    public static final String g = com.mnt.impl.e.pS;
    public static final String h = com.mnt.impl.e.pT;
    public static final String i = com.mnt.impl.e.pU;
    public static final String j = com.mnt.impl.e.pV;

    /* renamed from: a, reason: collision with root package name */
    public Context f3925a;

    /* renamed from: b, reason: collision with root package name */
    public Ad f3926b;
    public com.mnt.impl.b c;
    public String d;
    public IAdListener e;
    public boolean f;
    public int k;
    public List<String> l;
    public MntBuild m;
    public com.mnt.impl.dsp.c n;
    int o;
    int p;
    private boolean q = false;
    private com.mnt.impl.f.a r = new j(this);

    public h(Context context) {
        this.f3925a = context;
    }

    @Override // com.mnt.a.f
    public final void a(AdError adError) {
        this.f3926b = null;
        this.e.onAdError(adError);
    }

    @Override // com.mnt.a.f
    public final void a(List<Ad> list) {
        if (list != null && list.size() > 0) {
            Iterator<Ad> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Ad next = it.next();
                List<String> creatives = ((com.mnt.impl.e.c) next).getCreatives(Ad.AD_CREATIVE_SIZE_1200x627);
                if (creatives != null && !creatives.isEmpty()) {
                    this.q = true;
                    if (next instanceof Ad) {
                        this.f3926b = next;
                        Ad ad = this.f3926b;
                        this.l = new ArrayList();
                        this.l.add(ad.getIcon());
                        List<String> creatives2 = ((com.mnt.impl.e.c) ad).getCreatives(Ad.AD_CREATIVE_SIZE_1200x627);
                        if (creatives2 != null && !creatives2.isEmpty()) {
                            int i2 = 0;
                            while (true) {
                                int i3 = i2;
                                if (i3 >= creatives2.size()) {
                                    break;
                                }
                                String str = creatives2.get(i3);
                                if (!TextUtils.isEmpty(str)) {
                                    this.l.add(str);
                                    Context context = this.f3925a;
                                    com.mnt.impl.f.a aVar = this.r;
                                    int i4 = com.mnt.impl.c.a.f3957b.c;
                                    new com.mnt.impl.g.a(context, str, aVar).c();
                                }
                                i2 = i3 + 1;
                            }
                            Context context2 = this.f3925a;
                            String icon = ad.getIcon();
                            com.mnt.impl.f.a aVar2 = this.r;
                            int i5 = com.mnt.impl.c.a.f3957b.c;
                            new com.mnt.impl.g.a(context2, icon, aVar2).c();
                        }
                    }
                }
            }
            if (!this.q) {
                this.e.onAdError(AdError.NO_MATERIAL);
                return;
            }
            return;
        }
        if (this.e != null) {
            this.e.onAdError(AdError.NO_OFFERS);
        }
    }

    @Override // com.mnt.a.f
    public final void a() {
        if (this.e != null) {
            this.e.onAdClicked();
        }
        if (this.c != null) {
            this.c.a(this.f3926b);
        }
    }

    @Override // com.mnt.a.f
    public final void b() {
    }
}
