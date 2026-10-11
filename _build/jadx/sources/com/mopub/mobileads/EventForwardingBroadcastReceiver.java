package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.CustomEventInterstitial;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: b, reason: collision with root package name */
    private static IntentFilter f4368b;

    /* renamed from: a, reason: collision with root package name */
    private final CustomEventInterstitial.CustomEventInterstitialListener f4369a;

    public EventForwardingBroadcastReceiver(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, long broadcastIdentifier) {
        super(broadcastIdentifier);
        this.f4369a = customEventInterstitialListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    @NonNull
    public IntentFilter getIntentFilter() {
        if (f4368b == null) {
            f4368b = new IntentFilter();
            f4368b.addAction(IntentActions.ACTION_INTERSTITIAL_FAIL);
            f4368b.addAction(IntentActions.ACTION_INTERSTITIAL_SHOW);
            f4368b.addAction(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            f4368b.addAction(IntentActions.ACTION_INTERSTITIAL_CLICK);
        }
        return f4368b;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f4369a != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_INTERSTITIAL_FAIL.equals(action)) {
                this.f4369a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
                return;
            }
            if (IntentActions.ACTION_INTERSTITIAL_SHOW.equals(action)) {
                this.f4369a.onInterstitialShown();
                return;
            }
            if (IntentActions.ACTION_INTERSTITIAL_DISMISS.equals(action)) {
                this.f4369a.onInterstitialDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_INTERSTITIAL_CLICK.equals(action)) {
                this.f4369a.onInterstitialClicked();
            }
        }
    }
}
