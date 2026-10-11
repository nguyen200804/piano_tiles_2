package com.cmcm.orion.utils.internal;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PicksTransparentActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private a f1074a = null;

    public static void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) PicksTransparentActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this.f1074a != null) {
            return;
        }
        this.f1074a = new a(this, (byte) 0);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        registerReceiver(this.f1074a, intentFilter);
    }

    class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(PicksTransparentActivity picksTransparentActivity, byte b2) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                try {
                    PicksTransparentActivity.a(PicksTransparentActivity.this, context);
                    PicksTransparentActivity.this.finish();
                } catch (Exception e) {
                }
            }
        }
    }

    static /* synthetic */ void a(PicksTransparentActivity picksTransparentActivity, Context context) {
        if (picksTransparentActivity.f1074a == null) {
            return;
        }
        context.unregisterReceiver(picksTransparentActivity.f1074a);
        picksTransparentActivity.f1074a = null;
    }
}
