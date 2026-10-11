package com.cmplay.kinfoc.report.service;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.cmplay.kinfoc.report.d;
import com.cmplay.kinfoc.report.service.NetWorkChangeReceiver;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class KinfocReportSerivce extends Service {

    /* renamed from: a, reason: collision with root package name */
    private NetWorkChangeReceiver.a f1567a = new NetWorkChangeReceiver.a() { // from class: com.cmplay.kinfoc.report.service.KinfocReportSerivce.1
        @Override // com.cmplay.kinfoc.report.service.NetWorkChangeReceiver.a
        public void a(int i) {
            if (i == 3) {
                d.a().b();
            }
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        NetWorkChangeReceiver.a(this.f1567a);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null) {
            a(intent);
            return 1;
        }
        return 1;
    }

    private void a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            int i = extras.getInt("extra_type");
            switch (i) {
                case 1:
                    try {
                        d.a().a(true);
                        break;
                    } catch (Throwable th) {
                        break;
                    }
                case 2:
                    try {
                        d.a().a(false);
                        break;
                    } catch (Throwable th2) {
                        break;
                    }
            }
            Log.e("ymymym", "ReportSerivce handleIntent " + i);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        NetWorkChangeReceiver.b(this.f1567a);
        super.onDestroy();
    }
}
