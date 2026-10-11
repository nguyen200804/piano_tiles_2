package com.facebook.notifications.internal.a;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.notifications.internal.view.ActionButton;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* compiled from: AppEventsLogger.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3361a = a.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private Object f3362b;

    @Nullable
    private Method c;

    public a(@NonNull Context context) {
        try {
            Class<?> cls = Class.forName("com.facebook.appevents.a");
            Method method = cls.getMethod("newLogger", Context.class);
            this.c = cls.getMethod("logEvent", String.class, Bundle.class);
            this.f3362b = method.invoke(null, context);
        } catch (Exception e) {
            Log.w(f3361a, "Failed to initialize AppEventsLogger. Did you forget to include the Facebook SDK in your application?", e);
        }
    }

    @Nullable
    public static String a(@NonNull JSONObject jSONObject) {
        return jSONObject.optString("campaign", null);
    }

    @NonNull
    private static String a(ActionButton.a aVar) {
        switch (aVar) {
            case Primary:
                return "fb_mobile_push_card_action_primary";
            case Secondary:
                return "fb_mobile_push_card_action_secondary";
            case Dismiss:
                return "fb_mobile_push_card_action_dismiss";
            default:
                throw new RuntimeException("Unknown action type: " + aVar);
        }
    }

    public void a(ActionButton.a aVar, @Nullable String str) {
        if (str != null && !str.equals("") && this.f3362b != null && this.c != null) {
            Bundle bundle = new Bundle();
            bundle.putString("fb_push_campaign", str);
            try {
                this.c.invoke(this.f3362b, a(aVar), bundle);
            } catch (Exception e) {
                Log.w(f3361a, "Failed to invoke AppEventsLogger.Did you forget to include the Facebook SDK in your application?", e);
            }
        }
    }
}
