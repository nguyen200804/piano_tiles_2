package com.cmplay.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.format.Time;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.tiles4.R;
import com.facebook.ads.AdError;
import java.io.File;
import java.util.zip.CRC32;
import org.cocos2dx.lib.Cocos2dxActivity;

/* compiled from: Helper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    protected static GLSurfaceView f1772a = null;

    /* renamed from: b, reason: collision with root package name */
    protected static Handler f1773b = null;

    public static void a(GLSurfaceView gLSurfaceView) {
        if (f1773b == null) {
            f1773b = new Handler(Looper.getMainLooper());
        }
        f1772a = gLSurfaceView;
    }

    public static void a(Runnable runnable) {
        if (f1772a != null) {
            f1772a.queueEvent(runnable);
        }
    }

    public static void a(Runnable runnable, long j) {
        if (f1773b != null) {
            f1773b.postDelayed(runnable, j);
        }
    }

    public static void a(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.contains("details?id=")) {
            String substring = str.substring(lowerCase.indexOf("details?id=") + 11);
            try {
                Intent launchIntentForPackage = Cocos2dxActivity.getContext().getPackageManager().getLaunchIntentForPackage("com.android.vending");
                if (launchIntentForPackage == null) {
                    throw new ActivityNotFoundException();
                }
                launchIntentForPackage.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.activities.LaunchUrlHandlerActivity"));
                launchIntentForPackage.setData(Uri.parse("market://details?id=" + substring));
                Cocos2dxActivity.getContext().startActivity(launchIntentForPackage);
                return;
            } catch (ActivityNotFoundException e) {
                Cocos2dxActivity.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + substring)));
                return;
            }
        }
        try {
            Cocos2dxActivity.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e2) {
        }
    }

    public static void a() {
        final Activity activity = (Activity) AppActivity.getContext();
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.util.i.1
            @Override // java.lang.Runnable
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(activity);
                builder.setTitle(R.string.feedback_dialog_title);
                builder.setMessage(R.string.feedback_dialog_ask);
                builder.setPositiveButton(R.string.dialog_btn_no, new DialogInterface.OnClickListener() { // from class: com.cmplay.util.i.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                });
                builder.setNegativeButton(R.string.dialog_btn_yes, new DialogInterface.OnClickListener() { // from class: com.cmplay.util.i.1.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                        i.b();
                    }
                });
                AlertDialog create = builder.create();
                create.setCanceledOnTouchOutside(false);
                create.show();
            }
        });
    }

    public static void b() {
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        String string = activity.getResources().getString(R.string.email_address);
        String languageTextByKey = NativeUtil.getLanguageTextByKey("title_feedback");
        String languageTextByKey2 = NativeUtil.getLanguageTextByKey("text_feedback");
        StringBuilder sb = new StringBuilder();
        sb.append(activity.getResources().getString(R.string.email_content_ex_info));
        sb.append("\nModel:");
        sb.append(NativeUtil.getModel());
        sb.append("\nAndroid Ver:");
        sb.append(NativeUtil.getOSVersion());
        sb.append("\nGame Ver:");
        sb.append(NativeUtil.getVersionCode());
        com.cmplay.a.e c = com.cmplay.a.c.a().c();
        if (c != null) {
            sb.append("\nAccount ID:");
            sb.append(c.a());
        }
        sb.append("\nA_ID:");
        sb.append(NativeUtil.getAndroidId());
        sb.append("\nX_ID:");
        sb.append(NativeUtil.getUUID());
        sb.append("\nService_ID:");
        sb.append(NativeUtil.getNetUUid());
        sb.append("\n\n\n");
        a(string, languageTextByKey, sb.toString() + languageTextByKey2 + "\n\n", AdError.SERVER_ERROR_CODE);
    }

    public static void a(String str, String str2, String str3, int i) {
        try {
            boolean a2 = a("com.google.android.gm.ComposeActivityGmail", str, str2, str3, i);
            if (!a2) {
                a2 = a("com.android.mail.compose.ComposeActivityGmail", str, str2, str3, i);
            }
            if (!a2) {
                a("", str, str2, str3, i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean a(String str, String str2, String str3, String str4, int i) {
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        if (!TextUtils.isEmpty(str)) {
            intent.setComponent(new ComponentName("com.google.android.gm", str));
        }
        intent.putExtra("android.intent.extra.EMAIL", new String[]{str2});
        intent.putExtra("android.intent.extra.SUBJECT", str3);
        intent.putExtra("android.intent.extra.TEXT", str4);
        if (!TextUtils.isEmpty(str)) {
            return e.a(activity, intent, i);
        }
        intent.setType("message/rfc822");
        return e.a(activity, Intent.createChooser(intent, NativeUtil.getLanguageTextByKey("send_email")), i);
    }

    public static int c() {
        String a2 = e.a(GameApp.f1598a);
        if (TextUtils.isEmpty(a2)) {
            return 0;
        }
        CRC32 crc32 = new CRC32();
        crc32.update(a2.getBytes());
        return (int) (crc32.getValue() % 2);
    }

    public static String d() {
        File fileStreamPath = GameApp.f1598a.getFileStreamPath("share_CD_bg.jpg");
        if (fileStreamPath.exists()) {
            return fileStreamPath.getAbsolutePath();
        }
        return null;
    }

    public static void a(File file) {
        if (file.exists()) {
            aa.a("key_share_bg_file_md5", m.a(file.getAbsolutePath()));
        }
    }

    public static int e() {
        if (com.cmplay.h.d.m == 2 || com.cmplay.h.d.m == 3) {
            return 0;
        }
        return NativeUtil.getScoreLevel();
    }

    public static int f() {
        try {
            return Integer.parseInt(NativeUtil.getHallLevel());
        } catch (Exception e) {
            e.printStackTrace();
            return 1;
        }
    }

    public static void b(String str) {
        try {
            if (GameApp.f1598a.getPackageManager().getPackageInfo("com.facebook.katana", 0).versionCode >= 3002850) {
                e.a(GameApp.f1598a, new Intent("android.intent.action.VIEW", Uri.parse("fb://facewebmodal/f?href=" + str)));
            } else {
                e.a(GameApp.f1598a, new Intent("android.intent.action.VIEW", Uri.parse(str)));
            }
        } catch (PackageManager.NameNotFoundException e) {
            e.a(GameApp.f1598a, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public static long a(long j, int i) {
        Time time = new Time();
        time.set(j);
        int i2 = time.year;
        int i3 = time.month;
        int i4 = time.monthDay;
        int i5 = time.minute;
        int i6 = time.hour;
        int i7 = time.second;
        if (i6 != i) {
            if (i6 < i) {
                Time time2 = new Time();
                time2.set(i7, i5, i, i4, i3, i2);
                return time2.toMillis(true);
            }
            if (i6 > i) {
                Time time3 = new Time();
                time3.set((((24 - i6) + i) * 60 * 60 * 1000) + j);
                return time3.toMillis(true);
            }
            return j;
        }
        return j;
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String b2 = aa.b("key_get_week_race_diamond_ids", "");
        if (TextUtils.isEmpty(b2)) {
            return false;
        }
        return b2.contains(str);
    }
}
