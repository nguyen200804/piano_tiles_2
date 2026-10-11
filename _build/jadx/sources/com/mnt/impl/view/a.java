package com.mnt.impl.view;

import android.os.Handler;
import android.os.Message;
import android.support.v4.view.InputDeviceCompat;
import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.MntAdType;
import com.mnt.MntBuild;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements com.mnt.a.f {

    /* renamed from: a, reason: collision with root package name */
    Handler f4099a;

    /* renamed from: b, reason: collision with root package name */
    int f4100b;
    private boolean c = false;

    static {
        String str = com.mnt.impl.e.jP;
    }

    @Override // com.mnt.a.f
    public final void a(AdError adError) {
        Message obtainMessage = this.f4099a.obtainMessage();
        obtainMessage.arg1 = InputDeviceCompat.SOURCE_TOUCHSCREEN;
        obtainMessage.obj = adError;
        this.f4099a.sendMessage(obtainMessage);
    }

    @Override // com.mnt.a.f
    public final void a(List<Ad> list) {
        if (list != null) {
            Iterator<Ad> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Ad next = it.next();
                if (next instanceof Ad) {
                    Ad ad = next;
                    if (this.f4100b == 0) {
                        Message obtainMessage = this.f4099a.obtainMessage();
                        obtainMessage.arg1 = 4096;
                        obtainMessage.obj = ad;
                        this.f4099a.sendMessage(obtainMessage);
                        break;
                    }
                    if (this.f4100b == 1 && ad != null && ((com.mnt.impl.e.c) ad).getCreatives(Ad.AD_CREATIVE_SIZE_1200x627) != null) {
                        this.c = true;
                        Message obtainMessage2 = this.f4099a.obtainMessage();
                        obtainMessage2.arg1 = 4096;
                        obtainMessage2.obj = ad;
                        this.f4099a.sendMessage(obtainMessage2);
                        break;
                    }
                }
            }
            if (this.f4100b == 1 && !this.c) {
                Message obtainMessage3 = this.f4099a.obtainMessage();
                obtainMessage3.arg1 = InputDeviceCompat.SOURCE_TOUCHSCREEN;
                obtainMessage3.obj = AdError.NO_MATERIAL;
                this.f4099a.sendMessage(obtainMessage3);
            }
        }
    }

    @Override // com.mnt.a.f
    public final void a() {
    }

    @Override // com.mnt.a.f
    public final void b() {
    }

    public final void a(com.mnt.impl.b.b bVar, com.mnt.impl.b bVar2, MntBuild mntBuild) {
        bVar2.f3930b = this;
        MntBuild.Builder builder = new MntBuild.Builder(mntBuild.getContext(), mntBuild.mPlacementId, MntAdType.NATIVE.getType(), mntBuild.mAdListener);
        if (bVar == com.mnt.impl.b.b.RECTANGLE_BANNER) {
            builder.setCreatives(Ad.AD_CREATIVE_SIZE_1200x627);
        }
        builder.setAdsNum(1);
        bVar2.a(builder.build());
    }
}
