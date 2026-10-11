package com.cmplay.notification;

import android.app.AlarmManager;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.tile2.ui.ReportService;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.h;
import com.cmplay.util.i;
import com.cmplay.util.t;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NewNotificationManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f1574a = null;

    private b() {
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f1574a == null) {
                f1574a = new b();
            }
            bVar = f1574a;
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Notification a(int i, String str, String str2, String str3, Bitmap bitmap) {
        int i2;
        int i3;
        int identifier;
        int i4 = 0;
        if (i < 0) {
            return null;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return null;
        }
        String str4 = "";
        try {
            JSONObject jSONObject = new JSONObject(str3);
            i3 = jSONObject.optInt("notification_cloud_text_id");
            try {
                i2 = jSONObject.optInt("notification_action");
                try {
                    i4 = jSONObject.optInt("notification_text_id", 0);
                    str4 = jSONObject.optString("notification_sound");
                } catch (JSONException e) {
                }
            } catch (JSONException e2) {
                i2 = 0;
            }
        } catch (JSONException e3) {
            i2 = 0;
            i3 = 0;
        }
        Context context = GameApp.f1598a;
        Intent intent = new Intent(context, (Class<?>) AppActivity.class);
        intent.putExtra("notify_action", i2);
        intent.putExtra("notification", true);
        intent.putExtra("notify_data", str3);
        intent.putExtra("notify_cloud_id", i3);
        intent.putExtra("notify_img_style", b(i, str3) ? 2 : 1);
        intent.putExtra("notify_text_id", i4);
        Intent intent2 = new Intent(context, (Class<?>) NotificationDeleteReceiver.class);
        intent2.putExtra(":notification_id", i);
        intent2.putExtra(":extra_data", a(str3));
        PendingIntent broadcast = PendingIntent.getBroadcast(context, intent2.hashCode(), intent2, 134217728);
        PendingIntent activity = PendingIntent.getActivity(context, ("notification_" + i + "_action").hashCode(), intent, 268435456);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        NotificationCompat.Builder contentTitle = builder.setContentTitle(str);
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        NotificationCompat.Builder deleteIntent = contentTitle.setContentText(str2).setAutoCancel(true).setContentIntent(activity).setDeleteIntent(broadcast);
        if (!TextUtils.isEmpty(str4) && (identifier = context.getResources().getIdentifier(str4, "raw", context.getPackageName())) > 0) {
            deleteIntent.setSound(Uri.parse("android.resource://" + context.getPackageName() + "/" + identifier));
        }
        if (h.b()) {
            deleteIntent.setSmallIcon(R.drawable.notification_icon).setColor(-13939358);
        } else {
            deleteIntent.setSmallIcon(R.drawable.app_logo);
        }
        if (bitmap != null) {
            deleteIntent.setLargeIcon(bitmap);
        }
        return deleteIntent.build();
    }

    private boolean b(int i, String str) {
        boolean z;
        if (TextUtils.isEmpty(str)) {
            z = true;
        } else {
            try {
                z = new JSONObject(str).optBoolean("enable_notification_big_picture", true);
            } catch (JSONException e) {
                z = true;
            }
        }
        if (i == 2000 && z) {
            String d = t.d(GameApp.f1598a);
            if ((TextUtils.equals(d, "234") || TextUtils.equals(d, "255")) && i.c() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(final int r10, final java.lang.String r11, final java.lang.String r12, final java.lang.String r13) {
        /*
            r9 = this;
            r5 = 0
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: org.json.JSONException -> L22
            r6.<init>(r13)     // Catch: org.json.JSONException -> L22
            java.lang.String r0 = "notification_icon"
            java.lang.String r0 = r6.optString(r0)     // Catch: org.json.JSONException -> L5e
            r7 = r0
        Ld:
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 == 0) goto L26
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r13
            android.app.Notification r0 = r0.a(r1, r2, r3, r4, r5)
            if (r0 == 0) goto L21
            r9.a(r10, r0, r6)
        L21:
            return
        L22:
            r0 = move-exception
            r6 = r5
        L24:
            r7 = r5
            goto Ld
        L26:
            java.lang.String r0 = "mys"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "notification "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.String r2 = " icon url = "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r7)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            com.c.a r0 = com.c.a.a()
            com.android.volley.toolbox.h r8 = r0.b()
            com.cmplay.notification.b$1 r0 = new com.cmplay.notification.b$1
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r0.<init>()
            r8.a(r7, r0)
            goto L21
        L5e:
            r0 = move-exception
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.notification.b.a(int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, Notification notification, JSONObject jSONObject) {
        if (notification != null) {
            Context context = GameApp.f1598a;
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.notify(i, notification);
                if (a(context)) {
                    String str = null;
                    try {
                        jSONObject.put("notify_cloud_id", jSONObject.optInt("notification_cloud_text_id"));
                        jSONObject.put("notify_text_id", jSONObject.optInt("notification_text_id"));
                        jSONObject.put("notify_img_style", b(i, jSONObject.toString()) ? 2 : 1);
                        str = jSONObject.toString();
                    } catch (JSONException e) {
                    }
                    NativeUtil.onNotificationShow(i, str);
                } else {
                    Log.d("mys", "notification " + i + " is forbidden to show by system");
                }
            }
            if (Build.VERSION.SDK_INT >= 19) {
                Log.d("mys", "Notification " + i + " set next schedule");
                NativeUtil.scheduleNotification(i);
            }
        }
    }

    public void a(int i, String str, String str2, String str3, String str4, int i2) {
        Log.d("mys", "android scheduleNotification " + i + " at " + str4 + ", interval = " + i2);
        try {
            Date parse = new SimpleDateFormat("yyyy-MM-dd/HH:mm:ss").parse(str4);
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                long time = parse.getTime();
                AlarmManager alarmManager = (AlarmManager) GameApp.f1598a.getSystemService("alarm");
                if (alarmManager != null) {
                    b(i);
                    PendingIntent b2 = b(i, str, str2, str3);
                    try {
                        if (Build.VERSION.SDK_INT >= 23) {
                            alarmManager.setExactAndAllowWhileIdle(0, time, b2);
                        } else if (Build.VERSION.SDK_INT >= 19) {
                            alarmManager.setExact(0, time, b2);
                        } else {
                            alarmManager.setRepeating(0, time, i2, b2);
                        }
                        Log.d("mys", "android set notification " + i + " schedule");
                    } catch (Exception e) {
                        Log.d("mys", "scheduleNotification exception: " + e.toString());
                    }
                }
            }
        } catch (ParseException e2) {
        }
    }

    public void a(int i, String str) {
        try {
            Date parse = new SimpleDateFormat("yyyy-MM-dd/HH:mm:ss").parse(str);
            Context context = GameApp.f1598a;
            AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
            if (alarmManager != null) {
                Intent intent = new Intent(context, (Class<?>) ReportService.class);
                intent.putExtra("command_start_report", "command_clear_notification");
                intent.putExtra("notification_id", i);
                PendingIntent service = PendingIntent.getService(context, (i + "_clear").hashCode(), intent, 134217728);
                Log.d("mys", "set clear schedule of notification " + i + " at " + parse.toString());
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        alarmManager.setExactAndAllowWhileIdle(0, parse.getTime(), service);
                    } else if (Build.VERSION.SDK_INT >= 19) {
                        alarmManager.setExact(0, parse.getTime(), service);
                    } else {
                        alarmManager.set(0, parse.getTime(), service);
                    }
                } catch (Exception e) {
                }
            }
        } catch (ParseException e2) {
        }
    }

    public void a(int i) {
        NotificationManager notificationManager = (NotificationManager) GameApp.f1598a.getSystemService("notification");
        if (notificationManager != null) {
            notificationManager.cancel(i);
        }
    }

    public void b(int i) {
        Log.d("mys", "cancelNotificationSchedule " + i);
        AlarmManager alarmManager = (AlarmManager) GameApp.f1598a.getSystemService("alarm");
        if (alarmManager != null) {
            alarmManager.cancel(b(i, "", "", ""));
        }
    }

    private PendingIntent b(int i, String str, String str2, String str3) {
        Context context = GameApp.f1598a;
        Intent intent = new Intent(context, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_show_notification");
        intent.putExtra("notification_id", i);
        intent.putExtra("notification_title", str);
        intent.putExtra("notification_content", str2);
        intent.putExtra("notification_extra_data", str3);
        return PendingIntent.getService(context, ("notification_" + i).hashCode(), intent, 134217728);
    }

    public void a(Intent intent) {
        String stringExtra = intent.getStringExtra("command_start_report");
        final int intExtra = intent.getIntExtra("notification_id", -1);
        Log.d("mys", "NewNotificationManager handleIntent " + stringExtra);
        if (TextUtils.equals(stringExtra, "command_schedule_notification")) {
            if (intExtra > 0) {
                com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.notification.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            NativeUtil.scheduleNotification(intExtra);
                        } catch (Exception e) {
                        }
                    }
                });
            }
        } else {
            if (TextUtils.equals(stringExtra, "command_schedule_all_notifications")) {
                com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.notification.b.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            NativeUtil.scheduleNotifications();
                        } catch (Exception e) {
                        }
                    }
                });
                return;
            }
            if (TextUtils.equals(stringExtra, "command_clear_notification")) {
                if (intExtra > 0) {
                    a(intExtra);
                }
            } else if (TextUtils.equals(stringExtra, "command_show_notification") && intExtra > 0) {
                Log.d("mys", "android show notification " + intExtra);
                NativeUtil.showNotificationNative(intExtra, intent.getStringExtra("notification_title"), intent.getStringExtra("notification_content"), intent.getStringExtra("notification_extra_data"));
            }
        }
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            return ((Integer) cls.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i), packageName)).intValue() == 0;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (IllegalAccessException e2) {
            return true;
        } catch (NoSuchFieldException e3) {
            return true;
        } catch (NoSuchMethodException e4) {
            return true;
        } catch (RuntimeException e5) {
            return true;
        } catch (InvocationTargetException e6) {
            return true;
        }
    }

    public String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject(str);
            jSONObject.put("notify_cloud_id", jSONObject2.optInt("notification_cloud_text_id"));
            jSONObject.put("notify_text_id", jSONObject2.optInt("notification_text_id"));
            jSONObject.put("notify_img_style", jSONObject2.optBoolean("enable_notification_big_picture") ? 2 : 1);
        } catch (Exception e) {
        }
        return jSONObject.toString();
    }
}
