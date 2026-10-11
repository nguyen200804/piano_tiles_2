package com.cmplay.base.util.webview.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.cmplay.base.util.webview.util.FeedbackUtil;
import com.google.ads.mediation.facebook.FacebookAdapter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GameBroadcast extends BroadcastReceiver {
    public static final String ACTION = "com.cmplay.base.util.webview.broadcast.gamebroadcast";
    public static final String JUMP_TO_LEVEL = "jumpToLevel";
    public static final String POST_FEEDBACK_DATA = "post_feedback_data";
    public static final String SEND_PRIZE = "send_prize";

    public static void jumpToLevel(Context context, int index) {
        Intent intent = new Intent();
        intent.setAction(ACTION);
        intent.setPackage(context.getPackageName());
        intent.putExtra(JUMP_TO_LEVEL, true);
        intent.putExtra("index", index);
        context.sendBroadcast(intent);
    }

    public static void sendPrize(Context context, int sence, int id, int count) {
        Intent intent = new Intent();
        intent.setAction(ACTION);
        intent.setPackage(context.getPackageName());
        intent.putExtra(SEND_PRIZE, true);
        intent.putExtra("sence", sence);
        intent.putExtra(FacebookAdapter.KEY_ID, id);
        intent.putExtra("count", count);
        context.sendBroadcast(intent);
    }

    public static void PostFeedbackData(Context context, String json) {
        Intent intent = new Intent();
        intent.setAction(ACTION);
        intent.setPackage(context.getPackageName());
        intent.putExtra(POST_FEEDBACK_DATA, true);
        intent.putExtra("feedback_json", json);
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context != null && context.getApplicationContext() != null && !intent.getBooleanExtra(JUMP_TO_LEVEL, false) && !intent.getBooleanExtra(SEND_PRIZE, false) && intent.getBooleanExtra(POST_FEEDBACK_DATA, false)) {
            FeedbackUtil.postFeedback(context, intent.getStringExtra("feedback_json"));
        }
    }
}
