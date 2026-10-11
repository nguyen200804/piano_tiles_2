package com.mnt.impl.view;

import android.os.Handler;
import android.os.Message;
import android.support.v4.view.InputDeviceCompat;
import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.IAdListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ BannerView f4101a;

    b(BannerView bannerView) {
        this.f4101a = bannerView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        IAdListener iAdListener;
        IAdListener iAdListener2;
        Ad ad;
        switch (message.arg1) {
            case 4096:
                this.f4101a.f = (Ad) message.obj;
                BannerView bannerView = this.f4101a;
                ad = this.f4101a.f;
                BannerView.b(bannerView, ad);
                break;
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                AdError adError = (AdError) message.obj;
                iAdListener = this.f4101a.f4095b;
                if (iAdListener != null) {
                    iAdListener2 = this.f4101a.f4095b;
                    iAdListener2.onAdError(adError);
                    break;
                }
                break;
        }
        super.handleMessage(message);
    }
}
