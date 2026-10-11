package com.google.android.gms.internal;

import com.google.android.gms.internal.zzah;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzadu {

    public static final class zza extends zzapp<zza> {
        public long aCV;
        public zzah.zzj aCW;
        public zzah.zzf zzwr;

        public zza() {
            zzcgx();
        }

        public static zza zzao(byte[] bArr) throws zzapu {
            return (zza) zzapv.zza(new zza(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.aCV != zzaVar.aCV) {
                return false;
            }
            if (this.zzwr == null) {
                if (zzaVar.zzwr != null) {
                    return false;
                }
            } else if (!this.zzwr.equals(zzaVar.zzwr)) {
                return false;
            }
            if (this.aCW == null) {
                if (zzaVar.aCW != null) {
                    return false;
                }
            } else if (!this.aCW.equals(zzaVar.aCW)) {
                return false;
            }
            return (this.bjx == null || this.bjx.isEmpty()) ? zzaVar.bjx == null || zzaVar.bjx.isEmpty() : this.bjx.equals(zzaVar.bjx);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.aCW == null ? 0 : this.aCW.hashCode()) + (((this.zzwr == null ? 0 : this.zzwr.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.aCV ^ (this.aCV >>> 32)))) * 31)) * 31)) * 31;
            if (this.bjx != null && !this.bjx.isEmpty()) {
                i = this.bjx.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            zzapoVar.zzb(1, this.aCV);
            if (this.zzwr != null) {
                zzapoVar.zza(2, this.zzwr);
            }
            if (this.aCW != null) {
                zzapoVar.zza(3, this.aCW);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzas, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.aCV = zzapnVar.ak();
                        break;
                    case 18:
                        if (this.zzwr == null) {
                            this.zzwr = new zzah.zzf();
                        }
                        zzapnVar.zza(this.zzwr);
                        break;
                    case 26:
                        if (this.aCW == null) {
                            this.aCW = new zzah.zzj();
                        }
                        zzapnVar.zza(this.aCW);
                        break;
                    default:
                        if (!super.zza(zzapnVar, ah)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public zza zzcgx() {
            this.aCV = 0L;
            this.zzwr = null;
            this.aCW = null;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx() + zzapo.zze(1, this.aCV);
            if (this.zzwr != null) {
                zzx += zzapo.zzc(2, this.zzwr);
            }
            return this.aCW != null ? zzx + zzapo.zzc(3, this.aCW) : zzx;
        }
    }
}
