package com.mopub.nativesdk.core;

import android.os.Handler;
import android.os.Message;

/* compiled from: AKService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class l extends Handler {
    l() {
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 10:
                C0219a.e();
                break;
        }
        super.handleMessage(message);
    }
}
