package com.mnt;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.mnt.MntBuild;
import com.mnt.impl.a.g;
import com.mnt.impl.a.h;
import com.mnt.impl.a.i;
import com.mnt.impl.b;
import com.mnt.impl.dsp.d;
import com.mnt.impl.i.c;
import java.lang.ref.SoftReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntInterstitial {

    /* renamed from: a, reason: collision with root package name */
    private Context f3902a;

    /* renamed from: b, reason: collision with root package name */
    private MntBuild f3903b;
    private h c;

    public MntInterstitial(Context context, MntBuild mntBuild) {
        this.f3902a = context;
        this.f3903b = mntBuild;
        this.c = new h(context);
        h hVar = this.c;
        hVar.d = mntBuild.mPlacementId;
        hVar.c = new b(hVar.f3925a);
        hVar.c.f3930b = hVar;
    }

    public void load() {
        h hVar = this.c;
        MntBuild mntBuild = this.f3903b;
        MntBuild.Builder builder = new MntBuild.Builder(hVar.f3925a, mntBuild.mPlacementId, MntAdType.NATIVE.getType(), mntBuild.mAdListener);
        builder.setCreatives(Ad.AD_CREATIVE_SIZE_1200x627);
        builder.setAdsNum(1);
        hVar.m = builder.build();
        g.a().f3923a = new SoftReference<>(hVar.m);
        new d(hVar.f3925a, hVar.d, new i(hVar)).c();
    }

    public void onDestory() {
        h hVar = this.c;
        if (hVar.l != null) {
            hVar.l.clear();
            hVar.l = null;
        }
        if (hVar.m != null) {
            hVar.m = null;
        }
        g a2 = g.a();
        if (a2.c == null) {
            return;
        }
        a2.c = null;
    }

    public void setAdListener(IAdListener iAdListener) {
        this.c.e = iAdListener;
    }

    public void setNativeAd() {
        h hVar = this.c;
        hVar.c = new b(hVar.f3925a);
        hVar.c.f3930b = hVar;
    }

    public void show() {
        h hVar = this.c;
        try {
            g.a().f3924b = new SoftReference<>(hVar.c);
            Intent intent = MntActivity.getIntent(hVar.m.mContext, com.mnt.impl.a.b.class);
            intent.putExtra(h.h, hVar.f3926b);
            intent.putExtra(h.g, hVar.d);
            intent.putExtra(h.i, hVar.k);
            if (hVar.n != null) {
                intent.putExtra(h.j, hVar.n.d.f3974b);
                if (!TextUtils.isEmpty(hVar.n.e.f3976b)) {
                    c.a(hVar.f3925a).a(hVar.n.e.f3976b);
                }
            }
            hVar.m.mContext.startActivity(intent);
            hVar.e.onAdShowed();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean isAdLoaded() {
        return this.c.f;
    }

    public Context getContext() {
        return this.f3902a;
    }

    public MntAdConfig getAdConfig() {
        return null;
    }
}
