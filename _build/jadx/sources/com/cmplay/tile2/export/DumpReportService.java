package com.cmplay.tile2.export;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.util.NativeUtil;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DumpReportService extends Service {
    private void a(final Intent intent) {
        new Thread(new Runnable() { // from class: com.cmplay.tile2.export.DumpReportService.1
            @Override // java.lang.Runnable
            public void run() {
                DumpReportService.this.b(intent);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Intent intent) {
        Log.d("DumpReportService", "report start");
        File a2 = a();
        File a3 = a(a2);
        if (a3 != null) {
            a(intent, a3);
            a3.delete();
        } else {
            Log.d("DumpReportService", "zip file failed");
        }
        if (a2 != null) {
            a2.delete();
        }
        c(intent);
        Log.d("DumpReportService", "report finished stopping self");
        stopSelf();
    }

    private File a() {
        return NativeUtil.getLogcat(this);
    }

    private boolean a(String str) {
        return str.endsWith(".txt") || str.endsWith(".bak");
    }

    private void a(String str, ArrayList<String> arrayList) {
        File file = new File(str, "files");
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            for (File file2 : listFiles) {
                if (file2.isFile() && a(file2.getName())) {
                    arrayList.add(file2.getAbsolutePath());
                }
            }
        }
    }

    private File a(File file) {
        String a2 = com.cmplay.i.b.a(this);
        String str = a2 + "/1234556.log.zip";
        String absolutePath = getFilesDir().getParentFile().getAbsolutePath();
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(a2 + File.separator + "ccrash");
        if (file != null) {
            arrayList.add(file.getAbsolutePath());
        }
        arrayList.add(absolutePath + "/shared_prefs");
        arrayList.add(absolutePath + "/app_deep_cloud_config");
        a(absolutePath, arrayList);
        File file2 = new File("/data/anr");
        if (file2.exists()) {
            arrayList.add(file2.getAbsolutePath());
        }
        if (new a().a(arrayList, str)) {
            File file3 = new File(str);
            if (file3.exists()) {
                Log.d("DumpReportService", "compress files success");
                return file3;
            }
        } else {
            Log.d("DumpReportService", "compress files failed");
        }
        return null;
    }

    private void a(Intent intent, File file) {
        HashMap hashMap = new HashMap();
        hashMap.put("app_id", "21");
        hashMap.put("chanel", "0");
        hashMap.put(VastExtensionXmlManager.TYPE, "feedback");
        hashMap.put("model", Build.MODEL);
        hashMap.put("sysversion", "android_" + String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("uuid", NativeUtil.getAndroidId());
        hashMap.put(MediationMetaData.KEY_VERSION, NativeUtil.getVersionCode());
        hashMap.put("syslang", NativeUtil.getLanguageCode());
        hashMap.put(AppLovinEventTypes.USER_VIEWED_CONTENT, intent.getStringExtra(AppLovinEventTypes.USER_VIEWED_CONTENT));
        hashMap.put("havelog", "yes");
        hashMap.put("auto_category", "307");
        b bVar = new b();
        bVar.a(file);
        bVar.a("log");
        Log.d("DumpReportService", "post server res: " + c.a("http://fk.cm.ksmobile.com/report", hashMap, new b[]{bVar}));
    }

    private void c(Intent intent) {
        String stringExtra = intent.getStringExtra("finish_pkg");
        String stringExtra2 = intent.getStringExtra("finish_cls");
        String stringExtra3 = intent.getStringExtra("finish_act");
        Intent intent2 = new Intent();
        intent2.setClassName(stringExtra, stringExtra2);
        intent2.setAction(stringExtra3);
        sendBroadcast(intent2);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d("DumpReportService", "DumpInfoReceiver recived action");
        if (intent != null) {
            String action = intent.getAction();
            if (action != null && !"com.cmplay.tile2.export.dumpinfo".equals(action)) {
                Log.d("DumpReportService", "receive invalid action " + action);
            } else {
                a(intent);
            }
        }
        return super.onStartCommand(intent, flags, startId);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
