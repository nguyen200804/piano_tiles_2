package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.IntentActions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.a;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidWebViewClient;
import com.mopub.mraid.MraidWebViewDebugListener;
import com.mopub.mraid.PlacementType;
import com.mopub.network.Networking;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MraidActivity extends a {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private MraidController f4390b;

    @Nullable
    private MraidWebViewDebugListener c;

    public static void preRenderHtml(@NonNull Context context, @NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, @Nullable String htmlData) {
        a(customEventInterstitialListener, htmlData, new BaseWebView(context));
    }

    @VisibleForTesting
    static void a(@NonNull final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, @Nullable String str, @NonNull final BaseWebView baseWebView) {
        baseWebView.b(false);
        baseWebView.a();
        baseWebView.setWebViewClient(new MraidWebViewClient() { // from class: com.mopub.mobileads.MraidActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialLoaded();
                baseWebView.loadUrl("javascript:mraidbridge.setState('default');");
                baseWebView.loadUrl("javascript:mraidbridge.notifyReadyEvent();");
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                super.onReceivedError(view, errorCode, description, failingUrl);
                CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            }
        });
        baseWebView.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
    }

    public static void start(@NonNull Context context, @Nullable AdReport adreport, @Nullable String htmlData, long broadcastIdentifier) {
        try {
            context.startActivity(a(context, adreport, htmlData, broadcastIdentifier));
        } catch (ActivityNotFoundException e) {
            Log.d("MraidInterstitial", "MraidActivity.class not found. Did you declare MraidActivity in your manifest?");
        }
    }

    @VisibleForTesting
    protected static Intent a(@NonNull Context context, @Nullable AdReport adReport, @Nullable String str, long j) {
        Intent intent = new Intent(context, (Class<?>) MraidActivity.class);
        intent.putExtra(DataKeys.HTML_RESPONSE_BODY_KEY, str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.addFlags(268435456);
        return intent;
    }

    @Override // com.mopub.mobileads.a
    public View getAdView() {
        String stringExtra = getIntent().getStringExtra(DataKeys.HTML_RESPONSE_BODY_KEY);
        if (stringExtra == null) {
            MoPubLog.w("MraidActivity received a null HTML body. Finishing the activity.");
            finish();
            return new View(this);
        }
        this.f4390b = new MraidController(this, this.f4474a, PlacementType.INTERSTITIAL);
        this.f4390b.setDebugListener(this.c);
        this.f4390b.setMraidListener(new MraidController.MraidListener() { // from class: com.mopub.mobileads.MraidActivity.2
            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onLoaded(View view) {
                MraidActivity.this.f4390b.loadJavascript(a.EnumC0209a.WEB_VIEW_DID_APPEAR.a());
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onFailedToLoad() {
                MoPubLog.d("MraidActivity failed to load. Finishing the activity");
                if (MraidActivity.this.a() != null) {
                    EventForwardingBroadcastReceiver.broadcastAction(MraidActivity.this, MraidActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
                }
                MraidActivity.this.finish();
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onClose() {
                MraidActivity.this.f4390b.loadJavascript(a.EnumC0209a.WEB_VIEW_DID_CLOSE.a());
                MraidActivity.this.finish();
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onExpand() {
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onOpen() {
                if (MraidActivity.this.a() != null) {
                    EventForwardingBroadcastReceiver.broadcastAction(MraidActivity.this, MraidActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
                }
            }
        });
        this.f4390b.setUseCustomCloseListener(new MraidController.UseCustomCloseListener() { // from class: com.mopub.mobileads.MraidActivity.3
            @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
            public void useCustomCloseChanged(boolean useCustomClose) {
                if (useCustomClose) {
                    MraidActivity.this.c();
                } else {
                    MraidActivity.this.b();
                }
            }
        });
        this.f4390b.loadContent(stringExtra);
        return this.f4390b.getAdContainer();
    }

    @Override // com.mopub.mobileads.a, android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (a() != null) {
            EventForwardingBroadcastReceiver.broadcastAction(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
        }
        getWindow().setFlags(ViewCompat.MEASURED_STATE_TOO_SMALL, ViewCompat.MEASURED_STATE_TOO_SMALL);
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.f4390b != null) {
            this.f4390b.pause(isFinishing());
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f4390b != null) {
            this.f4390b.resume();
        }
    }

    @Override // com.mopub.mobileads.a, android.app.Activity
    protected void onDestroy() {
        if (this.f4390b != null) {
            this.f4390b.destroy();
        }
        if (a() != null) {
            EventForwardingBroadcastReceiver.broadcastAction(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        super.onDestroy();
    }

    @VisibleForTesting
    public void setDebugListener(@Nullable MraidWebViewDebugListener debugListener) {
        this.c = debugListener;
        if (this.f4390b != null) {
            this.f4390b.setDebugListener(debugListener);
        }
    }
}
