package com.cmplay.tile2.ui;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.exitpopup.GameExitPopupActivity;
import com.cmplay.h.f;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.c;
import com.cmplay.util.c.b;
import com.cmplay.util.e;
import com.cmplay.util.i;
import com.cmplay.util.t;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.cocos2dx.lib.Cocos2dxHelper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ReportService extends Service {

    /* renamed from: a, reason: collision with root package name */
    private static final long f1641a = TimeUnit.HOURS.toMillis(6);

    /* renamed from: b, reason: collision with root package name */
    private static long f1642b = 0;
    private BroadcastReceiver c;
    private BroadcastReceiver d;
    private Handler e = new Handler();
    private Runnable f = new Runnable() { // from class: com.cmplay.tile2.ui.ReportService.1
        @Override // java.lang.Runnable
        public void run() {
            com.cmplay.cloud.a.a().a(ReportService.this.getApplicationContext(), false);
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        b.a().b(System.currentTimeMillis());
        GameApp.e();
        Cocos2dxHelper.initByService(this);
        c.a("ReportService", "onCreate");
        i();
        String b2 = aa.b("key_language_selected", "");
        String b3 = aa.b("key_country_selected", "");
        if (!TextUtils.isEmpty(b2)) {
            e.a(GameApp.f1598a, b2, b3);
        }
        b();
        c();
        Log.d("cfg", "Service process set a cloud config updating task");
        this.e.postDelayed(this.f, 10000L);
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.tile2.ui.ReportService.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NativeUtil.scheduleNotifications();
                } catch (Exception e) {
                }
            }
        });
    }

    private void b() {
        this.c = new BroadcastReceiver() { // from class: com.cmplay.tile2.ui.ReportService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent != null && "android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    int intExtra = intent.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, 0);
                    int intExtra2 = intent.getIntExtra("scale", 100);
                    int intExtra3 = intent.getIntExtra("voltage", 0);
                    int i = (intExtra * 100) / intExtra2;
                    if (b.a().e() != intExtra3) {
                        b.a().c(intExtra3);
                    }
                    if (i != b.a().c()) {
                        b.a().a(i);
                    }
                    Log.v("whitetile2_eat_srv", " mBatteryChangedReceiver voltage " + intExtra3);
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        registerReceiver(this.c, intentFilter);
    }

    private void c() {
        this.d = new BroadcastReceiver() { // from class: com.cmplay.tile2.ui.ReportService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.ACTION_POWER_CONNECTED".equals(intent.getAction())) {
                    b a2 = b.a();
                    a2.b(a2.d() + 1);
                    Log.v("whitetile2_eat_srv", " mScreenObserver ACTION_POWER_CONNECTED!!! ");
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
        intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        registerReceiver(this.d, intentFilter);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        try {
            if (intent != null) {
                String stringExtra = intent.getStringExtra("command_start_report");
                if (TextUtils.equals(stringExtra, "start_report")) {
                    c.a("ReportService", "onStartCommand");
                    long currentTimeMillis = System.currentTimeMillis();
                    c.a("ReportService", "current time is " + currentTimeMillis + " duration is " + String.valueOf(currentTimeMillis - f1642b));
                    if (currentTimeMillis - f1642b >= 5000) {
                        d();
                    }
                    j();
                    a();
                    if (Build.VERSION.SDK_INT >= 19) {
                        i();
                    }
                } else if (TextUtils.equals(stringExtra, "command_start_gameproblem_exit")) {
                    a.a(getApplicationContext(), 2, intent.getStringExtra("command_start_gameproblem_adname"));
                } else if (TextUtils.equals(stringExtra, "command_start_gameproblem_home")) {
                    a.a(getApplicationContext(), 3, intent.getStringExtra("command_start_gameproblem_adname"));
                } else if (TextUtils.equals(stringExtra, "command_start_gameproblem_disproble")) {
                    String stringExtra2 = intent.getStringExtra("command_start_gameproblem_errorcode");
                    int intExtra = intent.getIntExtra("command_start_gameproblem_errortype", 0);
                    String stringExtra3 = intent.getStringExtra("command_start_gameproblem_adtype");
                    int intExtra2 = intent.getIntExtra("command_start_gameproblem_abname", -1);
                    if (!TextUtils.isEmpty(stringExtra2) && !TextUtils.isEmpty(stringExtra3) && intExtra2 != -1) {
                        com.cmplay.g.e.a(stringExtra2, 0, intExtra, stringExtra3, intExtra2);
                    }
                } else if (TextUtils.equals(stringExtra, "command_start_report_dmc_fb_info")) {
                    HashMap hashMap = new HashMap();
                    hashMap.put(FacebookAdapter.KEY_ID, intent.getStringExtra(FacebookAdapter.KEY_ID));
                    hashMap.put(MediationMetaData.KEY_NAME, intent.getStringExtra(MediationMetaData.KEY_NAME));
                    hashMap.put("gender", intent.getStringExtra("gender"));
                    int intExtra3 = intent.getIntExtra("age_min", -1);
                    if (-1 != intExtra3) {
                        hashMap.put("age_min", Integer.valueOf(intExtra3));
                    }
                    int intExtra4 = intent.getIntExtra("age_max", -1);
                    if (-1 != intExtra4) {
                        hashMap.put("age_max", Integer.valueOf(intExtra4));
                    }
                    com.cmcm.dmc.sdk.c.a().a("user_basic_info", hashMap);
                } else if (TextUtils.equals(stringExtra, "command_start_set_lan")) {
                    String stringExtra4 = intent.getStringExtra("languageCode");
                    String stringExtra5 = intent.getStringExtra("countryCode");
                    e.a(GameApp.f1598a, stringExtra4, stringExtra5);
                    aa.a("key_language_selected", stringExtra4);
                    aa.a("key_country_selected", stringExtra5);
                } else if (TextUtils.equals(stringExtra, "command_start_show_get_week_race_diamond")) {
                    String b2 = aa.b("key_week_race_id_just_end", "");
                    if (!i.c(b2)) {
                        com.cmplay.notification.c.a(b2);
                        f.b().b(605, 1, 0, 0);
                    }
                } else if (TextUtils.equals(stringExtra, "command_schedule_notification") || TextUtils.equals(stringExtra, "command_schedule_all_notifications") || TextUtils.equals(stringExtra, "command_show_notification") || TextUtils.equals(stringExtra, "command_clear_notification")) {
                    com.cmplay.notification.b.a().a(intent);
                } else if (TextUtils.equals(stringExtra, "command_notify_leveing_data_changed")) {
                    NativeUtil.onLevelingDataChanged();
                } else if (TextUtils.equals(stringExtra, "command_game_exit_popup")) {
                    GameExitPopupActivity.a(this, intent.getStringExtra("game_exit_data"), intent.getIntExtra("game_exit_songs_num", 0), intent.getStringArrayExtra("game_exit_playedsongs_text"));
                } else if (TextUtils.equals(stringExtra, "command_notify_cd_fragment_data_changed")) {
                    NativeUtil.onCdFragmentDataChanged();
                } else if (TextUtils.equals(stringExtra, "command_remove_pending_cloud_cfg_update_task")) {
                    Log.d("cfg", "remove pending cloud cfg update task");
                    this.e.removeCallbacks(this.f);
                } else if (TextUtils.equals(stringExtra, "command_notify_public")) {
                    c.c("ymym", "ymym  resetPublicData 11111");
                    NativeUtil.resetPublicData();
                    c.c("ymym", "ymym  resetPublicData 222222");
                } else if (TextUtils.equals(stringExtra, "command_notify_cloud_data_changed")) {
                    NativeUtil.onCloudDataChanged();
                }
                if (intent.getBooleanExtra("command_preload_image", false)) {
                    com.cmplay.webview.d.c.a().b();
                }
                if (intent.getBooleanExtra("report_channel", false) && com.cmplay.i.a.a() && !com.cmplay.i.a.b()) {
                    new com.cmplay.g.f().a(com.cmplay.i.a.a(this), 1);
                    com.cmplay.i.a.a(false);
                    com.cmplay.i.a.b(true);
                }
            } else {
                c.a("ReportService", "onStartCommand receive intent is null");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return super.onStartCommand(intent, flags, startId);
    }

    private void d() {
        try {
            b a2 = b.a();
            if (System.currentTimeMillis() - a2.b() >= f1641a) {
                a2.a(System.currentTimeMillis());
                com.cmplay.util.c.c cVar = new com.cmplay.util.c.c();
                cVar.a((byte) t.a(this));
                cVar.b(h());
                cVar.b(g());
                cVar.a((int) (System.currentTimeMillis() / 1000));
                cVar.a(f());
                cVar.b(NativeUtil.getInstallTime());
                cVar.c((byte) 0);
                cVar.c(e());
                cVar.a((short) 0);
                cVar.d(com.cmplay.i.a.b(getApplicationContext()));
                String b2 = cVar.b();
                NativeUtil.reportData(cVar.a(), b2, true);
                c.a("ReportService", "KinfocTest doReport tableName:" + cVar.a() + " data:" + b2);
            }
        } catch (Exception e) {
            Log.e("ReportService", "doReport exception:" + e.toString());
        }
    }

    private String e() {
        String str;
        NumberFormatException numberFormatException;
        IOException e;
        long j;
        BufferedReader bufferedReader;
        String readLine;
        String str2 = "";
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            try {
                readLine = bufferedReader.readLine();
                try {
                    for (String str3 : readLine.split("\\s+")) {
                        Log.i(readLine, str3 + "\t");
                    }
                    j = Integer.valueOf(r1[1]).intValue() * 1024;
                } catch (Throwable th) {
                    th = th;
                    str2 = readLine;
                    bufferedReader.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            j = 0;
        } catch (NumberFormatException e3) {
            str = str2;
            numberFormatException = e3;
        }
        try {
            bufferedReader.close();
        } catch (IOException e4) {
            e = e4;
            e.printStackTrace();
            return Formatter.formatFileSize(getBaseContext(), j);
        } catch (NumberFormatException e5) {
            numberFormatException = e5;
            str = readLine;
            numberFormatException.printStackTrace();
            return str;
        }
        return Formatter.formatFileSize(getBaseContext(), j);
    }

    private String f() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
    }

    private String g() {
        return aa.b("key_screen_display_size", (String) null);
    }

    private byte h() {
        boolean b2 = aa.b("key_first_play", true);
        byte b3 = (byte) (b2 ? 1 : 2);
        if (b2) {
            aa.a("key_first_play", false);
        }
        return b3;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    private void i() {
        f1642b = System.currentTimeMillis();
        Log.d("CF", "ALARM_SERVICE_START_TIME = " + f1642b);
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        Intent intent = new Intent(getApplicationContext(), (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "start_report");
        PendingIntent service = PendingIntent.getService(getApplicationContext(), 1001, intent, 134217728);
        alarmManager.cancel(service);
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                alarmManager.setExactAndAllowWhileIdle(0, System.currentTimeMillis() + 10000, service);
            } else if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, System.currentTimeMillis() + 10000, service);
            } else {
                alarmManager.setRepeating(0, System.currentTimeMillis() + 10000, 21600000L, service);
            }
        } catch (Throwable th) {
        }
    }

    public void a() {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.tile2.ui.ReportService.5
            @Override // java.lang.Runnable
            public void run() {
                int b2 = aa.b("key_ad_video_show", 0);
                int b3 = aa.b("key_ad_interstitial_show", 0);
                c.b("ReportService", "video = " + b2 + "interstitial = " + b3);
                if (b2 > 0) {
                    com.cmplay.ad.g.a.a(1, b2, true);
                }
                if (b3 > 0) {
                    com.cmplay.ad.g.a.a(2, b3, true);
                }
            }
        });
    }

    private void j() {
        long b2 = aa.b("last_report_cloud_config_ver_time", -1L);
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - b2 >= f1641a) {
            com.ijinshan.cloudconfig.c.a.a(getApplicationContext());
            new com.cmplay.util.c.a.c().a((byte) 6, com.ijinshan.cloudconfig.b.a.a().b("local_version", "none"));
            aa.a("last_report_cloud_config_ver_time", currentTimeMillis);
        }
    }

    public static void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_remove_pending_cloud_cfg_update_task");
        context.startService(intent);
    }
}
