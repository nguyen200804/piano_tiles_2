package com.cmcm.dmc.sdk.b;

import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import com.cmcm.dmc.sdk.a.i;
import com.cmcm.dmc.sdk.g.j;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.TimeZone;
import java.util.Timer;
import java.util.TimerTask;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Timer f692a;

    /* renamed from: b, reason: collision with root package name */
    private String f693b;
    private int c;

    /* renamed from: com.cmcm.dmc.sdk.b.a$a, reason: collision with other inner class name */
    private static final class C0008a {

        /* renamed from: a, reason: collision with root package name */
        private static final a f697a = new a();
    }

    private a() {
        this.f693b = "";
        this.c = 0;
        this.f692a = new Timer();
    }

    private static long a(long j) {
        return (TimeZone.getDefault().getOffset(j) + j) / 86400000;
    }

    public static a a() {
        return C0008a.f697a;
    }

    public static boolean a(long j, long j2) {
        long j3 = j - j2;
        return j3 < 86400000 && j3 > -86400000 && a(j) == a(j2);
    }

    private TimerTask c() {
        return new TimerTask() { // from class: com.cmcm.dmc.sdk.b.a.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    b.h();
                    try {
                        Thread.sleep(15000L);
                    } catch (InterruptedException e) {
                        i.a("CMDevice", "" + e.getMessage());
                    }
                    jSONObject.put(c.a("error_code"), "0");
                    jSONObject.put(c.a("sdk_uuid"), a.this.f693b);
                    jSONObject.put(c.a("uuid_state"), a.this.c);
                    jSONObject.put(c.a("time"), Long.toString(System.currentTimeMillis()));
                    jSONObject.put(c.a("base_info"), b.a());
                    jSONObject.put(c.a("os_info"), b.b());
                    jSONObject.put(c.a("app_info"), b.c());
                    jSONObject.put(c.a("sensor_info"), b.d());
                    jSONObject.put(c.a("phone_state"), b.e());
                    jSONObject.put(c.a("wifi_info"), b.f());
                    jSONObject.put(c.a("bluetooth"), b.g());
                    j.a().a(50, "finger_print", jSONObject.toString());
                    b.i();
                } catch (JSONException e2) {
                    i.a("CMDevice", "" + e2.getMessage());
                }
            }
        };
    }

    public void b() {
        final SharedPreferences sharedPreferences = com.cmcm.dmc.sdk.a.c.c().getSharedPreferences("sdk_device_id", 0);
        long j = sharedPreferences.getLong("report_last_time", 0L);
        sharedPreferences.edit().putLong("report_last_time", System.currentTimeMillis()).commit();
        this.f692a.schedule(c(), 10000L);
        if (!a(System.currentTimeMillis(), j)) {
            this.f692a.schedule(c(), 130000L);
            this.f692a.schedule(c(), 250000L);
        }
        this.f692a.schedule(c(), 7200000L, 7200000L);
        this.f693b = sharedPreferences.getString("sdk_uuid", "");
        this.f693b = "";
        if (TextUtils.isEmpty(this.f693b)) {
            new Thread(new Runnable() { // from class: com.cmcm.dmc.sdk.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        File file = new File(Environment.getExternalStorageDirectory().getPath().toString() + "/.dmc_sdk_uuid.uuid");
                        if (file.exists()) {
                            file.delete();
                        }
                        if (!file.exists()) {
                            synchronized (a.this.f693b) {
                                a.this.c = 2;
                                a.this.f693b = UUID.randomUUID().toString().toUpperCase();
                                file.createNewFile();
                                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                                bufferedWriter.write(a.this.f693b);
                                bufferedWriter.flush();
                                sharedPreferences.edit().putString("sdk_uuid", a.this.f693b).commit();
                            }
                            return;
                        }
                        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                        synchronized (a.this.f693b) {
                            a.this.f693b = bufferedReader.readLine();
                            if (TextUtils.isEmpty(a.this.f693b)) {
                                a.this.c = 1;
                                a.this.f693b = UUID.randomUUID().toString().toUpperCase();
                                file.createNewFile();
                                BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file));
                                bufferedWriter2.write(a.this.f693b);
                                bufferedWriter2.flush();
                                sharedPreferences.edit().putString("sdk_uuid", a.this.f693b).commit();
                            } else {
                                a.this.c = 0;
                            }
                        }
                    } catch (Exception e) {
                    }
                }
            }).start();
        } else {
            this.c = 0;
        }
    }
}
