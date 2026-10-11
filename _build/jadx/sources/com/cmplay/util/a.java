package com.cmplay.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;

/* compiled from: AppJumpHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static void a(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.BROWSABLE");
            if (!v.a(GameApp.f1598a, "com.spotify.music")) {
                intent.setData(Uri.parse("http://open.spotify.com/" + str));
            } else {
                intent.setData(Uri.parse("spotify://" + str + "?ref=piano_tiles2"));
                intent.setPackage("com.spotify.music");
            }
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e) {
            }
        }
    }
}
