package com.cmplay.internalpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CloudUpdateReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getAction().equals("com.cmplay.activesdk.cloud_cfg.update")) {
            f.c(context);
            if (com.cmplay.base.util.q.a()) {
                com.cmplay.base.util.g.a("zzb_cloud", "CloudUpdateReceiver 进程：" + com.cmplay.base.util.q.b(context) + ",通知到了，" + com.cmplay.base.util.q.a());
            } else if (com.cmplay.base.util.q.b()) {
                com.cmplay.base.util.g.a("zzb_cloud", "CloudUpdateReceiver UI进程通知到了，去加载数据");
                com.cmplay.internalpush.a.a.b.a().b();
            }
        }
    }
}
