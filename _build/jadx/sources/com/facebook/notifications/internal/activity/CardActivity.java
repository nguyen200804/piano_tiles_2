package com.facebook.notifications.internal.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.facebook.notifications.NotificationCardResult;
import com.facebook.notifications.internal.asset.a;
import com.facebook.notifications.internal.asset.handlers.ColorAssetHandler;
import com.facebook.notifications.internal.configuration.CardConfiguration;
import com.facebook.notifications.internal.utilities.AssetHandlerEntry;
import com.facebook.notifications.internal.view.ActionButton;
import com.facebook.notifications.internal.view.a;
import com.facebook.notifications.internal.view.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CardActivity extends Activity implements a.InterfaceC0090a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3364a = CardActivity.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private String f3365b;

    @Nullable
    private JSONObject c;

    @NonNull
    private com.facebook.notifications.internal.asset.a d;

    @NonNull
    private com.facebook.notifications.internal.content.a e;

    @NonNull
    private com.facebook.notifications.internal.a.a f;

    @Nullable
    private d g;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.d = new com.facebook.notifications.internal.asset.a(this);
        this.e = new com.facebook.notifications.internal.content.a(this);
        this.f = new com.facebook.notifications.internal.a.a(this);
        Intent intent = getIntent();
        this.f3365b = intent.getStringExtra("fb_push_campaign");
        String stringExtra = intent.getStringExtra("fb_push_card_payload");
        CardConfiguration cardConfiguration = (CardConfiguration) intent.getParcelableExtra("fb_push_card_configuration");
        for (Parcelable parcelable : intent.getParcelableArrayExtra("fb_push_card_asset_handlers")) {
            if (parcelable instanceof AssetHandlerEntry) {
                try {
                    AssetHandlerEntry assetHandlerEntry = (AssetHandlerEntry) parcelable;
                    this.d.a(assetHandlerEntry.a(), assetHandlerEntry.b().newInstance());
                } catch (IllegalAccessException e) {
                    Log.e(f3364a, "Error while instantiating asset handler", e);
                } catch (InstantiationException e2) {
                    Log.e(f3364a, "Error while instantiating asset handler", e2);
                }
            }
        }
        try {
            this.c = new JSONObject(stringExtra);
        } catch (JSONException e3) {
            Log.e(f3364a, "Error parsing JSON payload", e3);
        }
        if (cardConfiguration == null) {
            b();
        } else {
            a(cardConfiguration);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.d.a();
        if (this.c != null) {
            this.d.b(this.c);
        }
    }

    private void b() {
        if (this.c == null) {
            Log.e(f3364a, "No card payload is available!");
            return;
        }
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        int a2 = ColorAssetHandler.a(this.c.optString("backdropColor"));
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(a2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        frameLayout.addView(progressBar, layoutParams);
        setContentView(frameLayout);
        final Handler handler = new Handler();
        if (this.c != null) {
            this.d.a(this.c, new a.c() { // from class: com.facebook.notifications.internal.activity.CardActivity.1
                @Override // com.facebook.notifications.internal.asset.a.c
                public void a(@NonNull JSONObject jSONObject) {
                    try {
                        final CardConfiguration cardConfiguration = new CardConfiguration(CardActivity.this.c, CardActivity.this.d, CardActivity.this.e);
                        handler.post(new Runnable() { // from class: com.facebook.notifications.internal.activity.CardActivity.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                CardActivity.this.a(cardConfiguration);
                            }
                        });
                    } catch (JSONException e) {
                        Log.e(CardActivity.f3364a, "Error while parsing JSON", e);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CardConfiguration cardConfiguration) {
        this.g = new d(this, this.d, this.e, this, cardConfiguration);
        setContentView(this.g);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("fb_notification_card_result", new NotificationCardResult((Uri) null));
        setResult(-1, intent);
        finish();
    }

    @Override // com.facebook.notifications.internal.view.a.InterfaceC0090a
    public void a(ActionButton.a aVar, @Nullable Uri uri) {
        this.f.a(aVar, this.f3365b);
        Intent intent = new Intent();
        intent.putExtra("fb_notification_card_result", new NotificationCardResult(uri));
        setResult(-1, intent);
        finish();
        if (uri != null) {
            startActivity(new Intent("android.intent.action.VIEW", uri));
        }
    }
}
