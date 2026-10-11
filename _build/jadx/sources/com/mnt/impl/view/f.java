package com.mnt.impl.view;

import android.os.Handler;
import android.os.Message;
import android.support.v4.view.InputDeviceCompat;
import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.IAdListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ RectangleBannerView f4106a;

    f(RectangleBannerView rectangleBannerView) {
        this.f4106a = rectangleBannerView;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        IAdListener iAdListener;
        IAdListener iAdListener2;
        Ad ad;
        switch (message.arg1) {
            case 4096:
                this.f4106a.d = (Ad) message.obj;
                RectangleBannerView rectangleBannerView = this.f4106a;
                ad = this.f4106a.d;
                RectangleBannerView.b(rectangleBannerView, ad);
                break;
            case InputDeviceCompat.SOURCE_TOUCHSCREEN /* 4098 */:
                AdError adError = (AdError) message.obj;
                iAdListener = this.f4106a.c;
                if (iAdListener != null) {
                    iAdListener2 = this.f4106a.c;
                    iAdListener2.onAdError(adError);
                    break;
                }
                break;
        }
        super.handleMessage(message);
    }
}
