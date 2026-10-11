package com.cmplay.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.RingtoneManager;
import android.support.v4.app.NotificationCompat;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.util.Log;
import com.android.volley.s;
import com.android.volley.toolbox.h;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.c.a.d;
import com.unity3d.ads.metadata.MediationMetaData;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NotificationUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1580a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f1581b;
    public static final int c;
    public static final int d;
    private static int e;

    public static void a(final Context context) {
        boolean z = false;
        if (context != null) {
            b(context);
            String b2 = com.cmplay.cloud.a.a().b(2, "section_notification");
            if (!TextUtils.isEmpty(b2)) {
                try {
                    JSONObject jSONObject = new JSONObject(b2);
                    String str = "";
                    if (jSONObject.has(MediationMetaData.KEY_VERSION) && !jSONObject.isNull(MediationMetaData.KEY_VERSION)) {
                        str = jSONObject.getString(MediationMetaData.KEY_VERSION);
                    }
                    if (str.equals(aa.b("key_notification_show_version", ""))) {
                        Log.d("Notification", "checkAndShowNotification::has showed this version");
                        return;
                    }
                    if (!a(jSONObject)) {
                        Log.d("Notification", "checkAndShowNotification::NOT right time");
                        return;
                    }
                    String str2 = "";
                    if (jSONObject.has("notify_data") && !jSONObject.isNull("notify_data")) {
                        str2 = jSONObject.getString("notify_data");
                    }
                    int optInt = (!jSONObject.has("notify_action") || jSONObject.isNull("notify_action")) ? 0 : jSONObject.optInt("notify_action");
                    if (!a(optInt, str2)) {
                        Log.d("Notification", "checkAndShowNotification::NOT right rank list data");
                        return;
                    }
                    if (!a(optInt, str2, str)) {
                        Log.d("Notification", "checkAndShowNotification::NO relate message");
                        return;
                    }
                    String str3 = "";
                    if (jSONObject.has("title") && !jSONObject.isNull("title")) {
                        str3 = jSONObject.getString("title");
                    }
                    String str4 = "";
                    if (jSONObject.has("des") && !jSONObject.isNull("des")) {
                        str4 = jSONObject.getString("des");
                    }
                    if (jSONObject.has("unsupport_new_player") && !jSONObject.isNull("unsupport_new_player")) {
                        z = jSONObject.getInt("unsupport_new_player") == 1;
                    }
                    if (!z || !com.cmplay.util.b.b.a()) {
                        final String optString = jSONObject.optString("notify_icon_url", "");
                        if (TextUtils.isEmpty(optString)) {
                            Log.d("Notification", "checkAndShowNotification::showNotification");
                            a(context, optInt, str2, str3, str4, str, null);
                            return;
                        }
                        final int i = optInt;
                        final String str5 = str2;
                        final String str6 = str3;
                        final String str7 = str4;
                        final String str8 = str;
                        GameApp.g().a(new Runnable() { // from class: com.cmplay.notification.c.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.c.a.a().b().a(optString, new h.d() { // from class: com.cmplay.notification.c.1.1
                                    @Override // com.android.volley.toolbox.h.d
                                    public void a(h.c cVar, boolean z2) {
                                        if (cVar.b() != null || !z2) {
                                            Log.d("Notification", "notification  icon load successfully");
                                            c.a(context, i, str5, str6, str7, str8, cVar.b());
                                        }
                                    }

                                    @Override // com.android.volley.n.a
                                    public void a(s sVar) {
                                        Log.d("Notification", "notification  icon load failed");
                                        c.a(context, i, str5, str6, str7, str8, null);
                                    }
                                });
                            }
                        });
                    }
                } catch (Exception e2) {
                    Log.d("Notification", "checkAndShowNotification::" + e2.toString());
                    e2.printStackTrace();
                }
            }
        }
    }

    private static boolean a(int i, String str) {
        Log.d("notifyranklist--check-", i + ".." + str);
        if (i != 7) {
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("music_mid")) {
                    int optInt = jSONObject.optInt("music_mid", -1);
                    if (optInt == 0) {
                        return true;
                    }
                    if (optInt > 0) {
                        boolean isUnlockMusicByMid = NativeUtil.isUnlockMusicByMid(optInt);
                        Log.d("notifyranklist---", optInt + "...." + isUnlockMusicByMid);
                        if (isUnlockMusicByMid) {
                            return true;
                        }
                    }
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    private static boolean a(int i, String str, String str2) {
        if (i == 1) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has("msg_id") || jSONObject.isNull("msg_id")) {
                    return false;
                }
                long optLong = jSONObject.optLong("msg_id");
                boolean canShowMsgById = NativeUtil.canShowMsgById(String.valueOf(optLong));
                Log.d("notifymsg---", optLong + "" + canShowMsgById);
                if (!canShowMsgById) {
                    return false;
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(org.json.JSONObject r10) {
        /*
            r1 = 0
            r4 = 0
            java.lang.String r0 = "utc"
            boolean r0 = r10.has(r0)
            if (r0 == 0) goto L7b
            java.lang.String r0 = "utc"
            boolean r0 = r10.isNull(r0)
            if (r0 != 0) goto L7b
            java.lang.String r0 = "utc"
            boolean r0 = r10.getBoolean(r0)     // Catch: org.json.JSONException -> L77
        L19:
            java.text.SimpleDateFormat r6 = new java.text.SimpleDateFormat
            java.lang.String r2 = "yyyy-MM-dd/HH:mm:ss"
            r6.<init>(r2)
            if (r0 == 0) goto L2b
            java.lang.String r2 = "UTC"
            java.util.TimeZone r2 = java.util.TimeZone.getTimeZone(r2)
            r6.setTimeZone(r2)
        L2b:
            java.lang.String r2 = "starttime"
            boolean r2 = r10.has(r2)
            if (r2 == 0) goto L81
            java.lang.String r2 = "starttime"
            boolean r2 = r10.isNull(r2)
            if (r2 != 0) goto L81
            java.lang.String r2 = "starttime"
            java.lang.String r2 = r10.getString(r2)     // Catch: java.lang.Exception -> L7d
            java.util.Date r2 = r6.parse(r2)     // Catch: java.lang.Exception -> L7d
            long r2 = r2.getTime()     // Catch: java.lang.Exception -> L7d
        L49:
            java.lang.String r7 = "endtime"
            boolean r7 = r10.has(r7)
            if (r7 == 0) goto L87
            java.lang.String r7 = "endtime"
            boolean r7 = r10.isNull(r7)
            if (r7 != 0) goto L87
            java.lang.String r7 = "endtime"
            java.lang.String r7 = r10.getString(r7)     // Catch: java.lang.Exception -> L83
            java.util.Date r6 = r6.parse(r7)     // Catch: java.lang.Exception -> L83
            long r6 = r6.getTime()     // Catch: java.lang.Exception -> L83
            r8 = r6
        L68:
            if (r0 == 0) goto L89
            long r6 = java.lang.System.currentTimeMillis()
        L6e:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L99
            int r0 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r0 >= 0) goto L99
        L76:
            return r1
        L77:
            r0 = move-exception
            r0.printStackTrace()
        L7b:
            r0 = r1
            goto L19
        L7d:
            r2 = move-exception
            r2.printStackTrace()
        L81:
            r2 = r4
            goto L49
        L83:
            r6 = move-exception
            r6.printStackTrace()
        L87:
            r8 = r4
            goto L68
        L89:
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            long r6 = java.lang.System.currentTimeMillis()
            r0.setTimeInMillis(r6)
            long r6 = r0.getTimeInMillis()
            goto L6e
        L99:
            int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r0 <= 0) goto La1
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 > 0) goto L76
        La1:
            r1 = 1
            goto L76
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.notification.c.a(org.json.JSONObject):boolean");
    }

    private static void b(Context context) {
        String a2 = aa.a("notification_message_relate");
        if (!TextUtils.isEmpty(a2)) {
            try {
                String[] split = a2.split("_");
                int intValue = Integer.valueOf(split[0]).intValue();
                if (!NativeUtil.canShowMsgById(Integer.toString(Integer.valueOf(split[1]).intValue()))) {
                    a(context, intValue);
                    aa.a("notification_message_relate", "");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void a(int i, int i2, String str) {
        if (i2 == 1 && !TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("msg_id") && !jSONObject.isNull("msg_id")) {
                    aa.a("notification_message_relate", i + "_" + jSONObject.optLong("msg_id"));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    static {
        e = 5000;
        int i = e + 1;
        e = i;
        f1580a = i;
        int i2 = e + 1;
        e = i2;
        f1581b = i2;
        int i3 = e + 1;
        e = i3;
        c = i3;
        int i4 = e + 1;
        e = i4;
        d = i4;
    }

    public static void a(Context context, int i, String str, String str2, String str3, String str4, Bitmap bitmap) {
        Intent intent = new Intent(context, (Class<?>) AppActivity.class);
        if (i != 0) {
            intent.putExtra("notify_action", i);
        }
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("notify_data", str);
        }
        intent.putExtra("notification", true);
        intent.putExtra("notification_version", TextUtils.isEmpty(str4) ? "" : str4);
        PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 268435456);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context);
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        NotificationCompat.Builder contentTitle = builder.setContentTitle(str2);
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        NotificationCompat.Builder color = contentTitle.setContentText(str3).setSmallIcon(R.drawable.notification_icon).setColor(-13939358);
        if (bitmap != null) {
            color.setLargeIcon(bitmap);
        }
        Notification build = color.build();
        build.flags |= 16;
        build.contentIntent = activity;
        ((NotificationManager) context.getSystemService("notification")).notify(f1580a, build);
        aa.a("key_notification_show_version", TextUtils.isEmpty(str4) ? "" : str4);
        a(f1580a, i, str);
        int i2 = 0;
        try {
            i2 = Integer.valueOf(str4).intValue();
        } catch (NumberFormatException e2) {
        }
        if (b.a(context)) {
            a(i, i2);
        }
    }

    private static void a(int i, int i2) {
        int i3;
        switch (i) {
            case 1:
                i3 = 3;
                break;
            case 2:
                i3 = 4;
                break;
            case 3:
                i3 = 5;
                break;
            case 4:
                i3 = 6;
                break;
            case 5:
                i3 = 7;
                break;
            case 6:
                i3 = 8;
                break;
            case 7:
                i3 = 9;
                break;
            case 8:
                i3 = 10;
                break;
            case 9:
                i3 = 11;
                break;
            case 10:
                i3 = 12;
                break;
            case 11:
                i3 = 17;
                break;
            case 12:
                i3 = 25;
                break;
            case 13:
                i3 = 26;
                break;
            case 14:
                i3 = 28;
                break;
            case 15:
                i3 = 29;
                break;
            case 16:
                i3 = 27;
                break;
            case 17:
                i3 = 30;
                break;
            case 18:
                i3 = 31;
                break;
            case 19:
                i3 = 32;
                break;
            case 20:
            case MotionEventCompat.AXIS_WHEEL /* 21 */:
            case MotionEventCompat.AXIS_GAS /* 22 */:
            case MotionEventCompat.AXIS_BRAKE /* 23 */:
            case MotionEventCompat.AXIS_DISTANCE /* 24 */:
            case MotionEventCompat.AXIS_TILT /* 25 */:
            case 26:
            default:
                i3 = 0;
                break;
            case 27:
                i3 = 19;
                break;
        }
        new d().a((byte) 2, (byte) i3, (byte) 1, i2, 1);
    }

    public static void a(Context context, int i) {
        ((NotificationManager) context.getSystemService("notification")).cancel(i);
    }

    public static void a(String str) {
        Context context = GameApp.f1598a;
        Intent putExtra = new Intent(context, (Class<?>) AppActivity.class).putExtra("week_race", true);
        String string = context.getString(R.string.class_message_awards_title);
        String string2 = context.getString(R.string.class_message_awards_detail, str);
        ((NotificationManager) context.getSystemService("notification")).notify(d, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.notification_icon).setColor(-13939358).setContentTitle(string).setContentText(string2).setStyle(new NotificationCompat.BigTextStyle().bigText(string2)).setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(PendingIntent.getActivity(context, 0, putExtra, 134217728)).build());
    }
}
