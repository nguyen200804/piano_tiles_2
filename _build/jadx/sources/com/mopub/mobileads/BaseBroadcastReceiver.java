package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private final long f4356a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private Context f4357b;

    @NonNull
    public abstract IntentFilter getIntentFilter();

    public BaseBroadcastReceiver(long broadcastIdentifier) {
        this.f4356a = broadcastIdentifier;
    }

    public static void broadcastAction(@NonNull Context context, long broadcastIdentifier, @NonNull String action) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Preconditions.checkNotNull(action, "action cannot be null");
        Intent intent = new Intent(action);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, broadcastIdentifier);
        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(intent);
    }

    public void register(@NonNull BroadcastReceiver broadcastReceiver, Context context) {
        this.f4357b = context;
        LocalBroadcastManager.getInstance(this.f4357b).registerReceiver(broadcastReceiver, getIntentFilter());
    }

    public void unregister(@Nullable BroadcastReceiver broadcastReceiver) {
        if (this.f4357b != null && broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(this.f4357b).unregisterReceiver(broadcastReceiver);
            this.f4357b = null;
        }
    }

    public boolean shouldConsumeBroadcast(@NonNull Intent intent) {
        Preconditions.checkNotNull(intent, "intent cannot be null");
        return this.f4356a == intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }
}
