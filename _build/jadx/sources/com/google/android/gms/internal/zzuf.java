package com.google.android.gms.internal;

import android.support.v4.view.MotionEventCompat;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzuf {

    public static final class zza extends zzapv {
        private static volatile zza[] amy;
        public zze[] amA;
        public zzb[] amB;
        public Integer amz;

        public zza() {
            zzbve();
        }

        public static zza[] zzbvd() {
            if (amy == null) {
                synchronized (zzapt.bjF) {
                    if (amy == null) {
                        amy = new zza[0];
                    }
                }
            }
            return amy;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.amz == null) {
                if (zzaVar.amz != null) {
                    return false;
                }
            } else if (!this.amz.equals(zzaVar.amz)) {
                return false;
            }
            return zzapt.equals(this.amA, zzaVar.amA) && zzapt.equals(this.amB, zzaVar.amB);
        }

        public int hashCode() {
            return (((((this.amz == null ? 0 : this.amz.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + zzapt.hashCode(this.amA)) * 31) + zzapt.hashCode(this.amB);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amz != null) {
                zzapoVar.zzae(1, this.amz.intValue());
            }
            if (this.amA != null && this.amA.length > 0) {
                for (int i = 0; i < this.amA.length; i++) {
                    zze zzeVar = this.amA[i];
                    if (zzeVar != null) {
                        zzapoVar.zza(2, zzeVar);
                    }
                }
            }
            if (this.amB != null && this.amB.length > 0) {
                for (int i2 = 0; i2 < this.amB.length; i2++) {
                    zzb zzbVar = this.amB[i2];
                    if (zzbVar != null) {
                        zzapoVar.zza(3, zzbVar);
                    }
                }
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzac, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.amz = Integer.valueOf(zzapnVar.al());
                        break;
                    case 18:
                        int zzc = zzapy.zzc(zzapnVar, 18);
                        int length = this.amA == null ? 0 : this.amA.length;
                        zze[] zzeVarArr = new zze[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.amA, 0, zzeVarArr, 0, length);
                        }
                        while (length < zzeVarArr.length - 1) {
                            zzeVarArr[length] = new zze();
                            zzapnVar.zza(zzeVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzeVarArr[length] = new zze();
                        zzapnVar.zza(zzeVarArr[length]);
                        this.amA = zzeVarArr;
                        break;
                    case 26:
                        int zzc2 = zzapy.zzc(zzapnVar, 26);
                        int length2 = this.amB == null ? 0 : this.amB.length;
                        zzb[] zzbVarArr = new zzb[zzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.amB, 0, zzbVarArr, 0, length2);
                        }
                        while (length2 < zzbVarArr.length - 1) {
                            zzbVarArr[length2] = new zzb();
                            zzapnVar.zza(zzbVarArr[length2]);
                            zzapnVar.ah();
                            length2++;
                        }
                        zzbVarArr[length2] = new zzb();
                        zzapnVar.zza(zzbVarArr[length2]);
                        this.amB = zzbVarArr;
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

        public zza zzbve() {
            this.amz = null;
            this.amA = zze.zzbvk();
            this.amB = zzb.zzbvf();
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amz != null) {
                zzx += zzapo.zzag(1, this.amz.intValue());
            }
            if (this.amA != null && this.amA.length > 0) {
                int i = zzx;
                for (int i2 = 0; i2 < this.amA.length; i2++) {
                    zze zzeVar = this.amA[i2];
                    if (zzeVar != null) {
                        i += zzapo.zzc(2, zzeVar);
                    }
                }
                zzx = i;
            }
            if (this.amB != null && this.amB.length > 0) {
                for (int i3 = 0; i3 < this.amB.length; i3++) {
                    zzb zzbVar = this.amB[i3];
                    if (zzbVar != null) {
                        zzx += zzapo.zzc(3, zzbVar);
                    }
                }
            }
            return zzx;
        }
    }

    public static final class zzb extends zzapv {
        private static volatile zzb[] amC;
        public Integer amD;
        public String amE;
        public zzc[] amF;
        public Boolean amG;
        public zzd amH;

        public zzb() {
            zzbvg();
        }

        public static zzb[] zzbvf() {
            if (amC == null) {
                synchronized (zzapt.bjF) {
                    if (amC == null) {
                        amC = new zzb[0];
                    }
                }
            }
            return amC;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.amD == null) {
                if (zzbVar.amD != null) {
                    return false;
                }
            } else if (!this.amD.equals(zzbVar.amD)) {
                return false;
            }
            if (this.amE == null) {
                if (zzbVar.amE != null) {
                    return false;
                }
            } else if (!this.amE.equals(zzbVar.amE)) {
                return false;
            }
            if (!zzapt.equals(this.amF, zzbVar.amF)) {
                return false;
            }
            if (this.amG == null) {
                if (zzbVar.amG != null) {
                    return false;
                }
            } else if (!this.amG.equals(zzbVar.amG)) {
                return false;
            }
            return this.amH == null ? zzbVar.amH == null : this.amH.equals(zzbVar.amH);
        }

        public int hashCode() {
            return (((this.amG == null ? 0 : this.amG.hashCode()) + (((((this.amE == null ? 0 : this.amE.hashCode()) + (((this.amD == null ? 0 : this.amD.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + zzapt.hashCode(this.amF)) * 31)) * 31) + (this.amH != null ? this.amH.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amD != null) {
                zzapoVar.zzae(1, this.amD.intValue());
            }
            if (this.amE != null) {
                zzapoVar.zzr(2, this.amE);
            }
            if (this.amF != null && this.amF.length > 0) {
                for (int i = 0; i < this.amF.length; i++) {
                    zzc zzcVar = this.amF[i];
                    if (zzcVar != null) {
                        zzapoVar.zza(3, zzcVar);
                    }
                }
            }
            if (this.amG != null) {
                zzapoVar.zzj(4, this.amG.booleanValue());
            }
            if (this.amH != null) {
                zzapoVar.zza(5, this.amH);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzad, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.amD = Integer.valueOf(zzapnVar.al());
                        break;
                    case 18:
                        this.amE = zzapnVar.readString();
                        break;
                    case 26:
                        int zzc = zzapy.zzc(zzapnVar, 26);
                        int length = this.amF == null ? 0 : this.amF.length;
                        zzc[] zzcVarArr = new zzc[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.amF, 0, zzcVarArr, 0, length);
                        }
                        while (length < zzcVarArr.length - 1) {
                            zzcVarArr[length] = new zzc();
                            zzapnVar.zza(zzcVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzcVarArr[length] = new zzc();
                        zzapnVar.zza(zzcVarArr[length]);
                        this.amF = zzcVarArr;
                        break;
                    case 32:
                        this.amG = Boolean.valueOf(zzapnVar.an());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        if (this.amH == null) {
                            this.amH = new zzd();
                        }
                        zzapnVar.zza(this.amH);
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

        public zzb zzbvg() {
            this.amD = null;
            this.amE = null;
            this.amF = zzc.zzbvh();
            this.amG = null;
            this.amH = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amD != null) {
                zzx += zzapo.zzag(1, this.amD.intValue());
            }
            if (this.amE != null) {
                zzx += zzapo.zzs(2, this.amE);
            }
            if (this.amF != null && this.amF.length > 0) {
                int i = zzx;
                for (int i2 = 0; i2 < this.amF.length; i2++) {
                    zzc zzcVar = this.amF[i2];
                    if (zzcVar != null) {
                        i += zzapo.zzc(3, zzcVar);
                    }
                }
                zzx = i;
            }
            if (this.amG != null) {
                zzx += zzapo.zzk(4, this.amG.booleanValue());
            }
            return this.amH != null ? zzx + zzapo.zzc(5, this.amH) : zzx;
        }
    }

    public static final class zzc extends zzapv {
        private static volatile zzc[] amI;
        public zzf amJ;
        public zzd amK;
        public Boolean amL;
        public String amM;

        public zzc() {
            zzbvi();
        }

        public static zzc[] zzbvh() {
            if (amI == null) {
                synchronized (zzapt.bjF) {
                    if (amI == null) {
                        amI = new zzc[0];
                    }
                }
            }
            return amI;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.amJ == null) {
                if (zzcVar.amJ != null) {
                    return false;
                }
            } else if (!this.amJ.equals(zzcVar.amJ)) {
                return false;
            }
            if (this.amK == null) {
                if (zzcVar.amK != null) {
                    return false;
                }
            } else if (!this.amK.equals(zzcVar.amK)) {
                return false;
            }
            if (this.amL == null) {
                if (zzcVar.amL != null) {
                    return false;
                }
            } else if (!this.amL.equals(zzcVar.amL)) {
                return false;
            }
            return this.amM == null ? zzcVar.amM == null : this.amM.equals(zzcVar.amM);
        }

        public int hashCode() {
            return (((this.amL == null ? 0 : this.amL.hashCode()) + (((this.amK == null ? 0 : this.amK.hashCode()) + (((this.amJ == null ? 0 : this.amJ.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31) + (this.amM != null ? this.amM.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amJ != null) {
                zzapoVar.zza(1, this.amJ);
            }
            if (this.amK != null) {
                zzapoVar.zza(2, this.amK);
            }
            if (this.amL != null) {
                zzapoVar.zzj(3, this.amL.booleanValue());
            }
            if (this.amM != null) {
                zzapoVar.zzr(4, this.amM);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        if (this.amJ == null) {
                            this.amJ = new zzf();
                        }
                        zzapnVar.zza(this.amJ);
                        break;
                    case 18:
                        if (this.amK == null) {
                            this.amK = new zzd();
                        }
                        zzapnVar.zza(this.amK);
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.amL = Boolean.valueOf(zzapnVar.an());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        this.amM = zzapnVar.readString();
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

        public zzc zzbvi() {
            this.amJ = null;
            this.amK = null;
            this.amL = null;
            this.amM = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amJ != null) {
                zzx += zzapo.zzc(1, this.amJ);
            }
            if (this.amK != null) {
                zzx += zzapo.zzc(2, this.amK);
            }
            if (this.amL != null) {
                zzx += zzapo.zzk(3, this.amL.booleanValue());
            }
            return this.amM != null ? zzx + zzapo.zzs(4, this.amM) : zzx;
        }
    }

    public static final class zzd extends zzapv {
        public Integer amN;
        public Boolean amO;
        public String amP;
        public String amQ;
        public String amR;

        public zzd() {
            zzbvj();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.amN == null) {
                if (zzdVar.amN != null) {
                    return false;
                }
            } else if (!this.amN.equals(zzdVar.amN)) {
                return false;
            }
            if (this.amO == null) {
                if (zzdVar.amO != null) {
                    return false;
                }
            } else if (!this.amO.equals(zzdVar.amO)) {
                return false;
            }
            if (this.amP == null) {
                if (zzdVar.amP != null) {
                    return false;
                }
            } else if (!this.amP.equals(zzdVar.amP)) {
                return false;
            }
            if (this.amQ == null) {
                if (zzdVar.amQ != null) {
                    return false;
                }
            } else if (!this.amQ.equals(zzdVar.amQ)) {
                return false;
            }
            return this.amR == null ? zzdVar.amR == null : this.amR.equals(zzdVar.amR);
        }

        public int hashCode() {
            return (((this.amQ == null ? 0 : this.amQ.hashCode()) + (((this.amP == null ? 0 : this.amP.hashCode()) + (((this.amO == null ? 0 : this.amO.hashCode()) + (((this.amN == null ? 0 : this.amN.intValue()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31) + (this.amR != null ? this.amR.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amN != null) {
                zzapoVar.zzae(1, this.amN.intValue());
            }
            if (this.amO != null) {
                zzapoVar.zzj(2, this.amO.booleanValue());
            }
            if (this.amP != null) {
                zzapoVar.zzr(3, this.amP);
            }
            if (this.amQ != null) {
                zzapoVar.zzr(4, this.amQ);
            }
            if (this.amR != null) {
                zzapoVar.zzr(5, this.amR);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzaf, reason: merged with bridge method [inline-methods] */
        public zzd zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        int al = zzapnVar.al();
                        switch (al) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.amN = Integer.valueOf(al);
                                break;
                        }
                    case 16:
                        this.amO = Boolean.valueOf(zzapnVar.an());
                        break;
                    case 26:
                        this.amP = zzapnVar.readString();
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        this.amQ = zzapnVar.readString();
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        this.amR = zzapnVar.readString();
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

        public zzd zzbvj() {
            this.amO = null;
            this.amP = null;
            this.amQ = null;
            this.amR = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amN != null) {
                zzx += zzapo.zzag(1, this.amN.intValue());
            }
            if (this.amO != null) {
                zzx += zzapo.zzk(2, this.amO.booleanValue());
            }
            if (this.amP != null) {
                zzx += zzapo.zzs(3, this.amP);
            }
            if (this.amQ != null) {
                zzx += zzapo.zzs(4, this.amQ);
            }
            return this.amR != null ? zzx + zzapo.zzs(5, this.amR) : zzx;
        }
    }

    public static final class zze extends zzapv {
        private static volatile zze[] amS;
        public Integer amD;
        public String amT;
        public zzc amU;

        public zze() {
            zzbvl();
        }

        public static zze[] zzbvk() {
            if (amS == null) {
                synchronized (zzapt.bjF) {
                    if (amS == null) {
                        amS = new zze[0];
                    }
                }
            }
            return amS;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.amD == null) {
                if (zzeVar.amD != null) {
                    return false;
                }
            } else if (!this.amD.equals(zzeVar.amD)) {
                return false;
            }
            if (this.amT == null) {
                if (zzeVar.amT != null) {
                    return false;
                }
            } else if (!this.amT.equals(zzeVar.amT)) {
                return false;
            }
            return this.amU == null ? zzeVar.amU == null : this.amU.equals(zzeVar.amU);
        }

        public int hashCode() {
            return (((this.amT == null ? 0 : this.amT.hashCode()) + (((this.amD == null ? 0 : this.amD.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + (this.amU != null ? this.amU.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amD != null) {
                zzapoVar.zzae(1, this.amD.intValue());
            }
            if (this.amT != null) {
                zzapoVar.zzr(2, this.amT);
            }
            if (this.amU != null) {
                zzapoVar.zza(3, this.amU);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzag, reason: merged with bridge method [inline-methods] */
        public zze zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.amD = Integer.valueOf(zzapnVar.al());
                        break;
                    case 18:
                        this.amT = zzapnVar.readString();
                        break;
                    case 26:
                        if (this.amU == null) {
                            this.amU = new zzc();
                        }
                        zzapnVar.zza(this.amU);
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

        public zze zzbvl() {
            this.amD = null;
            this.amT = null;
            this.amU = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amD != null) {
                zzx += zzapo.zzag(1, this.amD.intValue());
            }
            if (this.amT != null) {
                zzx += zzapo.zzs(2, this.amT);
            }
            return this.amU != null ? zzx + zzapo.zzc(3, this.amU) : zzx;
        }
    }

    public static final class zzf extends zzapv {
        public Integer amV;
        public String amW;
        public Boolean amX;
        public String[] amY;

        public zzf() {
            zzbvm();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (this.amV == null) {
                if (zzfVar.amV != null) {
                    return false;
                }
            } else if (!this.amV.equals(zzfVar.amV)) {
                return false;
            }
            if (this.amW == null) {
                if (zzfVar.amW != null) {
                    return false;
                }
            } else if (!this.amW.equals(zzfVar.amW)) {
                return false;
            }
            if (this.amX == null) {
                if (zzfVar.amX != null) {
                    return false;
                }
            } else if (!this.amX.equals(zzfVar.amX)) {
                return false;
            }
            return zzapt.equals(this.amY, zzfVar.amY);
        }

        public int hashCode() {
            return (((((this.amW == null ? 0 : this.amW.hashCode()) + (((this.amV == null ? 0 : this.amV.intValue()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + (this.amX != null ? this.amX.hashCode() : 0)) * 31) + zzapt.hashCode(this.amY);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amV != null) {
                zzapoVar.zzae(1, this.amV.intValue());
            }
            if (this.amW != null) {
                zzapoVar.zzr(2, this.amW);
            }
            if (this.amX != null) {
                zzapoVar.zzj(3, this.amX.booleanValue());
            }
            if (this.amY != null && this.amY.length > 0) {
                for (int i = 0; i < this.amY.length; i++) {
                    String str = this.amY[i];
                    if (str != null) {
                        zzapoVar.zzr(4, str);
                    }
                }
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzah, reason: merged with bridge method [inline-methods] */
        public zzf zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        int al = zzapnVar.al();
                        switch (al) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.amV = Integer.valueOf(al);
                                break;
                        }
                    case 18:
                        this.amW = zzapnVar.readString();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.amX = Boolean.valueOf(zzapnVar.an());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        int zzc = zzapy.zzc(zzapnVar, 34);
                        int length = this.amY == null ? 0 : this.amY.length;
                        String[] strArr = new String[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.amY, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzapnVar.readString();
                            zzapnVar.ah();
                            length++;
                        }
                        strArr[length] = zzapnVar.readString();
                        this.amY = strArr;
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

        public zzf zzbvm() {
            this.amW = null;
            this.amX = null;
            this.amY = zzapy.bjM;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amV != null) {
                zzx += zzapo.zzag(1, this.amV.intValue());
            }
            if (this.amW != null) {
                zzx += zzapo.zzs(2, this.amW);
            }
            if (this.amX != null) {
                zzx += zzapo.zzk(3, this.amX.booleanValue());
            }
            if (this.amY == null || this.amY.length <= 0) {
                return zzx;
            }
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.amY.length; i3++) {
                String str = this.amY[i3];
                if (str != null) {
                    i2++;
                    i += zzapo.zztx(str);
                }
            }
            return zzx + i + (i2 * 1);
        }
    }
}
