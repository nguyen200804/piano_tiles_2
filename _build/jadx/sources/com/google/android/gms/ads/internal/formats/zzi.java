package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzas;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzih;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzlh;
import com.google.android.gms.internal.zzli;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzi implements zzh {
    private final Context mContext;

    @Nullable
    private final VersionInfoParcel zzalo;
    private final zzq zzbfx;

    @Nullable
    private final JSONObject zzbga;

    @Nullable
    private final zzih zzbgb;

    @Nullable
    private final zzh.zza zzbgc;
    private final zzas zzbgd;
    private boolean zzbge;
    private zzlh zzbgf;
    private String zzbgg;

    @Nullable
    private String zzbgh;
    private final Object zzail = new Object();
    private WeakReference<View> zzbgi = null;

    /* renamed from: com.google.android.gms.ads.internal.formats.zzi$3, reason: invalid class name */
    class AnonymousClass3 extends zzih.zza {
        AnonymousClass3() {
        }

        @Override // com.google.android.gms.internal.zzih.zza
        public void zze(final zzft zzftVar) {
            zzftVar.zza("/loadHtml", new zzep() { // from class: com.google.android.gms.ads.internal.formats.zzi.3.1
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, final Map<String, String> map) {
                    zzi.this.zzbgf.zzuj().zza(new zzli.zza() { // from class: com.google.android.gms.ads.internal.formats.zzi.3.1.1
                        @Override // com.google.android.gms.internal.zzli.zza
                        public void zza(zzlh zzlhVar2, boolean z) {
                            zzi.this.zzbgg = (String) map.get(FacebookAdapter.KEY_ID);
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("messageType", "htmlLoaded");
                                jSONObject.put(FacebookAdapter.KEY_ID, zzi.this.zzbgg);
                                zzftVar.zzb("sendMessageToNativeJs", jSONObject);
                            } catch (JSONException e) {
                                zzkd.zzb("Unable to dispatch sendMessageToNativeJs event", e);
                            }
                        }
                    });
                    String str = map.get("overlayHtml");
                    String str2 = map.get("baseUrl");
                    if (TextUtils.isEmpty(str2)) {
                        zzi.this.zzbgf.loadData(str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8");
                    } else {
                        zzi.this.zzbgf.loadDataWithBaseURL(str2, str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
                    }
                }
            });
            zzftVar.zza("/showOverlay", new zzep() { // from class: com.google.android.gms.ads.internal.formats.zzi.3.2
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    zzi.this.zzbgf.getView().setVisibility(0);
                }
            });
            zzftVar.zza("/hideOverlay", new zzep() { // from class: com.google.android.gms.ads.internal.formats.zzi.3.3
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    zzi.this.zzbgf.getView().setVisibility(8);
                }
            });
            zzi.this.zzbgf.zzuj().zza("/hideOverlay", new zzep() { // from class: com.google.android.gms.ads.internal.formats.zzi.3.4
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    zzi.this.zzbgf.getView().setVisibility(8);
                }
            });
            zzi.this.zzbgf.zzuj().zza("/sendMessageToSdk", new zzep() { // from class: com.google.android.gms.ads.internal.formats.zzi.3.5
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        for (String str : map.keySet()) {
                            jSONObject.put(str, map.get(str));
                        }
                        jSONObject.put(FacebookAdapter.KEY_ID, zzi.this.zzbgg);
                        zzftVar.zzb("sendMessageToNativeJs", jSONObject);
                    } catch (JSONException e) {
                        zzkd.zzb("Unable to dispatch sendMessageToNativeJs event", e);
                    }
                }
            });
        }
    }

    public zzi(Context context, zzq zzqVar, @Nullable zzih zzihVar, zzas zzasVar, @Nullable JSONObject jSONObject, @Nullable zzh.zza zzaVar, @Nullable VersionInfoParcel versionInfoParcel, @Nullable String str) {
        this.mContext = context;
        this.zzbfx = zzqVar;
        this.zzbgb = zzihVar;
        this.zzbgd = zzasVar;
        this.zzbga = jSONObject;
        this.zzbgc = zzaVar;
        this.zzalo = versionInfoParcel;
        this.zzbgh = str;
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void recordImpression() {
        zzab.zzhi("recordImpression must be called on the main UI thread.");
        zzq(true);
        try {
            final JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.zzbga);
            jSONObject.put("ads_id", this.zzbgh);
            this.zzbgb.zza(new zzih.zza() { // from class: com.google.android.gms.ads.internal.formats.zzi.2
                @Override // com.google.android.gms.internal.zzih.zza
                public void zze(zzft zzftVar) {
                    zzftVar.zza("google.afma.nativeAds.handleImpressionPing", jSONObject);
                }
            });
        } catch (JSONException e) {
            zzkd.zzb("Unable to create impression JSON.", e);
        }
        this.zzbfx.zza(this);
    }

    public zzb zza(View.OnClickListener onClickListener) {
        zza zzkx = this.zzbgc.zzkx();
        if (zzkx == null) {
            return null;
        }
        zzb zzbVar = new zzb(this.mContext, zzkx);
        zzbVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        zzbVar.zzks().setOnClickListener(onClickListener);
        zzbVar.zzks().setContentDescription("Ad attribution icon");
        return zzbVar;
    }

    public void zza(View view, Map<String, WeakReference<View>> map, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        if (zzdc.zzbci.get().booleanValue()) {
            view.setOnTouchListener(onTouchListener);
            view.setClickable(true);
            view.setOnClickListener(onClickListener);
            Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = it.next().getValue().get();
                if (view2 != null) {
                    view2.setOnTouchListener(onTouchListener);
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void zza(View view, Map<String, WeakReference<View>> map, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        zzab.zzhi("performClick must be called on the main UI thread.");
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            if (view.equals(entry.getValue().get())) {
                zza(entry.getKey(), jSONObject, jSONObject2, jSONObject3);
                return;
            }
        }
        if ("2".equals(this.zzbgc.zzkw())) {
            zza("2099", jSONObject, jSONObject2, jSONObject3);
        } else if ("1".equals(this.zzbgc.zzkw())) {
            zza("1099", jSONObject, jSONObject2, jSONObject3);
        }
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void zza(String str, @Nullable JSONObject jSONObject, @Nullable JSONObject jSONObject2, @Nullable JSONObject jSONObject3) {
        zzab.zzhi("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("asset", str);
            jSONObject4.put("template", this.zzbgc.zzkw());
            final JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("ad", this.zzbga);
            jSONObject5.put("click", jSONObject4);
            jSONObject5.put("has_custom_click_handler", this.zzbfx.zzv(this.zzbgc.getCustomTemplateId()) != null);
            if (jSONObject != null) {
                jSONObject5.put("view_rectangles", jSONObject);
            }
            if (jSONObject2 != null) {
                jSONObject5.put("click_point", jSONObject2);
            }
            if (jSONObject3 != null) {
                jSONObject5.put("native_view_rectangle", jSONObject3);
            }
            try {
                JSONObject optJSONObject = this.zzbga.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                jSONObject4.put("click_signals", this.zzbgd.zzaw().zzb(this.mContext, optJSONObject.optString("click_string")));
            } catch (Exception e) {
                zzkd.zzb("Exception obtaining click signals", e);
            }
            jSONObject5.put("ads_id", this.zzbgh);
            this.zzbgb.zza(new zzih.zza() { // from class: com.google.android.gms.ads.internal.formats.zzi.1
                @Override // com.google.android.gms.internal.zzih.zza
                public void zze(zzft zzftVar) {
                    zzftVar.zza("google.afma.nativeAds.handleClickGmsg", jSONObject5);
                }
            });
        } catch (JSONException e2) {
            zzkd.zzb("Unable to create click JSON.", e2);
        }
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void zzb(MotionEvent motionEvent) {
        this.zzbgd.zza(motionEvent);
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void zzb(View view, Map<String, WeakReference<View>> map) {
        view.setOnTouchListener(null);
        view.setClickable(false);
        view.setOnClickListener(null);
        Iterator<Map.Entry<String, WeakReference<View>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            View view2 = it.next().getValue().get();
            if (view2 != null) {
                view2.setOnTouchListener(null);
                view2.setClickable(false);
                view2.setOnClickListener(null);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void zzg(View view) {
        synchronized (this.zzail) {
            if (this.zzbge) {
                return;
            }
            if (view.isShown()) {
                if (view.getGlobalVisibleRect(new Rect(), null)) {
                    recordImpression();
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public void zzh(View view) {
        this.zzbgi = new WeakReference<>(view);
    }

    public zzlh zzlb() {
        this.zzbgf = zzld();
        this.zzbgf.getView().setVisibility(8);
        this.zzbgb.zza(new AnonymousClass3());
        return this.zzbgf;
    }

    @Override // com.google.android.gms.ads.internal.formats.zzh
    public View zzlc() {
        if (this.zzbgi != null) {
            return this.zzbgi.get();
        }
        return null;
    }

    zzlh zzld() {
        return zzu.zzfr().zza(this.mContext, AdSizeParcel.zzk(this.mContext), false, false, this.zzbgd, this.zzalo);
    }

    protected void zzq(boolean z) {
        this.zzbge = z;
    }
}
