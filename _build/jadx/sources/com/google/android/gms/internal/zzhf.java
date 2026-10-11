package com.google.android.gms.internal;

import com.mopub.mobileads.VastIconXmlManager;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhf {
    private final zzlh zzbgf;
    private final String zzbrm;

    public zzhf(zzlh zzlhVar) {
        this(zzlhVar, "");
    }

    public zzhf(zzlh zzlhVar, String str) {
        this.zzbgf = zzlhVar;
        this.zzbrm = str;
    }

    public void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzbgf.zzb("onScreenInfoChanged", new JSONObject().put(VastIconXmlManager.WIDTH, i).put(VastIconXmlManager.HEIGHT, i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5));
        } catch (JSONException e) {
            zzkd.zzb("Error occured while obtaining screen information.", e);
        }
    }

    public void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzbgf.zzb("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put(VastIconXmlManager.WIDTH, i3).put(VastIconXmlManager.HEIGHT, i4));
        } catch (JSONException e) {
            zzkd.zzb("Error occured while dispatching size change.", e);
        }
    }

    public void zzbt(String str) {
        try {
            this.zzbgf.zzb("onError", new JSONObject().put("message", str).put("action", this.zzbrm));
        } catch (JSONException e) {
            zzkd.zzb("Error occurred while dispatching error event.", e);
        }
    }

    public void zzbu(String str) {
        try {
            this.zzbgf.zzb("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            zzkd.zzb("Error occured while dispatching ready Event.", e);
        }
    }

    public void zzbv(String str) {
        try {
            this.zzbgf.zzb("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e) {
            zzkd.zzb("Error occured while dispatching state change.", e);
        }
    }

    public void zzc(int i, int i2, int i3, int i4) {
        try {
            this.zzbgf.zzb("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put(VastIconXmlManager.WIDTH, i3).put(VastIconXmlManager.HEIGHT, i4));
        } catch (JSONException e) {
            zzkd.zzb("Error occured while dispatching default position.", e);
        }
    }
}
