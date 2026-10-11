package com.cmplay.crashreport;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CrashReportService extends IntentService {
    public CrashReportService() {
        super("CrashReportService");
    }

    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, CrashReportService.class);
        intent.setAction("com.cmplay.crash.upload_dump");
        context.startService(intent);
    }

    public static void a(Context context, String str) {
        Intent intent = new Intent();
        intent.setClass(context, CrashReportService.class);
        intent.setAction("com.cmplay.crash_report");
        intent.putExtra("extra_url", str);
        context.startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x001c. Please report as an issue. */
    public void a(String str) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(30000);
            if (httpURLConnection != null && httpURLConnection != null) {
                switch (httpURLConnection.getResponseCode()) {
                }
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (Exception e2) {
            httpURLConnection2 = httpURLConnection;
            e = e2;
            e.printStackTrace();
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
        } catch (Throwable th2) {
            httpURLConnection2 = httpURLConnection;
            th = th2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (!"com.cmplay.crash_report".equals(intent.getAction())) {
            if (TextUtils.equals("com.cmplay.crash.upload_dump", intent.getAction())) {
                k.a().a(getApplicationContext());
            }
        } else {
            String stringExtra = intent.getStringExtra("extra_url");
            if (TextUtils.isEmpty(stringExtra)) {
                return;
            }
            new Thread(new i(this, stringExtra)).start();
        }
    }
}
