package com.cmplay.webview.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.cmplay.tile2.GameApp;
import com.cmplay.webview.ipc.a.b;
import com.cmplay.webview.ui.WebViewActivity;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebBroadcast extends BroadcastReceiver {
    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.webbroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("login_callback", true);
        context.sendBroadcast(intent);
    }

    public static void b(Context context) {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.webbroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("songlock_callback", true);
        context.sendBroadcast(intent);
    }

    public static void a(Context context, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("state", i);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        b.a(GameApp.f1598a).d(jSONObject.toString());
        Intent intent = new Intent();
        intent.setAction("com.cmplay.webview.broadcast.webbroadcast");
        intent.setPackage(context.getPackageName());
        intent.putExtra("share_callback", true);
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.d("zzb", "onReceive------------");
        if (WebViewActivity.f1969a != null && WebViewActivity.f1969a.get() != null && WebViewActivity.f1969a.get().b() != null) {
            if (intent.getBooleanExtra("login_callback", false)) {
                WebViewActivity.f1969a.get().b().g(b.a(GameApp.f1598a).d());
            } else if (intent.getBooleanExtra("share_callback", false)) {
                WebViewActivity.f1969a.get().b().h(b.a(GameApp.f1598a).e());
            } else if (intent.getBooleanExtra("songlock_callback", false)) {
                WebViewActivity.f1969a.get().b().f(b.a(GameApp.f1598a).b());
            }
        }
    }
}
