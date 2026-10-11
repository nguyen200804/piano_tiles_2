package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubConversionTracker {

    /* renamed from: a, reason: collision with root package name */
    private Context f4375a;

    /* renamed from: b, reason: collision with root package name */
    private String f4376b;
    private SharedPreferences c;
    private String d;

    public void reportAppOpen(Context context) {
        if (context != null) {
            this.f4375a = context;
            this.d = this.f4375a.getPackageName();
            this.f4376b = this.d + " tracked";
            this.c = SharedPreferencesHelper.getSharedPreferences(this.f4375a);
            if (!a()) {
                TrackingRequest.makeTrackingHttpRequest(new a().generateUrlString(Constants.HOST), this.f4375a, new TrackingRequest.Listener() { // from class: com.mopub.mobileads.MoPubConversionTracker.1
                    @Override // com.mopub.network.TrackingRequest.Listener
                    public void onResponse(@NonNull String url) {
                        MoPubConversionTracker.this.c.edit().putBoolean(MoPubConversionTracker.this.f4376b, true).commit();
                    }

                    @Override // com.mopub.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError volleyError) {
                    }
                });
            } else {
                MoPubLog.d("Conversion already tracked");
            }
        }
    }

    private boolean a() {
        return this.c.getBoolean(this.f4376b, false);
    }

    private class a extends BaseUrlGenerator {
        private a() {
        }

        @Override // com.mopub.common.BaseUrlGenerator
        public String generateUrlString(String serverHostname) {
            a(serverHostname, Constants.CONVERSION_TRACKING_HANDLER);
            k("6");
            a(MoPubConversionTracker.this.d);
            l(ClientMetadata.getInstance(MoPubConversionTracker.this.f4375a).getAppVersion());
            b();
            return a();
        }

        private void a(String str) {
            b(FacebookAdapter.KEY_ID, str);
        }
    }
}
