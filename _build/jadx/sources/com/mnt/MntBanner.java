package com.mnt;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mnt.a.a;
import com.mnt.impl.dsp.d;
import com.mnt.impl.view.BannerView;
import com.mnt.impl.view.c;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntBanner {

    /* renamed from: a, reason: collision with root package name */
    private Context f3898a;

    /* renamed from: b, reason: collision with root package name */
    private MntBuild f3899b;
    private BannerView c;

    public MntBanner(Context context, MntBuild mntBuild) {
        try {
            this.f3898a = context;
            this.f3899b = mntBuild;
            this.c = new BannerView(context);
            this.c.setPlacementId(mntBuild.mPlacementId);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void load() {
        try {
            BannerView bannerView = this.c;
            bannerView.k = this.f3899b;
            new d(bannerView.f4094a, bannerView.g, new c(bannerView)).c();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public View getView() {
        try {
            BannerView bannerView = this.c;
            if (!a.a(bannerView)) {
                return bannerView;
            }
            if (bannerView.f4095b != null) {
                bannerView.f4095b.onAdShowed();
            }
            if (bannerView.m != null && !TextUtils.isEmpty(bannerView.m.e.f3976b)) {
                com.mnt.impl.i.c.a(bannerView.f4094a).a(bannerView.m.e.f3976b);
            }
            if (bannerView.i || bannerView.j == null || bannerView.f == null) {
                return bannerView;
            }
            bannerView.i = true;
            bannerView.j.b(bannerView.f);
            return bannerView;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void setAdListener(IAdListener iAdListener) {
        try {
            this.c.setAdListener(iAdListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void clean() {
        try {
            BannerView bannerView = this.c;
            if (bannerView.c != null) {
                bannerView.c.destroyDrawingCache();
                bannerView.c = null;
            }
            if (bannerView.d != null) {
                bannerView.d.destroyDrawingCache();
                bannerView.d = null;
            }
            if (bannerView.e != null) {
                bannerView.e.destroyDrawingCache();
                bannerView.e = null;
            }
            if (bannerView.f != null) {
                bannerView.f = null;
            }
            if (bannerView.f4095b != null) {
                bannerView.f4095b = null;
            }
            if (bannerView.h == null) {
                return;
            }
            bannerView.h.clear();
            bannerView.h = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean isAdLoaded() {
        try {
            return this.c.l;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public String getPlacementId() {
        try {
            return this.f3899b.mPlacementId;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public Context getContext() {
        return this.f3898a;
    }
}
