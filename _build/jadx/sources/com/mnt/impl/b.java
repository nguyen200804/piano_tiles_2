package com.mnt.impl;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.MntActivity;
import com.mnt.MntAdType;
import com.mnt.MntBuild;
import com.mnt.MntNative;
import com.mnt.impl.b.f;
import com.mnt.impl.b.k;
import com.mnt.impl.e.g;
import com.mnt.impl.f.d;
import com.mnt.impl.f.h;
import com.mnt.impl.f.j;
import com.mnt.impl.view.TitleView;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b implements View.OnKeyListener, d.a, h.a {
    private static final String f = e.lT;
    private static final String g = "2147483647";

    /* renamed from: a, reason: collision with root package name */
    public MntNative f3929a;

    /* renamed from: b, reason: collision with root package name */
    public com.mnt.a.f f3930b;
    public List<Ad> c;
    public boolean d;
    public Context e;
    private MntBuild h;
    private int i;

    public b(Context context) {
        this.e = context.getApplicationContext();
    }

    public final void a(MntBuild mntBuild) {
        this.h = mntBuild;
        try {
            this.i = com.mnt.impl.c.a.f3956a.c;
            if (this.f3929a == null) {
                this.f3929a = new MntNative(mntBuild.getContext(), mntBuild.mPlacementId);
                this.f3929a.setAdsNum(mntBuild.mAdsNum);
                this.f3929a.setChannel(mntBuild.mChannel);
                this.f3929a.setCreatives(mntBuild.mCreatives);
                this.f3929a.setDownloadType(mntBuild.mDownloadType);
            }
            if (this.h.mPlacementId == null) {
                Log.e(f, e.lU);
                if (this.h.mAdListener != null) {
                    this.h.mAdListener.onAdError(AdError.NO_MATERIAL);
                    return;
                }
                return;
            }
            String appKey = this.f3929a.getAppKey();
            if (TextUtils.isEmpty(appKey)) {
                appKey = com.mnt.impl.b.h.j(this.e);
                this.f3929a.setAppKey(appKey);
            }
            if (TextUtils.isEmpty(appKey)) {
                Log.e(f, e.lW);
                a(AdError.NO_APPKEY);
            } else if (!com.mnt.a.a.d(this.e)) {
                a(AdError.NO_NETWORK);
            } else {
                new j(this.e, this.h.mPlacementId, this.h.mCreatives, this.h.mAdsNum, new d(this)).c();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        com.mnt.impl.e.g a2 = com.mnt.impl.f.d.a(this.e);
        if (a2 == null || a2.b()) {
            new com.mnt.impl.f.d(this.e, this).c();
        } else {
            a(a2, true, this.h);
            com.mnt.impl.k.a.a(this.e, a2);
        }
    }

    public final void a(boolean z, String str) {
        if (!TextUtils.isEmpty(com.mnt.impl.b.h.j(this.e))) {
            com.mnt.impl.e.g a2 = com.mnt.impl.f.d.a(this.e);
            if (!z || a2 == null || a2.b()) {
                com.mnt.impl.f.d dVar = new com.mnt.impl.f.d(this.e, null);
                dVar.f4008a = str;
                dVar.c();
                return;
            }
            com.mnt.impl.k.a.a(this.e, a2, false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mnt.impl.e.g gVar, boolean z, MntBuild mntBuild) {
        int i;
        try {
            if (gVar == null) {
                a(AdError.NO_OFFERS);
                return;
            }
            if (gVar.f3991a != 200) {
                a(AdError.SERVER_ERROR);
                return;
            }
            if (this.f3930b != null) {
                String str = mntBuild.mPlacementId;
                String uuid = UUID.randomUUID().toString();
                g.c cVar = gVar.g;
                List<Ad> a2 = k.a(z, this.e, gVar.f, c(), this.f3929a.getCreatives(), str, cVar, uuid);
                StringBuilder sb = new StringBuilder();
                if (a2 != null) {
                    i = a2.size();
                    Iterator<Ad> it = a2.iterator();
                    while (it.hasNext()) {
                        sb.append(e.lX).append(((com.mnt.impl.e.c) it.next()).getCampId());
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(0);
                    }
                } else {
                    i = 0;
                }
                if (cVar != null && !TextUtils.isEmpty(cVar.f3997a)) {
                    Uri.Builder a3 = k.a(this.e, cVar.f3997a, str, uuid, sb.toString());
                    a3.appendQueryParameter(e.lY, String.valueOf(c()));
                    a3.appendQueryParameter(e.lZ, String.valueOf(i));
                    String str2 = "";
                    if (!TextUtils.isEmpty(this.f3929a.getCreatives())) {
                        str2 = this.f3929a.getCreatives();
                    }
                    a3.appendQueryParameter(e.ma, str2);
                    com.mnt.impl.i.c.a(this.e).a(a3.toString());
                }
                if (a2 == null) {
                    a(AdError.NO_OFFERS);
                    return;
                }
                if (i <= 0) {
                    a(AdError.ALL_ADS_COMSUMED);
                    return;
                }
                this.c = a2;
                if (this.i == com.mnt.impl.c.a.f3956a.c) {
                    this.d = true;
                }
                this.f3930b.a(a2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void a(Object obj) {
        Ad ad;
        if ((obj instanceof Ad) && (ad = (Ad) obj) != null && this.h != null && (ad instanceof com.mnt.impl.e.c)) {
            com.mnt.impl.e.c cVar = (com.mnt.impl.e.c) ad;
            com.mnt.impl.b.a.a(this.e).a(new com.mnt.impl.e.a(cVar.getCampId(), System.currentTimeMillis(), cVar.f, cVar.getPackageName(), cVar.h, cVar.f3985a, cVar.e, cVar.c, cVar.i, cVar.j));
            if (!TextUtils.isEmpty(cVar.d)) {
                com.mnt.impl.i.c.a(this.e).a(k.a(this.e, cVar.d, cVar.h, cVar.i, null).toString());
            }
            if (!TextUtils.isEmpty(cVar.k)) {
                for (String str : cVar.k.split(e.mf)) {
                    com.mnt.impl.i.c.a(this.e).a(str);
                }
            }
            com.mnt.impl.e.b bVar = new com.mnt.impl.e.b(cVar.getCampId(), cVar.getPackageName(), cVar.f3985a, 0L, cVar.j);
            switch (cVar.c) {
                case 0:
                    if (this.h.mClickUrl != null) {
                        this.h.mClickUrl.onAnalysisStart();
                        h.a(this.e, bVar, this, false);
                        break;
                    } else {
                        if (k.a(this.e, (Class<? extends Activity>) MntActivity.class)) {
                            try {
                                com.mnt.impl.a.a.a(this.e, cVar);
                                break;
                            } catch (Throwable th) {
                            }
                        }
                        try {
                            TitleView titleView = new TitleView(this.e);
                            titleView.setFocusable(true);
                            titleView.setFocusableInTouchMode(true);
                            titleView.setOnKeyListener(this);
                            com.mnt.impl.b.f a2 = com.mnt.impl.b.f.a(this.e);
                            String str2 = g;
                            int i = f.a.c;
                            a2.f3940b.width = -1;
                            a2.f3940b.height = -1;
                            a2.f3940b.dimAmount = 0.6f;
                            a2.f3940b.flags = 2;
                            if (a2.d.get(str2) == null) {
                                int[] iArr = com.mnt.impl.b.g.f3943a;
                                a2.f3940b.gravity = 17;
                                a2.c = titleView;
                                a2.d.put(str2, a2.c);
                                a2.f3939a.addView(a2.c, a2.f3940b);
                            }
                            h.a(this.e, bVar, this, false);
                            break;
                        } catch (Throwable th2) {
                            a(bVar);
                            return;
                        }
                    }
                case 1:
                case 4:
                    bVar.e = cVar.e;
                    h.a(this.e, bVar, null, false);
                    com.mnt.impl.e.b a3 = h.a(this.e, bVar);
                    if (a3 != null && !a3.a()) {
                        bVar = a3;
                    }
                    if (this.h.mClickUrl != null) {
                        this.h.mClickUrl.onAnalysisStart();
                    }
                    a(bVar);
                    break;
                case 2:
                    if (this.h.mClickUrl != null) {
                        this.h.mClickUrl.onAnalysisStart();
                    }
                    a(bVar);
                    break;
                case 3:
                    if (this.h.mClickUrl != null) {
                        this.h.mClickUrl.onAnalysisStart();
                    }
                    a(bVar);
                    break;
                case 5:
                    if (this.h.mClickUrl != null) {
                        this.h.mClickUrl.onAnalysisStart();
                    }
                    bVar.e = cVar.e;
                    h.a(this.e, bVar, null, false);
                    a(bVar);
                    break;
                default:
                    if (this.h.mClickUrl != null) {
                        this.h.mClickUrl.onAnalysisStart();
                    }
                    a(bVar);
                    break;
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                com.mnt.impl.b.f a2 = com.mnt.impl.b.f.a(this.e);
                String str = g;
                try {
                    if (a2.d.get(str) != null && a2.f3939a != null) {
                        a2.c = a2.d.get(str);
                        a2.f3939a.removeView(a2.c);
                        a2.d.remove(str);
                        a2.c = null;
                        break;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    return false;
                }
                break;
        }
        return false;
    }

    @Override // com.mnt.impl.f.h.a
    public final void a(com.mnt.impl.e.b bVar) {
        k.a(this.e, bVar);
    }

    private int c() {
        return this.h.mAdsNum <= 0 ? com.mnt.impl.b.h.h(this.e) : this.h.mAdsNum;
    }

    public final void b(Object obj) {
        if (obj instanceof Ad) {
            Ad ad = (Ad) obj;
            if (ad instanceof com.mnt.impl.e.c) {
                com.mnt.impl.e.c cVar = (com.mnt.impl.e.c) ad;
                if (!TextUtils.isEmpty(cVar.f3986b)) {
                    com.mnt.impl.i.c.a(this.e).a(k.a(this.e, cVar.f3986b, cVar.h, cVar.i, cVar.getCampId()).toString());
                }
                a(cVar);
            }
        }
    }

    private void a(AdError adError) {
        if (this.f3930b != null) {
            this.f3930b.a(adError);
        }
    }

    @Override // com.mnt.impl.f.d.a
    public final void a(com.mnt.impl.e.g gVar) {
        a(gVar, true, this.h);
    }

    public final void a() {
        if (this.h != null && this.h.mType == MntAdType.NATIVE.getType()) {
            this.h = null;
            com.mnt.impl.f.d.d();
        }
        if (this.c != null) {
            this.c.clear();
            this.c = null;
        }
    }

    public final void a(com.mnt.impl.e.c cVar) {
        if (!TextUtils.isEmpty(cVar.l)) {
            for (String str : cVar.l.split(e.lV)) {
                com.mnt.impl.i.c.a(this.e).a(str);
            }
        }
    }

    static /* synthetic */ void b(b bVar, com.mnt.impl.e.g gVar, MntBuild mntBuild) {
        int i;
        Uri.Builder a2;
        try {
            if (gVar.f == null) {
                bVar.b();
                return;
            }
            if (bVar.f3930b != null) {
                String str = mntBuild.mPlacementId;
                String uuid = UUID.randomUUID().toString();
                g.c cVar = gVar.g;
                List<Ad> a3 = k.a(false, bVar.e, gVar.f, bVar.c(), bVar.f3929a.getCreatives(), str, cVar, uuid);
                StringBuilder sb = new StringBuilder();
                if (a3 != null) {
                    int size = a3.size();
                    Iterator<Ad> it = a3.iterator();
                    while (it.hasNext()) {
                        sb.append(e.mb).append(((com.mnt.impl.e.c) it.next()).getCampId());
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(0);
                    }
                    i = size;
                } else {
                    i = 0;
                }
                if (a3 == null || i <= 0) {
                    bVar.b();
                    return;
                }
                if (cVar != null && !TextUtils.isEmpty(cVar.f3997a) && (a2 = k.a(bVar.e, cVar.f3997a, str, uuid, sb.toString())) != null) {
                    a2.appendQueryParameter(e.mc, String.valueOf(bVar.c()));
                    a2.appendQueryParameter(e.md, String.valueOf(i));
                    String str2 = "";
                    if (!TextUtils.isEmpty(bVar.f3929a.getCreatives())) {
                        str2 = bVar.f3929a.getCreatives();
                    }
                    a2.appendQueryParameter(e.me, str2);
                    com.mnt.impl.i.c.a(bVar.e).a(a2.toString());
                }
                bVar.a(true, null);
                bVar.c = a3;
                if (bVar.i == com.mnt.impl.c.a.f3956a.c) {
                    bVar.d = true;
                }
                bVar.f3930b.a(a3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
