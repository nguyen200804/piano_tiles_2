package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.FrameLayout;
import com.mopub.common.AdReport;
import com.mopub.common.CloseableLayout;
import com.mopub.common.DataKeys;

/* compiled from: BaseInterstitialActivity.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class a extends Activity {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    protected AdReport f4474a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private CloseableLayout f4475b;

    @Nullable
    private Long c;

    public abstract View getAdView();

    a() {
    }

    /* compiled from: BaseInterstitialActivity.java */
    /* renamed from: com.mopub.mobileads.a$a, reason: collision with other inner class name */
    enum EnumC0209a {
        WEB_VIEW_DID_APPEAR("webviewDidAppear();"),
        WEB_VIEW_DID_CLOSE("webviewDidClose();");


        /* renamed from: a, reason: collision with root package name */
        private String f4478a;

        EnumC0209a(String str) {
            this.f4478a = str;
        }

        protected String a() {
            return this.f4478a;
        }

        protected String b() {
            return "javascript:" + this.f4478a;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        this.c = a(intent);
        this.f4474a = b(intent);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        View adView = getAdView();
        this.f4475b = new CloseableLayout(this);
        this.f4475b.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads.a.1
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public void onClose() {
                a.this.finish();
            }
        });
        this.f4475b.addView(adView, new FrameLayout.LayoutParams(-1, -1));
        setContentView(this.f4475b);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.f4475b != null) {
            this.f4475b.removeAllViews();
        }
        super.onDestroy();
    }

    @Nullable
    Long a() {
        return this.c;
    }

    protected void b() {
        if (this.f4475b != null) {
            this.f4475b.setCloseVisible(true);
        }
    }

    protected void c() {
        if (this.f4475b != null) {
            this.f4475b.setCloseVisible(false);
        }
    }

    protected static Long a(Intent intent) {
        if (intent.hasExtra(DataKeys.BROADCAST_IDENTIFIER_KEY)) {
            return Long.valueOf(intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L));
        }
        return null;
    }

    @Nullable
    protected static AdReport b(Intent intent) {
        try {
            return (AdReport) intent.getSerializableExtra(DataKeys.AD_REPORT_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }
}
