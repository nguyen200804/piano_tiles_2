package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.login.LoginFragment;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FacebookActivity extends FragmentActivity {

    /* renamed from: a, reason: collision with root package name */
    public static String f2403a = "PassThrough";

    /* renamed from: b, reason: collision with root package name */
    private static String f2404b = "SingleFragment";
    private Fragment c;

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.com_facebook_activity_layout);
        Intent intent = getIntent();
        if (f2403a.equals(intent.getAction())) {
            b();
            return;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(f2404b);
        Fragment fragment = findFragmentByTag;
        if (findFragmentByTag == null) {
            if ("FacebookDialogFragment".equals(intent.getAction())) {
                FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
                facebookDialogFragment.setRetainInstance(true);
                facebookDialogFragment.show(supportFragmentManager, f2404b);
                fragment = facebookDialogFragment;
            } else {
                LoginFragment loginFragment = new LoginFragment();
                loginFragment.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(R.id.com_facebook_fragment_container, loginFragment, f2404b).commit();
                fragment = loginFragment;
            }
        }
        this.c = fragment;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.c != null) {
            this.c.onConfigurationChanged(newConfig);
        }
    }

    private void b() {
        Intent intent = getIntent();
        setResult(0, com.facebook.internal.v.a(intent, (Bundle) null, com.facebook.internal.v.a(com.facebook.internal.v.d(intent))));
        finish();
    }

    public Fragment a() {
        return this.c;
    }
}
