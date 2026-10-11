package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.mopub.common.AdFormat;
import com.mopub.common.AdReport;
import com.mopub.common.AdType;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.dg.adapi.DGAdApi;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.mopub.nativesdk.SDK;
import com.mopub.network.AdRequest;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.JsonObjectRequest;
import com.mopub.volley.toolbox.Volley;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdViewController {

    /* renamed from: b, reason: collision with root package name */
    private static final FrameLayout.LayoutParams f4342b = new FrameLayout.LayoutParams(-2, -2, 17);
    private static final WeakHashMap<View, Boolean> c = new WeakHashMap<>();

    @Nullable
    private String A;

    @Nullable
    private AdRequest C;

    @Nullable
    private Context e;

    @Nullable
    private MoPubView f;

    @Nullable
    private WebViewAdUrlGenerator g;

    @Nullable
    private AdResponse h;

    @Nullable
    private String i;
    private boolean l;
    private boolean n;
    private String o;
    private SharedPreferences s;
    private String t;
    private String u;
    private String v;
    private boolean w;
    private Location x;
    private boolean y;
    private boolean z;

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    int f4343a = 1;
    private Map<String, Object> p = new HashMap();
    private boolean q = true;
    private boolean r = true;
    private int B = -1;
    private final long d = Utils.generateUniqueId();

    @NonNull
    private final AdRequest.Listener k = new AdRequest.Listener() { // from class: com.mopub.mobileads.AdViewController.1
        @Override // com.mopub.network.AdRequest.Listener
        public void onSuccess(AdResponse response) {
            AdViewController.this.a(response);
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            AdViewController.this.a(volleyError);
        }
    };
    private final Runnable j = new Runnable() { // from class: com.mopub.mobileads.AdViewController.3
        @Override // java.lang.Runnable
        public void run() {
            AdViewController.this.m();
        }
    };

    @Nullable
    private Integer D = 60000;
    private Handler m = new Handler();

    public static void setShouldHonorServerDimensions(View view) {
        c.put(view, true);
    }

    private static boolean b(View view) {
        return c.get(view) != null;
    }

    public AdViewController(@NonNull Context context, @NonNull MoPubView view) {
        this.e = context;
        this.f = view;
        this.g = new WebViewAdUrlGenerator(this.e.getApplicationContext(), MraidNativeCommandHandler.isStorePictureSupported(this.e));
        this.s = SharedPreferencesHelper.getSharedPreferences(this.e);
    }

    @VisibleForTesting
    void a(@NonNull AdResponse adResponse) {
        this.f4343a = 1;
        this.h = adResponse;
        this.i = adResponse.getCustomEventClassName();
        this.B = this.h.getAdTimeoutMillis() == null ? this.B : this.h.getAdTimeoutMillis().intValue();
        this.D = this.h.getRefreshTimeMillis();
        a();
        a(this.f, adResponse.getCustomEventClassName(), adResponse.getServerExtras());
        j();
    }

    @VisibleForTesting
    void a(VolleyError volleyError) {
        if (volleyError instanceof MoPubNetworkError) {
            MoPubNetworkError moPubNetworkError = (MoPubNetworkError) volleyError;
            if (moPubNetworkError.getRefreshTimeMillis() != null) {
                this.D = moPubNetworkError.getRefreshTimeMillis();
            }
        }
        MoPubErrorCode a2 = a(volleyError, this.e);
        if (a2 == MoPubErrorCode.SERVER_ERROR) {
            this.f4343a++;
        }
        a();
        b(a2);
    }

    @VisibleForTesting
    void a(@Nullable MoPubView moPubView, @Nullable String str, @NonNull Map<String, String> map) {
        Preconditions.checkNotNull(map);
        if (moPubView == null) {
            MoPubLog.d("Can't load an ad in this ad view because it was destroyed.");
        } else {
            moPubView.a(str, map);
        }
    }

    @NonNull
    @VisibleForTesting
    static MoPubErrorCode a(@NonNull VolleyError volleyError, @Nullable Context context) {
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (volleyError instanceof MoPubNetworkError) {
            switch (((MoPubNetworkError) volleyError).getReason()) {
                case WARMING_UP:
                    return MoPubErrorCode.WARMUP;
                case NO_FILL:
                    return MoPubErrorCode.NO_FILL;
                default:
                    return MoPubErrorCode.UNSPECIFIED;
            }
        }
        if (networkResponse == null) {
            if (!DeviceUtils.isNetworkAvailable(context)) {
                return MoPubErrorCode.NO_CONNECTION;
            }
            return MoPubErrorCode.UNSPECIFIED;
        }
        if (volleyError.networkResponse.statusCode >= 400) {
            return MoPubErrorCode.SERVER_ERROR;
        }
        return MoPubErrorCode.UNSPECIFIED;
    }

    @Nullable
    public MoPubView getMoPubView() {
        return this.f;
    }

    public void loadAd() {
        this.f4343a = 1;
        if (this.f.getAdFormat() == AdFormat.INTERSTITIAL) {
            if (System.currentTimeMillis() < this.s.getLong("expires", 0L)) {
                this.v = this.s.getString("hb_url", null);
                this.w = this.s.getBoolean("enable", false);
                if (this.w) {
                    MoPubLog.d("MEnabled=true");
                    ClientMetadata clientMetadata = ClientMetadata.getInstance(this.e);
                    a(clientMetadata);
                    b(clientMetadata);
                    return;
                }
                return;
            }
            MoPubLog.d("Load remote config");
            l();
            return;
        }
        MoPubLog.d("Not interstitial - calling internal loadAd");
        m();
    }

    private void l() {
        Volley.newRequestQueue(this.e).add(new JsonObjectRequest(0, "http://mpc.cmcm.com/conf", null, new Response.Listener<JSONObject>() { // from class: com.mopub.mobileads.AdViewController.4
            @Override // com.mopub.volley.Response.Listener
            public void onResponse(JSONObject response) {
                try {
                    JSONObject jSONObject = (JSONObject) response.get("conf");
                    AdViewController.this.u = (String) jSONObject.get("cfurl");
                    AdViewController.this.v = (String) jSONObject.get("adurl");
                    AdViewController.this.w = jSONObject.get("enable").equals(1);
                    MoPubLog.d(String.format("AdUnit: %s\nUDID: %s\nConfig URL: %s\nHB URL: %s\nMEnabled: %s", AdViewController.this.A, ClientMetadata.getInstance(AdViewController.this.e).getDeviceId(), AdViewController.this.u, AdViewController.this.v, Boolean.valueOf(AdViewController.this.w)));
                    SharedPreferences.Editor edit = AdViewController.this.s.edit();
                    edit.putLong("expires", System.currentTimeMillis() + TimeUnit.HOURS.toMillis(24L));
                    edit.putBoolean("enable", AdViewController.this.w);
                    edit.putString("cf_url", AdViewController.this.u);
                    edit.putString("hb_url", AdViewController.this.v);
                    edit.apply();
                    if (AdViewController.this.w) {
                        ClientMetadata clientMetadata = ClientMetadata.getInstance(AdViewController.this.e);
                        AdViewController.this.a(clientMetadata);
                        AdViewController.this.b(clientMetadata);
                    }
                } catch (JSONException e) {
                    AdViewController.this.m();
                }
            }
        }, new Response.ErrorListener() { // from class: com.mopub.mobileads.AdViewController.5
            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError error) {
                MoPubLog.d("Remote Config error: " + error.getMessage());
                AdViewController.this.m();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final ClientMetadata clientMetadata) {
        if (System.currentTimeMillis() > this.s.getLong("cf_expires", 0L)) {
            Volley.newRequestQueue(this.e).add(new JsonObjectRequest(0, this.u, null, new Response.Listener<JSONObject>() { // from class: com.mopub.mobileads.AdViewController.6
                @Override // com.mopub.volley.Response.Listener
                public void onResponse(JSONObject response) {
                    try {
                        JSONArray jSONArray = (JSONArray) response.get("mpconf");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String optString = jSONObject.optString("key", "");
                            String optString2 = jSONObject.optString("st", "");
                            String optString3 = jSONObject.optString("et", "");
                            String substring = clientMetadata.getDeviceId().substring(r6.length() - 1);
                            String optString4 = jSONObject.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
                            String optString5 = jSONObject.optString("appid", "");
                            MoPubLog.d(String.format("HB Load Config: key: %s, st: %s, et: %s, last_gaid: %s, pubid: %s, appid: %s", optString, optString2, optString3, substring, optString4, optString5));
                            if (Integer.parseInt(optString2, 16) <= Integer.parseInt(substring, 16) && Integer.parseInt(substring, 16) <= Integer.parseInt(optString3, 16)) {
                                if (optString.equalsIgnoreCase("dg")) {
                                    DGAdApi.init(AdViewController.this.e, optString4, optString5);
                                    DGAdApi.getInstance(AdViewController.this.e);
                                }
                                if (optString.equalsIgnoreCase("ark")) {
                                    SDK.init(AdViewController.this.e, "", "", null);
                                }
                            }
                            long currentTimeMillis = System.currentTimeMillis() + TimeUnit.HOURS.toMillis(6L);
                            SharedPreferences.Editor edit = AdViewController.this.s.edit();
                            edit.putLong("cf_expires", currentTimeMillis);
                            edit.apply();
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }, new Response.ErrorListener() { // from class: com.mopub.mobileads.AdViewController.7
                @Override // com.mopub.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError error) {
                    MoPubLog.d("HB Config error: " + error.getMessage());
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ClientMetadata clientMetadata) {
        try {
            StringBuilder append = new StringBuilder().append(this.v);
            Object[] objArr = new Object[7];
            objArr[0] = clientMetadata.getDeviceId();
            objArr[1] = clientMetadata.getDeviceOsVersion();
            objArr[2] = URLEncoder.encode(clientMetadata.getDeviceManufacturer(), AudienceNetworkActivity.WEBVIEW_ENCODING);
            objArr[3] = URLEncoder.encode(clientMetadata.getDeviceModel(), AudienceNetworkActivity.WEBVIEW_ENCODING);
            objArr[4] = Integer.valueOf(clientMetadata.getActiveNetworkType().equals(ClientMetadata.MoPubNetworkType.WIFI) ? 1 : 0);
            objArr[5] = clientMetadata.getDeviceId();
            objArr[6] = clientMetadata.getDeviceScreenHeightDip() + "*" + clientMetadata.getDeviceScreenWidthDip();
            this.v = append.append(String.format("mupid=%s&ov=%s&brand=%s&model=%s&nt=%s&gaid=%s&resolution=%s", objArr)).toString();
        } catch (UnsupportedEncodingException e) {
            MoPubLog.d("Bad HB URL:" + this.v);
        }
        Volley.newRequestQueue(this.e).add(new JsonObjectRequest(0, this.v, null, new Response.Listener<JSONObject>() { // from class: com.mopub.mobileads.AdViewController.8
            @Override // com.mopub.volley.Response.Listener
            public void onResponse(JSONObject response) {
                try {
                    String str = new String(Base64.decode(((JSONObject) ((JSONArray) response.get("ads")).get(0)).get(AdType.HTML).toString(), 0), "UTF-8");
                    MoPubLog.d("HB creative found" + str);
                    HashMap hashMap = new HashMap();
                    hashMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, str);
                    hashMap.put(DataKeys.SCROLLABLE_KEY, "0");
                    hashMap.put(DataKeys.REDIRECT_URL_KEY, "");
                    hashMap.put(DataKeys.CLICKTHROUGH_URL_KEY, "");
                    hashMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, "p");
                    AdResponse.Builder builder = new AdResponse.Builder();
                    builder.setAdUnitId(AdViewController.this.A);
                    AdViewController.this.h = builder.build();
                    AdViewController.this.f.a("com.mopub.mobileads.HtmlInterstitial", hashMap);
                } catch (UnsupportedEncodingException | JSONException e2) {
                    AdViewController.this.m();
                }
            }
        }, new Response.ErrorListener() { // from class: com.mopub.mobileads.AdViewController.9
            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                AdViewController.this.m();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        this.z = true;
        if (TextUtils.isEmpty(this.A)) {
            MoPubLog.d("Can't load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?");
        } else if (!o()) {
            MoPubLog.d("Can't load an ad because there is no network connectivity.");
            j();
        } else {
            a(i());
        }
    }

    void a(@Nullable String str) {
        if (str != null) {
            if (!str.startsWith("javascript:")) {
                MoPubLog.d("Loading url: " + str);
            }
            if (this.n) {
                if (!TextUtils.isEmpty(this.A)) {
                    MoPubLog.i("Already loading an ad for " + this.A + ", wait to finish.");
                }
            } else {
                this.o = str;
                this.n = true;
                b(this.o);
            }
        }
    }

    public void reload() {
        MoPubLog.d("Reload ad: " + this.o);
        a(this.o);
    }

    boolean a(MoPubErrorCode moPubErrorCode) {
        this.n = false;
        Log.v("MoPub", "MoPubErrorCode: " + (moPubErrorCode == null ? "" : moPubErrorCode.toString()));
        String failoverUrl = this.h == null ? "" : this.h.getFailoverUrl();
        if (!TextUtils.isEmpty(failoverUrl)) {
            MoPubLog.d("Loading failover url: " + failoverUrl);
            a(failoverUrl);
            return true;
        }
        b(MoPubErrorCode.NO_FILL);
        return false;
    }

    void a() {
        this.n = false;
        if (this.C != null) {
            if (!this.C.isCanceled()) {
                this.C.cancel();
            }
            this.C = null;
        }
    }

    public String getKeywords() {
        return this.t;
    }

    public void setKeywords(String keywords) {
        this.t = keywords;
    }

    public Location getLocation() {
        return this.x;
    }

    public void setLocation(Location location) {
        this.x = location;
    }

    public String getAdUnitId() {
        return this.A;
    }

    @Nullable
    public String getCustomEventClassName() {
        return this.i;
    }

    public void setAdUnitId(@NonNull String adUnitId) {
        this.A = adUnitId;
    }

    public long getBroadcastIdentifier() {
        return this.d;
    }

    public int getAdWidth() {
        if (this.h == null || this.h.getWidth() == null) {
            return 0;
        }
        return this.h.getWidth().intValue();
    }

    public int getAdHeight() {
        if (this.h == null || this.h.getHeight() == null) {
            return 0;
        }
        return this.h.getHeight().intValue();
    }

    @Deprecated
    public boolean getAutorefreshEnabled() {
        return getCurrentAutoRefreshStatus();
    }

    public boolean getCurrentAutoRefreshStatus() {
        return this.q;
    }

    void b() {
        b(false);
    }

    void c() {
        if (this.r) {
            b(true);
        }
    }

    void a(boolean z) {
        this.r = z;
        b(z);
    }

    private void b(boolean z) {
        if (this.z && this.q != z) {
            MoPubLog.d("Refresh " + (z ? "enabled" : "disabled") + " for ad unit (" + this.A + ").");
        }
        this.q = z;
        if (this.z && this.q) {
            j();
        } else if (!this.q) {
            n();
        }
    }

    @Nullable
    public AdReport getAdReport() {
        if (this.A == null || this.h == null) {
            return null;
        }
        return new AdReport(this.A, ClientMetadata.getInstance(this.e), this.h);
    }

    public boolean getTesting() {
        return this.y;
    }

    public void setTesting(boolean enabled) {
        this.y = enabled;
    }

    void d() {
        if (!this.l) {
            if (this.C != null) {
                this.C.cancel();
                this.C = null;
            }
            b(false);
            n();
            this.f = null;
            this.e = null;
            this.g = null;
            this.l = true;
        }
    }

    Integer e() {
        return Integer.valueOf(this.B);
    }

    void f() {
        if (this.h != null) {
            TrackingRequest.makeTrackingHttpRequest(this.h.getImpressionTrackingUrl(), this.e, BaseEvent.Name.IMPRESSION_REQUEST);
        }
    }

    void g() {
        if (this.h != null) {
            TrackingRequest.makeTrackingHttpRequest(this.h.getClickTrackingUrl(), this.e, BaseEvent.Name.CLICK_REQUEST);
        }
    }

    void b(String str) {
        MoPubView moPubView = getMoPubView();
        if (moPubView == null || this.e == null) {
            MoPubLog.d("Can't load an ad in this ad view because it was destroyed.");
            a();
        } else {
            AdRequest adRequest = new AdRequest(str, moPubView.getAdFormat(), this.A, this.e, this.k);
            Networking.getRequestQueue(this.e).add(adRequest);
            this.C = adRequest;
        }
    }

    void h() {
        a();
    }

    @Nullable
    String i() {
        if (this.g == null) {
            return null;
        }
        return this.g.withAdUnitId(this.A).withKeywords(this.t).withLocation(this.x).generateUrlString(Constants.HOST);
    }

    void b(MoPubErrorCode moPubErrorCode) {
        MoPubLog.i("Ad failed to load.");
        a();
        MoPubView moPubView = getMoPubView();
        if (moPubView != null) {
            j();
            moPubView.a(moPubErrorCode);
        }
    }

    void j() {
        n();
        if (this.q && this.D != null && this.D.intValue() > 0) {
            this.m.postDelayed(this.j, Math.min(600000L, this.D.intValue() * ((long) Math.pow(1.5d, this.f4343a))));
        }
    }

    void a(Map<String, Object> map) {
        this.p = map != null ? new TreeMap(map) : new TreeMap();
    }

    Map<String, Object> k() {
        return this.p != null ? new TreeMap(this.p) : new TreeMap();
    }

    private void n() {
        this.m.removeCallbacks(this.j);
    }

    private boolean o() {
        if (this.e == null) {
            return false;
        }
        if (!DeviceUtils.isPermissionGranted(this.e, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        ((ConnectivityManager) this.e.getSystemService("connectivity")).getActiveNetworkInfo();
        NetworkInfo networkInfo = null;
        return 0 != 0 && networkInfo.isConnected();
    }

    void a(final View view) {
        this.m.post(new Runnable() { // from class: com.mopub.mobileads.AdViewController.10
            @Override // java.lang.Runnable
            public void run() {
                MoPubView moPubView = AdViewController.this.getMoPubView();
                if (moPubView != null) {
                    moPubView.removeAllViews();
                    moPubView.addView(view, AdViewController.this.c(view));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FrameLayout.LayoutParams c(View view) {
        Integer num;
        Integer num2 = null;
        if (this.h != null) {
            num = this.h.getWidth();
            num2 = this.h.getHeight();
        } else {
            num = null;
        }
        return (num == null || num2 == null || !b(view) || num.intValue() <= 0 || num2.intValue() <= 0) ? f4342b : new FrameLayout.LayoutParams(Dips.asIntPixels(num.intValue(), this.e), Dips.asIntPixels(num2.intValue(), this.e), 17);
    }
}
