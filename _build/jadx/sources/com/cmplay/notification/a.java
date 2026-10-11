package com.cmplay.notification;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.tiles4.R;
import java.util.Calendar;

/* compiled from: EnergyNotifyUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static String f1572a = "com.cmplay.notification.EnergyReceiver";

    /* renamed from: b, reason: collision with root package name */
    public static String f1573b = "energy_notify_title";
    public static String c = "energy_notify_des";

    public static void a(Context context, String str) {
        Log.d("cheng", "setEnergyNotify.." + str);
        if (!TextUtils.isEmpty(str)) {
            b(context, "", str);
        }
    }

    public static void a(Context context, String str, String str2) {
        PendingIntent activity = PendingIntent.getActivity(context, "energy_notification".hashCode(), new Intent(context, (Class<?>) AppActivity.class), 268435456);
        NotificationCompat.Builder color = new NotificationCompat.Builder(context).setSmallIcon(R.drawable.notification_icon).setColor(-13939358);
        if (TextUtils.isEmpty(str)) {
            str = context.getString(2131034150);
        }
        NotificationCompat.Builder contentTitle = color.setContentTitle(str);
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        Notification build = contentTitle.setContentText(str2).build();
        build.flags |= 16;
        build.contentIntent = activity;
        ((NotificationManager) context.getSystemService("notification")).notify(10001, build);
    }

    private static void b(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) EnergyReceiver.class);
        intent.setPackage(context.getPackageName());
        intent.setAction(f1572a);
        intent.putExtra(c, str2);
        intent.putExtra(f1573b, str);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 134217728);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        calendar.add(12, 30);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        alarmManager.cancel(broadcast);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(0, calendar.getTimeInMillis(), broadcast);
        } else if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, calendar.getTimeInMillis(), broadcast);
        } else {
            alarmManager.set(0, calendar.getTimeInMillis(), broadcast);
        }
    }
}
