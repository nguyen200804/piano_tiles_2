package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.ads.internal.zzf;
import com.google.android.gms.internal.zzdr;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzge;
import com.google.android.gms.internal.zzgn;
import com.google.android.gms.internal.zzgo;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzlh;
import com.google.android.gms.internal.zzli;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzn {
    private static com.google.android.gms.ads.internal.formats.zzd zza(zzgn zzgnVar) throws RemoteException {
        return new com.google.android.gms.ads.internal.formats.zzd(zzgnVar.getHeadline(), zzgnVar.getImages(), zzgnVar.getBody(), zzgnVar.zzku(), zzgnVar.getCallToAction(), zzgnVar.getStarRating(), zzgnVar.getStore(), zzgnVar.getPrice(), null, zzgnVar.getExtras());
    }

    private static com.google.android.gms.ads.internal.formats.zze zza(zzgo zzgoVar) throws RemoteException {
        return new com.google.android.gms.ads.internal.formats.zze(zzgoVar.getHeadline(), zzgoVar.getImages(), zzgoVar.getBody(), zzgoVar.zzky(), zzgoVar.getCallToAction(), zzgoVar.getAdvertiser(), null, zzgoVar.getExtras());
    }

    static zzep zza(@Nullable final zzgn zzgnVar, @Nullable final zzgo zzgoVar, final zzf.zza zzaVar) {
        return new zzep() { // from class: com.google.android.gms.ads.internal.zzn.5
            @Override // com.google.android.gms.internal.zzep
            public void zza(zzlh zzlhVar, Map<String, String> map) {
                View view = zzlhVar.getView();
                if (view == null) {
                    return;
                }
                try {
                    if (zzgn.this != null) {
                        if (zzgn.this.getOverrideClickHandling()) {
                            zzn.zza(zzlhVar);
                        } else {
                            zzgn.this.zzk(com.google.android.gms.dynamic.zze.zzac(view));
                            zzaVar.onClick();
                        }
                    } else if (zzgoVar != null) {
                        if (zzgoVar.getOverrideClickHandling()) {
                            zzn.zza(zzlhVar);
                        } else {
                            zzgoVar.zzk(com.google.android.gms.dynamic.zze.zzac(view));
                            zzaVar.onClick();
                        }
                    }
                } catch (RemoteException e) {
                    zzkd.zzd("Unable to call handleClick on mapper", e);
                }
            }
        };
    }

    static zzep zza(final CountDownLatch countDownLatch) {
        return new zzep() { // from class: com.google.android.gms.ads.internal.zzn.3
            @Override // com.google.android.gms.internal.zzep
            public void zza(zzlh zzlhVar, Map<String, String> map) {
                countDownLatch.countDown();
                zzlhVar.getView().setVisibility(0);
            }
        };
    }

    private static String zza(@Nullable Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            zzkd.zzcx("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String valueOf = String.valueOf("data:image/png;base64,");
        String valueOf2 = String.valueOf(encodeToString);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    static String zza(@Nullable zzdr zzdrVar) {
        if (zzdrVar == null) {
            zzkd.zzcx("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uri = zzdrVar.getUri();
            if (uri != null) {
                return uri.toString();
            }
        } catch (RemoteException e) {
            zzkd.zzcx("Unable to get image uri. Trying data uri next");
        }
        return zzb(zzdrVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject zza(@Nullable Bundle bundle, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (bundle.containsKey(next)) {
                if ("image".equals(jSONObject2.getString(next))) {
                    Object obj = bundle.get(next);
                    if (obj instanceof Bitmap) {
                        jSONObject.put(next, zza((Bitmap) obj));
                    } else {
                        zzkd.zzcx("Invalid type. An image type extra should return a bitmap");
                    }
                } else if (bundle.get(next) instanceof Bitmap) {
                    zzkd.zzcx("Invalid asset type. Bitmap should be returned only for image type");
                } else {
                    jSONObject.put(next, String.valueOf(bundle.get(next)));
                }
            }
        }
        return jSONObject;
    }

    public static void zza(@Nullable zzju zzjuVar, zzf.zza zzaVar) {
        if (zzjuVar == null || !zzg(zzjuVar)) {
            return;
        }
        zzlh zzlhVar = zzjuVar.zzbtm;
        View view = zzlhVar != null ? zzlhVar.getView() : null;
        if (view == null) {
            zzkd.zzcx("AdWebView is null");
            return;
        }
        try {
            List<String> list = zzjuVar.zzbon != null ? zzjuVar.zzbon.zzbni : null;
            if (list == null || list.isEmpty()) {
                zzkd.zzcx("No template ids present in mediation response");
                return;
            }
            zzgn zzmo = zzjuVar.zzboo != null ? zzjuVar.zzboo.zzmo() : null;
            zzgo zzmp = zzjuVar.zzboo != null ? zzjuVar.zzboo.zzmp() : null;
            if (list.contains("2") && zzmo != null) {
                zzmo.zzl(com.google.android.gms.dynamic.zze.zzac(view));
                if (!zzmo.getOverrideImpressionRecording()) {
                    zzmo.recordImpression();
                }
                zzlhVar.zzuj().zza("/nativeExpressViewClicked", zza(zzmo, (zzgo) null, zzaVar));
                return;
            }
            if (!list.contains("1") || zzmp == null) {
                zzkd.zzcx("No matching template id and mapper");
                return;
            }
            zzmp.zzl(com.google.android.gms.dynamic.zze.zzac(view));
            if (!zzmp.getOverrideImpressionRecording()) {
                zzmp.recordImpression();
            }
            zzlhVar.zzuj().zza("/nativeExpressViewClicked", zza((zzgn) null, zzmp, zzaVar));
        } catch (RemoteException e) {
            zzkd.zzd("Error occurred while recording impression and registering for clicks", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(zzlh zzlhVar) {
        View.OnClickListener zzuw = zzlhVar.zzuw();
        if (zzuw != null) {
            zzuw.onClick(zzlhVar.getView());
        }
    }

    private static void zza(final zzlh zzlhVar, final com.google.android.gms.ads.internal.formats.zzd zzdVar, final String str) {
        zzlhVar.zzuj().zza(new zzli.zza() { // from class: com.google.android.gms.ads.internal.zzn.1
            @Override // com.google.android.gms.internal.zzli.zza
            public void zza(zzlh zzlhVar2, boolean z) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("headline", com.google.android.gms.ads.internal.formats.zzd.this.getHeadline());
                    jSONObject.put("body", com.google.android.gms.ads.internal.formats.zzd.this.getBody());
                    jSONObject.put("call_to_action", com.google.android.gms.ads.internal.formats.zzd.this.getCallToAction());
                    jSONObject.put(InAppPurchaseMetaData.KEY_PRICE, com.google.android.gms.ads.internal.formats.zzd.this.getPrice());
                    jSONObject.put("star_rating", String.valueOf(com.google.android.gms.ads.internal.formats.zzd.this.getStarRating()));
                    jSONObject.put("store", com.google.android.gms.ads.internal.formats.zzd.this.getStore());
                    jSONObject.put("icon", zzn.zza(com.google.android.gms.ads.internal.formats.zzd.this.zzku()));
                    JSONArray jSONArray = new JSONArray();
                    List images = com.google.android.gms.ads.internal.formats.zzd.this.getImages();
                    if (images != null) {
                        Iterator it = images.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(zzn.zza(zzn.zze(it.next())));
                        }
                    }
                    jSONObject.put("images", jSONArray);
                    jSONObject.put("extras", zzn.zza(com.google.android.gms.ads.internal.formats.zzd.this.getExtras(), str));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("assets", jSONObject);
                    jSONObject2.put("template_id", "2");
                    zzlhVar.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
                } catch (JSONException e) {
                    zzkd.zzd("Exception occurred when loading assets", e);
                }
            }
        });
    }

    private static void zza(final zzlh zzlhVar, final com.google.android.gms.ads.internal.formats.zze zzeVar, final String str) {
        zzlhVar.zzuj().zza(new zzli.zza() { // from class: com.google.android.gms.ads.internal.zzn.2
            @Override // com.google.android.gms.internal.zzli.zza
            public void zza(zzlh zzlhVar2, boolean z) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("headline", com.google.android.gms.ads.internal.formats.zze.this.getHeadline());
                    jSONObject.put("body", com.google.android.gms.ads.internal.formats.zze.this.getBody());
                    jSONObject.put("call_to_action", com.google.android.gms.ads.internal.formats.zze.this.getCallToAction());
                    jSONObject.put("advertiser", com.google.android.gms.ads.internal.formats.zze.this.getAdvertiser());
                    jSONObject.put("logo", zzn.zza(com.google.android.gms.ads.internal.formats.zze.this.zzky()));
                    JSONArray jSONArray = new JSONArray();
                    List images = com.google.android.gms.ads.internal.formats.zze.this.getImages();
                    if (images != null) {
                        Iterator it = images.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(zzn.zza(zzn.zze(it.next())));
                        }
                    }
                    jSONObject.put("images", jSONArray);
                    jSONObject.put("extras", zzn.zza(com.google.android.gms.ads.internal.formats.zze.this.getExtras(), str));
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("assets", jSONObject);
                    jSONObject2.put("template_id", "1");
                    zzlhVar.zza("google.afma.nativeExpressAds.loadAssets", jSONObject2);
                } catch (JSONException e) {
                    zzkd.zzd("Exception occurred when loading assets", e);
                }
            }
        });
    }

    private static void zza(zzlh zzlhVar, CountDownLatch countDownLatch) {
        zzlhVar.zzuj().zza("/nativeExpressAssetsLoaded", zza(countDownLatch));
        zzlhVar.zzuj().zza("/nativeExpressAssetsLoadingFailed", zzb(countDownLatch));
    }

    public static boolean zza(zzlh zzlhVar, zzge zzgeVar, CountDownLatch countDownLatch) {
        boolean z = false;
        try {
            z = zzb(zzlhVar, zzgeVar, countDownLatch);
        } catch (RemoteException e) {
            zzkd.zzd("Unable to invoke load assets", e);
        } catch (RuntimeException e2) {
            countDownLatch.countDown();
            throw e2;
        }
        if (!z) {
            countDownLatch.countDown();
        }
        return z;
    }

    static zzep zzb(final CountDownLatch countDownLatch) {
        return new zzep() { // from class: com.google.android.gms.ads.internal.zzn.4
            @Override // com.google.android.gms.internal.zzep
            public void zza(zzlh zzlhVar, Map<String, String> map) {
                zzkd.zzcx("Adapter returned an ad, but assets substitution failed");
                countDownLatch.countDown();
                zzlhVar.destroy();
            }
        };
    }

    private static String zzb(zzdr zzdrVar) {
        String zza;
        try {
            com.google.android.gms.dynamic.zzd zzkt = zzdrVar.zzkt();
            if (zzkt == null) {
                zzkd.zzcx("Drawable is null. Returning empty string");
                zza = "";
            } else {
                Drawable drawable = (Drawable) com.google.android.gms.dynamic.zze.zzad(zzkt);
                if (drawable instanceof BitmapDrawable) {
                    zza = zza(((BitmapDrawable) drawable).getBitmap());
                } else {
                    zzkd.zzcx("Drawable is not an instance of BitmapDrawable. Returning empty string");
                    zza = "";
                }
            }
            return zza;
        } catch (RemoteException e) {
            zzkd.zzcx("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    private static boolean zzb(zzlh zzlhVar, zzge zzgeVar, CountDownLatch countDownLatch) throws RemoteException {
        View view = zzlhVar.getView();
        if (view == null) {
            zzkd.zzcx("AdWebView is null");
            return false;
        }
        view.setVisibility(4);
        List<String> list = zzgeVar.zzbon.zzbni;
        if (list == null || list.isEmpty()) {
            zzkd.zzcx("No template ids present in mediation response");
            return false;
        }
        zza(zzlhVar, countDownLatch);
        zzgn zzmo = zzgeVar.zzboo.zzmo();
        zzgo zzmp = zzgeVar.zzboo.zzmp();
        if (list.contains("2") && zzmo != null) {
            zza(zzlhVar, zza(zzmo), zzgeVar.zzbon.zzbnh);
        } else {
            if (!list.contains("1") || zzmp == null) {
                zzkd.zzcx("No matching template id and mapper");
                return false;
            }
            zza(zzlhVar, zza(zzmp), zzgeVar.zzbon.zzbnh);
        }
        String str = zzgeVar.zzbon.zzbnf;
        String str2 = zzgeVar.zzbon.zzbng;
        if (str2 != null) {
            zzlhVar.loadDataWithBaseURL(str2, str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
        } else {
            zzlhVar.loadData(str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8");
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static zzdr zze(Object obj) {
        if (obj instanceof IBinder) {
            return zzdr.zza.zzy((IBinder) obj);
        }
        return null;
    }

    @Nullable
    public static View zzf(@Nullable zzju zzjuVar) {
        if (zzjuVar == null) {
            zzkd.e("AdState is null");
            return null;
        }
        if (zzg(zzjuVar) && zzjuVar.zzbtm != null) {
            return zzjuVar.zzbtm.getView();
        }
        try {
            com.google.android.gms.dynamic.zzd view = zzjuVar.zzboo != null ? zzjuVar.zzboo.getView() : null;
            if (view != null) {
                return (View) com.google.android.gms.dynamic.zze.zzad(view);
            }
            zzkd.zzcx("View in mediation adapter is null.");
            return null;
        } catch (RemoteException e) {
            zzkd.zzd("Could not get View from mediation adapter.", e);
            return null;
        }
    }

    public static boolean zzg(@Nullable zzju zzjuVar) {
        return (zzjuVar == null || !zzjuVar.zzcby || zzjuVar.zzbon == null || zzjuVar.zzbon.zzbnf == null) ? false : true;
    }
}
