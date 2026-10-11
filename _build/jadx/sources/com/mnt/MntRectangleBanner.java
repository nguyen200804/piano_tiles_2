package com.mnt;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mnt.a.a;
import com.mnt.impl.dsp.d;
import com.mnt.impl.i.c;
import com.mnt.impl.view.RectangleBannerView;
import com.mnt.impl.view.g;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntRectangleBanner {

    /* renamed from: a, reason: collision with root package name */
    private Context f3907a;

    /* renamed from: b, reason: collision with root package name */
    private MntBuild f3908b;
    private RectangleBannerView c;

    public MntRectangleBanner(Context context, MntBuild mntBuild) {
        try {
            this.f3907a = context;
            this.f3908b = mntBuild;
            this.c = new RectangleBannerView(context);
            this.c.setPlacementId(mntBuild.mPlacementId);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void load() {
        try {
            RectangleBannerView rectangleBannerView = this.c;
            rectangleBannerView.i = this.f3908b;
            new d(rectangleBannerView.f4096a, rectangleBannerView.f, new g(rectangleBannerView)).c();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public View getView() {
        try {
            RectangleBannerView rectangleBannerView = this.c;
            if (!a.a(rectangleBannerView)) {
                return rectangleBannerView;
            }
            if (rectangleBannerView.c != null) {
                rectangleBannerView.c.onAdShowed();
            }
            if (rectangleBannerView.k != null && !TextUtils.isEmpty(rectangleBannerView.k.e.f3976b)) {
                c.a(rectangleBannerView.f4096a).a(rectangleBannerView.k.e.f3976b);
            }
            if (rectangleBannerView.h || rectangleBannerView.d == null || rectangleBannerView.e == null) {
                return rectangleBannerView;
            }
            rectangleBannerView.h = true;
            rectangleBannerView.e.b(rectangleBannerView.d);
            return rectangleBannerView;
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
            RectangleBannerView rectangleBannerView = this.c;
            if (rectangleBannerView.i != null) {
                rectangleBannerView.i = null;
            }
            if (rectangleBannerView.f4097b != null) {
                rectangleBannerView.f4097b.destroyDrawingCache();
                rectangleBannerView.f4097b = null;
            }
            if (rectangleBannerView.e != null) {
                rectangleBannerView.e.a();
                rectangleBannerView.e = null;
            }
            if (rectangleBannerView.c != null) {
                rectangleBannerView.c = null;
            }
            if (rectangleBannerView.g == null) {
                return;
            }
            rectangleBannerView.g.clear();
            rectangleBannerView.g = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean isAdLoaded() {
        try {
            return this.c.j;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public String getPlacementId() {
        try {
            return this.f3908b.mPlacementId;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public Context getContext() {
        return this.f3907a;
    }
}
