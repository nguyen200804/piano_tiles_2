package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mraid.MraidVideoViewController;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MraidVideoPlayerActivity extends BaseVideoPlayerActivity implements BaseVideoViewController.BaseVideoViewControllerListener {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private BaseVideoViewController f4395a;

    /* renamed from: b, reason: collision with root package name */
    private long f4396b;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        this.f4396b = a(getIntent());
        try {
            this.f4395a = a(savedInstanceState);
            this.f4395a.a();
        } catch (IllegalStateException e) {
            BaseBroadcastReceiver.broadcastAction(this, this.f4396b, IntentActions.ACTION_INTERSTITIAL_FAIL);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.f4395a != null) {
            this.f4395a.c();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f4395a != null) {
            this.f4395a.d();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoPlayerActivity, android.app.Activity
    protected void onDestroy() {
        if (this.f4395a != null) {
            this.f4395a.e();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle outState) {
        super.onSaveInstanceState(outState);
        if (this.f4395a != null) {
            this.f4395a.a(outState);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.f4395a != null) {
            this.f4395a.a(newConfig);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f4395a != null && this.f4395a.backButtonEnabled()) {
            super.onBackPressed();
            this.f4395a.f();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (this.f4395a != null) {
            this.f4395a.a(requestCode, resultCode, data);
        }
    }

    private BaseVideoViewController a(Bundle bundle) throws IllegalStateException {
        String stringExtra = getIntent().getStringExtra(BaseVideoPlayerActivity.VIDEO_CLASS_EXTRAS_KEY);
        if (FullAdType.VAST.equals(stringExtra)) {
            return new VastVideoViewController(this, getIntent().getExtras(), bundle, this.f4396b, this);
        }
        if (AdType.MRAID.equals(stringExtra)) {
            return new MraidVideoViewController(this, getIntent().getExtras(), bundle, this);
        }
        if ("native".equals(stringExtra)) {
            Class[] clsArr = {Context.class, Bundle.class, Bundle.class, BaseVideoViewController.BaseVideoViewControllerListener.class};
            Object[] objArr = {this, getIntent().getExtras(), bundle, this};
            if (!Reflection.classFound("com.mopub.nativeads.NativeVideoViewController")) {
                throw new IllegalStateException("Missing native video module");
            }
            try {
                return (BaseVideoViewController) Reflection.instantiateClassWithConstructor("com.mopub.nativeads.NativeVideoViewController", BaseVideoViewController.class, clsArr, objArr);
            } catch (Exception e) {
                throw new IllegalStateException("Missing native video module");
            }
        }
        throw new IllegalStateException("Unsupported video type: " + stringExtra);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int requestedOrientation) {
        setRequestedOrientation(requestedOrientation);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        finish();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> clazz, int requestCode, Bundle extras) {
        if (clazz != null) {
            try {
                startActivityForResult(Intents.getStartActivityIntent(this, clazz, extras), requestCode);
            } catch (ActivityNotFoundException e) {
                MoPubLog.d("Activity " + clazz.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
            }
        }
    }

    protected static long a(Intent intent) {
        return intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }
}
