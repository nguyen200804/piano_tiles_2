package com.cmplay.webview.broadcast;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.h.f;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.c;
import com.cmplay.util.d;
import com.cmplay.webview.ipc.WebIpcProvider;
import com.cmplay.webview.ipc.a.b;
import com.mopub.mobileads.VastExtensionXmlManager;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GameBroadcast extends BroadcastReceiver {
    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra(AppLovinEventTypes.USER_LOGGED_IN, true);
        context.sendBroadcast(intent);
    }

    public static void a(Context context, int i, String str) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("game_login_callback", true);
        intent.putExtra("game_login_type", i);
        intent.putExtra("game_login_error_info", str);
        context.sendBroadcast(intent);
    }

    public static void a(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("send_prize_boolean", true);
        intent.putExtra("send_prize_number", str);
        context.sendBroadcast(intent);
    }

    public static void b(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("peport_login_btn_pv", true);
        context.sendBroadcast(intent);
    }

    public static void c(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("feedback_json_boolean", true);
        context.sendBroadcast(intent);
    }

    public static void a(Context context, int i) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("kill_process_boolean", true);
        intent.putExtra("kill_process_id", i);
        context.sendBroadcast(intent);
    }

    public static void b(Context context, int i, String str) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("action_goto_page", true);
        intent.putExtra(":page_id", i);
        intent.putExtra(":data", str);
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("Web", "GameBroadCast onReceive");
        Activity c = AppActivity.c();
        if (c == null || c.isFinishing()) {
            Log.d("Web", "GameBroadCast activit is finish, return");
            return;
        }
        if (intent.getBooleanExtra(AppLovinEventTypes.USER_LOGGED_IN, false)) {
            NativeUtil.H5Login();
            return;
        }
        if (intent.getBooleanExtra(AppLovinEventTypes.USER_SHARED_LINK, false)) {
            c(intent);
            return;
        }
        if (intent.getBooleanExtra("game_login_callback", false)) {
            a(intent);
            return;
        }
        if (intent.getBooleanExtra("send_prize_boolean", false)) {
            b(intent);
            return;
        }
        if (intent.getBooleanExtra("peport_login_btn_pv", false)) {
            NativeUtil.reportLoginBtnPV();
            return;
        }
        if (intent.getBooleanExtra("feedback_json_boolean", false)) {
            NativeUtil.postFeedbackInfo(b.a(GameApp.f1598a).a("feed_back_json", ""));
            return;
        }
        if (intent.getBooleanExtra("kill_process_boolean", false)) {
            c.b("ly", "onDestroy killProcess = " + WebIpcProvider.f1965a);
            WebIpcProvider.b();
            if (intent.getIntExtra("kill_process_id", -1) != -1) {
                Process.killProcess(intent.getIntExtra("kill_process_id", -1));
                return;
            }
            return;
        }
        if (intent.getIntExtra("music_mid", 0) != 0) {
            int intExtra = intent.getIntExtra("music_price", -1);
            int intExtra2 = intent.getIntExtra("music_mid", 0);
            int intExtra3 = intent.getIntExtra("music_paytype", -1);
            if (intExtra2 > 0 && intExtra3 != -1 && intExtra != -1) {
                Log.d("Web", "NativeUtil.pushUnlockMusicNotify");
                NativeUtil.pushUnlockMusicNotify(intExtra2, intExtra, intExtra3, true);
                return;
            }
            return;
        }
        if (!TextUtils.isEmpty(intent.getStringExtra("music_datas"))) {
            NativeUtil.startUnLockSongs(intent.getStringExtra("music_datas"));
            return;
        }
        if (!TextUtils.isEmpty(intent.getStringExtra("music_ids"))) {
            NativeUtil.startGetUnLockState(intent.getStringExtra("music_ids"));
            return;
        }
        if (intent.getIntExtra("music_jump_mid", -1) != -1) {
            int intExtra4 = intent.getIntExtra("music_jump_mid", -1);
            Log.d("Web", "NativeUtil.pushGotoBattleNotify");
            NativeUtil.pushGotoBattleNotify(intExtra4);
        } else if (intent.getBooleanExtra("action_goto_page", false)) {
            com.cmplay.webview.d.b.a(intent.getIntExtra(":page_id", 0), intent.getStringExtra(":data"));
        }
    }

    private void c(Intent intent) {
        String str = "";
        String str2 = "";
        String str3 = "";
        String str4 = "";
        if (intent != null) {
            try {
                JSONObject jSONObject = new JSONObject(intent.getStringExtra("share_content"));
                if (jSONObject.optInt("action") == 0) {
                    str = jSONObject.optString("title");
                    str2 = jSONObject.optString("description");
                    str3 = jSONObject.optString("img_url");
                } else {
                    str = NativeUtil.getLanguageTextByKey("title_halloween");
                    str2 = NativeUtil.getLanguageTextByKey("text_halloween");
                    str3 = NativeUtil.getLanguageTextByKey("url_halloween");
                }
                str4 = "https://fb.me/1651596795087685";
            } catch (JSONException e) {
                e.printStackTrace();
            }
            f.b().a(11, str, str2, str3, str4);
        }
    }

    public void a(Intent intent) {
        if (intent != null) {
            int intExtra = intent.getIntExtra("game_login_type", 0);
            String stringExtra = intent.getStringExtra("game_login_error_info");
            switch (intExtra) {
                case 1:
                    NativeUtil.loginCallbackOnGLThread(1, 0, null);
                    break;
                case 2:
                    NativeUtil.loginCallbackOnGLThread(1, 1, null);
                    break;
                case 3:
                    NativeUtil.loginCallbackOnGLThread(1, 2, stringExtra);
                    break;
            }
        }
    }

    public void b(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("send_prize_number");
            if (!TextUtils.isEmpty(stringExtra)) {
                try {
                    JSONObject jSONObject = new JSONObject(stringExtra);
                    final int optInt = jSONObject.optInt(VastExtensionXmlManager.TYPE);
                    final int optInt2 = jSONObject.optInt("num");
                    d.a(new d.a() { // from class: com.cmplay.webview.broadcast.GameBroadcast.1
                        @Override // com.cmplay.util.d.a
                        public void a() {
                            c.b("ly", "sendGamePrize type = " + optInt + " num = " + optInt2);
                            NativeUtil.halloweenCallback(optInt, optInt2);
                        }
                    });
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void a(Context context, int i, int i2, int i3) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.putExtra("music_mid", i);
        intent.putExtra("music_price", i2);
        intent.putExtra("music_paytype", i3);
        context.sendBroadcast(intent);
    }

    public static void b(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.putExtra("music_datas", str);
        context.sendBroadcast(intent);
    }

    public static void b(Context context, int i) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.putExtra("music_jump_mid", i);
        context.sendBroadcast(intent);
    }

    public static void c(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.gamebroadcast");
        intent.putExtra("music_ids", str);
        context.sendBroadcast(intent);
    }
}
