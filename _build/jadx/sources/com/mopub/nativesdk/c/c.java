package com.mopub.nativesdk.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mopub.mobileads.resource.DrawableConstants;
import java.lang.ref.WeakReference;

/* compiled from: AbsHttpLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference<l> f4622a;

    public c(l lVar) {
        super(Looper.getMainLooper());
        this.f4622a = null;
        this.f4622a = new WeakReference<>(lVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        l lVar = this.f4622a.get();
        if (lVar != null) {
            switch (message.what) {
                case DrawableConstants.BlurredLastVideoFrame.ALPHA /* 100 */:
                    int i = message.arg1;
                    lVar.a(message.obj);
                    break;
                case 101:
                    int i2 = message.arg1;
                    break;
                case 110:
                    int i3 = message.arg1;
                    lVar.a("Connect timeout.");
                    break;
                case 111:
                    if (message.obj != null) {
                        int i4 = message.arg1;
                        lVar.a(message.obj.toString());
                        break;
                    } else {
                        int i5 = message.arg1;
                        lVar.a("http connect error (unknow)");
                        break;
                    }
                case 112:
                    int i6 = message.arg1;
                    lVar.a("[" + message.arg2 + "] Http status code.");
                    break;
                case 113:
                    int i7 = message.arg1;
                    lVar.a("[" + message.arg2 + "]request api error ! " + message.obj.toString());
                    break;
                case 114:
                    int i8 = message.arg1;
                    lVar.b();
                    break;
            }
            super.handleMessage(message);
        }
    }
}
