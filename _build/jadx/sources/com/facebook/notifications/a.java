package com.facebook.notifications;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.notifications.internal.activity.CardActivity;
import com.facebook.notifications.internal.configuration.CardConfiguration;
import com.facebook.notifications.internal.utilities.AssetHandlerEntry;
import com.facebook.notifications.internal.utilities.f;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NotificationsManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private static final f f3359a = new f(0, 2, 0);

    /* renamed from: b, reason: collision with root package name */
    private static final String f3360b = a.class.getCanonicalName();
    private static final List<AssetHandlerEntry> c = Collections.synchronizedList(new LinkedList());

    private a() {
    }

    @Nullable
    private static Intent a(@NonNull Context context, @NonNull Bundle bundle, @Nullable com.facebook.notifications.internal.asset.a aVar, @Nullable com.facebook.notifications.internal.content.a aVar2) throws JSONException {
        String string = bundle.getString("fb_push_payload");
        String string2 = bundle.getString("fb_push_card");
        if (string == null) {
            throw new IllegalArgumentException("fb_push_payload");
        }
        if (string2 == null) {
            throw new IllegalArgumentException("fb_push_card");
        }
        JSONObject jSONObject = new JSONObject(string);
        JSONObject jSONObject2 = new JSONObject(string2);
        String a2 = com.facebook.notifications.internal.a.a.a(jSONObject);
        f a3 = f.a(jSONObject2.optString(MediationMetaData.KEY_VERSION));
        if (a3 == null || a3.compareTo(f3359a) > 0) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) CardActivity.class);
        intent.putExtra("fb_push_campaign", a2);
        intent.putExtra("fb_push_card_payload", string2);
        intent.putExtra("fb_push_card_asset_handlers", (Parcelable[]) c.toArray(new Parcelable[0]));
        if (aVar != null && aVar2 != null) {
            intent.putExtra("fb_push_card_configuration", new CardConfiguration(jSONObject2, aVar, aVar2));
        }
        return intent;
    }

    public static boolean a(@NonNull Activity activity, @NonNull Bundle bundle) {
        try {
            Intent a2 = a(activity, bundle, null, null);
            if (a2 == null) {
                return false;
            }
            activity.startActivityForResult(a2, 51789);
            return true;
        } catch (JSONException e) {
            Log.e(f3360b, "Error while parsing JSON", e);
            return false;
        }
    }

    public static NotificationCardResult a(int i, int i2, @Nullable Intent intent) {
        if (i == 51789 && i2 == -1 && intent != null) {
            return (NotificationCardResult) intent.getParcelableExtra("fb_notification_card_result");
        }
        return null;
    }

    public static boolean a(@NonNull Activity activity) {
        Intent intent = (Intent) activity.getIntent().getParcelableExtra("notification_push_payload_intent");
        if (intent == null) {
            return false;
        }
        activity.startActivityForResult(intent, 51789);
        return true;
    }
}
