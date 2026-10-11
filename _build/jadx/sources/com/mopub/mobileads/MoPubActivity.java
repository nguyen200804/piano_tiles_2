package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.AdReport;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.IntentActions;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.a;
import com.mopub.mobileads.factories.HtmlInterstitialWebViewFactory;
import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubActivity extends com.mopub.mobileads.a {

    /* renamed from: b, reason: collision with root package name */
    private HtmlInterstitialWebView f4372b;

    public static void start(Context context, String htmlData, AdReport adReport, boolean isScrollable, String redirectUrl, String clickthroughUrl, CreativeOrientation creativeOrientation, long broadcastIdentifier) {
        try {
            context.startActivity(a(context, htmlData, adReport, isScrollable, redirectUrl, clickthroughUrl, creativeOrientation, broadcastIdentifier));
        } catch (ActivityNotFoundException e) {
            Log.d("MoPubActivity", "MoPubActivity not found - did you declare it in AndroidManifest.xml?");
        }
    }

    static Intent a(Context context, String str, AdReport adReport, boolean z, String str2, String str3, CreativeOrientation creativeOrientation, long j) {
        Intent intent = new Intent(context, (Class<?>) MoPubActivity.class);
        intent.putExtra(DataKeys.HTML_RESPONSE_BODY_KEY, str);
        intent.putExtra(DataKeys.SCROLLABLE_KEY, z);
        intent.putExtra(DataKeys.CLICKTHROUGH_URL_KEY, str3);
        intent.putExtra(DataKeys.REDIRECT_URL_KEY, str2);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        intent.addFlags(268435456);
        return intent;
    }

    static void a(Context context, AdReport adReport, final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str) {
        HtmlInterstitialWebView create = HtmlInterstitialWebViewFactory.create(context, adReport, customEventInterstitialListener, false, null, null);
        create.b(false);
        create.a();
        create.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.MoPubActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if ("mopub://finishLoad".equals(url)) {
                    CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialLoaded();
                    return true;
                }
                if ("mopub://failLoad".equals(url)) {
                    CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialFailed(null);
                    return true;
                }
                return true;
            }
        });
        create.a(str);
    }

    @Override // com.mopub.mobileads.a
    public View getAdView() {
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra(DataKeys.SCROLLABLE_KEY, false);
        String stringExtra = intent.getStringExtra(DataKeys.REDIRECT_URL_KEY);
        String stringExtra2 = intent.getStringExtra(DataKeys.CLICKTHROUGH_URL_KEY);
        String stringExtra3 = intent.getStringExtra(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.f4372b = HtmlInterstitialWebViewFactory.create(getApplicationContext(), this.f4474a, new a(), booleanExtra, stringExtra, stringExtra2);
        this.f4372b.a(stringExtra3);
        return this.f4372b;
    }

    @Override // com.mopub.mobileads.a, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        CreativeOrientation creativeOrientation;
        super.onCreate(savedInstanceState);
        Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
        if (serializableExtra == null || !(serializableExtra instanceof CreativeOrientation)) {
            creativeOrientation = CreativeOrientation.UNDEFINED;
        } else {
            creativeOrientation = (CreativeOrientation) serializableExtra;
        }
        DeviceUtils.lockOrientation(this, creativeOrientation);
        EventForwardingBroadcastReceiver.broadcastAction(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.mopub.mobileads.a, android.app.Activity
    protected void onDestroy() {
        this.f4372b.loadUrl(a.EnumC0209a.WEB_VIEW_DID_CLOSE.b());
        this.f4372b.destroy();
        EventForwardingBroadcastReceiver.broadcastAction(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        super.onDestroy();
    }

    class a implements CustomEventInterstitial.CustomEventInterstitialListener {
        a() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialLoaded() {
            MoPubActivity.this.f4372b.loadUrl(a.EnumC0209a.WEB_VIEW_DID_APPEAR.b());
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialFailed(MoPubErrorCode errorCode) {
            EventForwardingBroadcastReceiver.broadcastAction(MoPubActivity.this, MoPubActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            MoPubActivity.this.finish();
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialShown() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialClicked() {
            EventForwardingBroadcastReceiver.broadcastAction(MoPubActivity.this, MoPubActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onLeaveApplication() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialDismissed() {
        }
    }
}
