package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class BaseVideoViewController {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4361a;

    /* renamed from: b, reason: collision with root package name */
    private final RelativeLayout f4362b;
    private final BaseVideoViewControllerListener c;

    @Nullable
    private Long d;

    public interface BaseVideoViewControllerListener {
        void onFinish();

        void onSetContentView(View view);

        void onSetRequestedOrientation(int i);

        void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle);
    }

    protected abstract void a(Configuration configuration);

    protected abstract void a(@NonNull Bundle bundle);

    protected abstract VideoView b();

    protected abstract void c();

    protected abstract void d();

    protected abstract void e();

    protected abstract void f();

    protected BaseVideoViewController(Context context, @Nullable Long broadcastIdentifier, BaseVideoViewControllerListener baseVideoViewControllerListener) {
        this.f4361a = context;
        this.d = broadcastIdentifier;
        this.c = baseVideoViewControllerListener;
        this.f4362b = new RelativeLayout(this.f4361a);
    }

    protected void a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        this.f4362b.addView(b(), 0, layoutParams);
        this.c.onSetContentView(this.f4362b);
    }

    public boolean backButtonEnabled() {
        return true;
    }

    void a(int i, int i2, Intent intent) {
    }

    protected BaseVideoViewControllerListener g() {
        return this.c;
    }

    protected Context h() {
        return this.f4361a;
    }

    public ViewGroup getLayout() {
        return this.f4362b;
    }

    protected void a(boolean z) {
        MoPubLog.e("Video cannot be played.");
        a(IntentActions.ACTION_INTERSTITIAL_FAIL);
        if (z) {
            this.c.onFinish();
        }
    }

    protected void b(boolean z) {
        if (z) {
            this.c.onFinish();
        }
    }

    void a(String str) {
        if (this.d != null) {
            BaseBroadcastReceiver.broadcastAction(this.f4361a, this.d.longValue(), str);
        } else {
            MoPubLog.w("Tried to broadcast a video event without a broadcast identifier to send to.");
        }
    }
}
