package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhd {
    private final boolean zzbqx;
    private final boolean zzbqy;
    private final boolean zzbqz;
    private final boolean zzbra;
    private final boolean zzbrb;

    public static final class zza {
        private boolean zzbqx;
        private boolean zzbqy;
        private boolean zzbqz;
        private boolean zzbra;
        private boolean zzbrb;

        public zzhd zzmy() {
            return new zzhd(this);
        }

        public zza zzt(boolean z) {
            this.zzbqx = z;
            return this;
        }

        public zza zzu(boolean z) {
            this.zzbqy = z;
            return this;
        }

        public zza zzv(boolean z) {
            this.zzbqz = z;
            return this;
        }

        public zza zzw(boolean z) {
            this.zzbra = z;
            return this;
        }

        public zza zzx(boolean z) {
            this.zzbrb = z;
            return this;
        }
    }

    private zzhd(zza zzaVar) {
        this.zzbqx = zzaVar.zzbqx;
        this.zzbqy = zzaVar.zzbqy;
        this.zzbqz = zzaVar.zzbqz;
        this.zzbra = zzaVar.zzbra;
        this.zzbrb = zzaVar.zzbrb;
    }

    public JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzbqx).put("tel", this.zzbqy).put("calendar", this.zzbqz).put("storePicture", this.zzbra).put("inlineVideo", this.zzbrb);
        } catch (JSONException e) {
            zzkd.zzb("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
