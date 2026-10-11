package com.cmplay.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.cmplay.b.b;
import com.cmplay.d.a;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InstallMonitorReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static int f1585a = 0;

    /* renamed from: b, reason: collision with root package name */
    private Handler f1586b = new Handler(Looper.getMainLooper()) { // from class: com.cmplay.receiver.InstallMonitorReceiver.2
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            AppActivity appActivity;
            if (msg.what == InstallMonitorReceiver.f1585a && !a.a().d() && (appActivity = (AppActivity) AppActivity.c()) != null && appActivity.f1609a) {
                if (a.a().b() || a.a().c()) {
                    b.a().e();
                }
            }
        }
    };

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data;
        if (intent != null && (data = intent.getData()) != null) {
            final String schemeSpecificPart = data.getSchemeSpecificPart();
            if (!TextUtils.isEmpty(schemeSpecificPart)) {
                d.a(new d.a() { // from class: com.cmplay.receiver.InstallMonitorReceiver.1
                    @Override // com.cmplay.util.d.a
                    public void a() {
                        NativeUtil.appInstallNotify(schemeSpecificPart);
                    }
                });
                if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
                    Message obtainMessage = this.f1586b.obtainMessage(f1585a);
                    obtainMessage.obj = schemeSpecificPart;
                    this.f1586b.sendMessage(obtainMessage);
                }
            }
        }
    }
}
