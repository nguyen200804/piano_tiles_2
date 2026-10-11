package com.google.android.gms.internal;

import android.support.v4.view.MotionEventCompat;
import com.google.ads.AdSize;
import com.google.android.gms.internal.zzuf;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzug {

    public static final class zza extends zzapv {
        private static volatile zza[] amZ;
        public Boolean ana;
        public Boolean anb;
        public String name;

        public zza() {
            zzbvo();
        }

        public static zza[] zzbvn() {
            if (amZ == null) {
                synchronized (zzapt.bjF) {
                    if (amZ == null) {
                        amZ = new zza[0];
                    }
                }
            }
            return amZ;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.name == null) {
                if (zzaVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzaVar.name)) {
                return false;
            }
            if (this.ana == null) {
                if (zzaVar.ana != null) {
                    return false;
                }
            } else if (!this.ana.equals(zzaVar.ana)) {
                return false;
            }
            return this.anb == null ? zzaVar.anb == null : this.anb.equals(zzaVar.anb);
        }

        public int hashCode() {
            return (((this.ana == null ? 0 : this.ana.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + (this.anb != null ? this.anb.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.name != null) {
                zzapoVar.zzr(1, this.name);
            }
            if (this.ana != null) {
                zzapoVar.zzj(2, this.ana.booleanValue());
            }
            if (this.anb != null) {
                zzapoVar.zzj(3, this.anb.booleanValue());
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzai, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzapnVar.readString();
                        break;
                    case 16:
                        this.ana = Boolean.valueOf(zzapnVar.an());
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.anb = Boolean.valueOf(zzapnVar.an());
                        break;
                    default:
                        if (!zzapy.zzb(zzapnVar, ah)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public zza zzbvo() {
            this.name = null;
            this.ana = null;
            this.anb = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.name != null) {
                zzx += zzapo.zzs(1, this.name);
            }
            if (this.ana != null) {
                zzx += zzapo.zzk(2, this.ana.booleanValue());
            }
            return this.anb != null ? zzx + zzapo.zzk(3, this.anb.booleanValue()) : zzx;
        }
    }

    public static final class zzb extends zzapv {
        public String aic;
        public Long anc;
        public Integer and;
        public zzc[] ane;
        public zza[] anf;
        public zzuf.zza[] ang;

        public zzb() {
            zzbvp();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.anc == null) {
                if (zzbVar.anc != null) {
                    return false;
                }
            } else if (!this.anc.equals(zzbVar.anc)) {
                return false;
            }
            if (this.aic == null) {
                if (zzbVar.aic != null) {
                    return false;
                }
            } else if (!this.aic.equals(zzbVar.aic)) {
                return false;
            }
            if (this.and == null) {
                if (zzbVar.and != null) {
                    return false;
                }
            } else if (!this.and.equals(zzbVar.and)) {
                return false;
            }
            return zzapt.equals(this.ane, zzbVar.ane) && zzapt.equals(this.anf, zzbVar.anf) && zzapt.equals(this.ang, zzbVar.ang);
        }

        public int hashCode() {
            return (((((((((this.aic == null ? 0 : this.aic.hashCode()) + (((this.anc == null ? 0 : this.anc.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + (this.and != null ? this.and.hashCode() : 0)) * 31) + zzapt.hashCode(this.ane)) * 31) + zzapt.hashCode(this.anf)) * 31) + zzapt.hashCode(this.ang);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.anc != null) {
                zzapoVar.zzb(1, this.anc.longValue());
            }
            if (this.aic != null) {
                zzapoVar.zzr(2, this.aic);
            }
            if (this.and != null) {
                zzapoVar.zzae(3, this.and.intValue());
            }
            if (this.ane != null && this.ane.length > 0) {
                for (int i = 0; i < this.ane.length; i++) {
                    zzc zzcVar = this.ane[i];
                    if (zzcVar != null) {
                        zzapoVar.zza(4, zzcVar);
                    }
                }
            }
            if (this.anf != null && this.anf.length > 0) {
                for (int i2 = 0; i2 < this.anf.length; i2++) {
                    zza zzaVar = this.anf[i2];
                    if (zzaVar != null) {
                        zzapoVar.zza(5, zzaVar);
                    }
                }
            }
            if (this.ang != null && this.ang.length > 0) {
                for (int i3 = 0; i3 < this.ang.length; i3++) {
                    zzuf.zza zzaVar2 = this.ang[i3];
                    if (zzaVar2 != null) {
                        zzapoVar.zza(6, zzaVar2);
                    }
                }
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzaj, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.anc = Long.valueOf(zzapnVar.ak());
                        break;
                    case 18:
                        this.aic = zzapnVar.readString();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.and = Integer.valueOf(zzapnVar.al());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        int zzc = zzapy.zzc(zzapnVar, 34);
                        int length = this.ane == null ? 0 : this.ane.length;
                        zzc[] zzcVarArr = new zzc[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.ane, 0, zzcVarArr, 0, length);
                        }
                        while (length < zzcVarArr.length - 1) {
                            zzcVarArr[length] = new zzc();
                            zzapnVar.zza(zzcVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzcVarArr[length] = new zzc();
                        zzapnVar.zza(zzcVarArr[length]);
                        this.ane = zzcVarArr;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        int zzc2 = zzapy.zzc(zzapnVar, 42);
                        int length2 = this.anf == null ? 0 : this.anf.length;
                        zza[] zzaVarArr = new zza[zzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.anf, 0, zzaVarArr, 0, length2);
                        }
                        while (length2 < zzaVarArr.length - 1) {
                            zzaVarArr[length2] = new zza();
                            zzapnVar.zza(zzaVarArr[length2]);
                            zzapnVar.ah();
                            length2++;
                        }
                        zzaVarArr[length2] = new zza();
                        zzapnVar.zza(zzaVarArr[length2]);
                        this.anf = zzaVarArr;
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        int zzc3 = zzapy.zzc(zzapnVar, 50);
                        int length3 = this.ang == null ? 0 : this.ang.length;
                        zzuf.zza[] zzaVarArr2 = new zzuf.zza[zzc3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.ang, 0, zzaVarArr2, 0, length3);
                        }
                        while (length3 < zzaVarArr2.length - 1) {
                            zzaVarArr2[length3] = new zzuf.zza();
                            zzapnVar.zza(zzaVarArr2[length3]);
                            zzapnVar.ah();
                            length3++;
                        }
                        zzaVarArr2[length3] = new zzuf.zza();
                        zzapnVar.zza(zzaVarArr2[length3]);
                        this.ang = zzaVarArr2;
                        break;
                    default:
                        if (!zzapy.zzb(zzapnVar, ah)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public zzb zzbvp() {
            this.anc = null;
            this.aic = null;
            this.and = null;
            this.ane = zzc.zzbvq();
            this.anf = zza.zzbvn();
            this.ang = zzuf.zza.zzbvd();
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.anc != null) {
                zzx += zzapo.zze(1, this.anc.longValue());
            }
            if (this.aic != null) {
                zzx += zzapo.zzs(2, this.aic);
            }
            if (this.and != null) {
                zzx += zzapo.zzag(3, this.and.intValue());
            }
            if (this.ane != null && this.ane.length > 0) {
                int i = zzx;
                for (int i2 = 0; i2 < this.ane.length; i2++) {
                    zzc zzcVar = this.ane[i2];
                    if (zzcVar != null) {
                        i += zzapo.zzc(4, zzcVar);
                    }
                }
                zzx = i;
            }
            if (this.anf != null && this.anf.length > 0) {
                int i3 = zzx;
                for (int i4 = 0; i4 < this.anf.length; i4++) {
                    zza zzaVar = this.anf[i4];
                    if (zzaVar != null) {
                        i3 += zzapo.zzc(5, zzaVar);
                    }
                }
                zzx = i3;
            }
            if (this.ang != null && this.ang.length > 0) {
                for (int i5 = 0; i5 < this.ang.length; i5++) {
                    zzuf.zza zzaVar2 = this.ang[i5];
                    if (zzaVar2 != null) {
                        zzx += zzapo.zzc(6, zzaVar2);
                    }
                }
            }
            return zzx;
        }
    }

    public static final class zzc extends zzapv {
        private static volatile zzc[] anh;
        public String value;
        public String zzcb;

        public zzc() {
            zzbvr();
        }

        public static zzc[] zzbvq() {
            if (anh == null) {
                synchronized (zzapt.bjF) {
                    if (anh == null) {
                        anh = new zzc[0];
                    }
                }
            }
            return anh;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.zzcb == null) {
                if (zzcVar.zzcb != null) {
                    return false;
                }
            } else if (!this.zzcb.equals(zzcVar.zzcb)) {
                return false;
            }
            return this.value == null ? zzcVar.value == null : this.value.equals(zzcVar.value);
        }

        public int hashCode() {
            return (((this.zzcb == null ? 0 : this.zzcb.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + (this.value != null ? this.value.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzcb != null) {
                zzapoVar.zzr(1, this.zzcb);
            }
            if (this.value != null) {
                zzapoVar.zzr(2, this.value);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzak, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        this.zzcb = zzapnVar.readString();
                        break;
                    case 18:
                        this.value = zzapnVar.readString();
                        break;
                    default:
                        if (!zzapy.zzb(zzapnVar, ah)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        public zzc zzbvr() {
            this.zzcb = null;
            this.value = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.zzcb != null) {
                zzx += zzapo.zzs(1, this.zzcb);
            }
            return this.value != null ? zzx + zzapo.zzs(2, this.value) : zzx;
        }
    }
}
