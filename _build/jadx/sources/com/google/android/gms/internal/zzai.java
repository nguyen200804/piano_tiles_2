package com.google.android.gms.internal;

import android.support.v4.view.MotionEventCompat;
import com.google.ads.AdSize;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzai {

    public static final class zza extends zzapp<zza> {
        private static volatile zza[] zzwt;
        public String string;
        public int type;
        public zza[] zzwu;
        public zza[] zzwv;
        public zza[] zzww;
        public String zzwx;
        public String zzwy;
        public long zzwz;
        public boolean zzxa;
        public zza[] zzxb;
        public int[] zzxc;
        public boolean zzxd;

        public zza() {
            zzaq();
        }

        public static zza[] zzap() {
            if (zzwt == null) {
                synchronized (zzapt.bjF) {
                    if (zzwt == null) {
                        zzwt = new zza[0];
                    }
                }
            }
            return zzwt;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.type != zzaVar.type) {
                return false;
            }
            if (this.string == null) {
                if (zzaVar.string != null) {
                    return false;
                }
            } else if (!this.string.equals(zzaVar.string)) {
                return false;
            }
            if (!zzapt.equals(this.zzwu, zzaVar.zzwu) || !zzapt.equals(this.zzwv, zzaVar.zzwv) || !zzapt.equals(this.zzww, zzaVar.zzww)) {
                return false;
            }
            if (this.zzwx == null) {
                if (zzaVar.zzwx != null) {
                    return false;
                }
            } else if (!this.zzwx.equals(zzaVar.zzwx)) {
                return false;
            }
            if (this.zzwy == null) {
                if (zzaVar.zzwy != null) {
                    return false;
                }
            } else if (!this.zzwy.equals(zzaVar.zzwy)) {
                return false;
            }
            if (this.zzwz == zzaVar.zzwz && this.zzxa == zzaVar.zzxa && zzapt.equals(this.zzxb, zzaVar.zzxb) && zzapt.equals(this.zzxc, zzaVar.zzxc) && this.zzxd == zzaVar.zzxd) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzaVar.bjx == null || zzaVar.bjx.isEmpty() : this.bjx.equals(zzaVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((((this.zzxa ? 1231 : 1237) + (((((this.zzwy == null ? 0 : this.zzwy.hashCode()) + (((this.zzwx == null ? 0 : this.zzwx.hashCode()) + (((((((((this.string == null ? 0 : this.string.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.type) * 31)) * 31) + zzapt.hashCode(this.zzwu)) * 31) + zzapt.hashCode(this.zzwv)) * 31) + zzapt.hashCode(this.zzww)) * 31)) * 31)) * 31) + ((int) (this.zzwz ^ (this.zzwz >>> 32)))) * 31)) * 31) + zzapt.hashCode(this.zzxb)) * 31) + zzapt.hashCode(this.zzxc)) * 31) + (this.zzxd ? 1231 : 1237)) * 31;
            if (this.bjx != null && !this.bjx.isEmpty()) {
                i = this.bjx.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            zzapoVar.zzae(1, this.type);
            if (!this.string.equals("")) {
                zzapoVar.zzr(2, this.string);
            }
            if (this.zzwu != null && this.zzwu.length > 0) {
                for (int i = 0; i < this.zzwu.length; i++) {
                    zza zzaVar = this.zzwu[i];
                    if (zzaVar != null) {
                        zzapoVar.zza(3, zzaVar);
                    }
                }
            }
            if (this.zzwv != null && this.zzwv.length > 0) {
                for (int i2 = 0; i2 < this.zzwv.length; i2++) {
                    zza zzaVar2 = this.zzwv[i2];
                    if (zzaVar2 != null) {
                        zzapoVar.zza(4, zzaVar2);
                    }
                }
            }
            if (this.zzww != null && this.zzww.length > 0) {
                for (int i3 = 0; i3 < this.zzww.length; i3++) {
                    zza zzaVar3 = this.zzww[i3];
                    if (zzaVar3 != null) {
                        zzapoVar.zza(5, zzaVar3);
                    }
                }
            }
            if (!this.zzwx.equals("")) {
                zzapoVar.zzr(6, this.zzwx);
            }
            if (!this.zzwy.equals("")) {
                zzapoVar.zzr(7, this.zzwy);
            }
            if (this.zzwz != 0) {
                zzapoVar.zzb(8, this.zzwz);
            }
            if (this.zzxd) {
                zzapoVar.zzj(9, this.zzxd);
            }
            if (this.zzxc != null && this.zzxc.length > 0) {
                for (int i4 = 0; i4 < this.zzxc.length; i4++) {
                    zzapoVar.zzae(10, this.zzxc[i4]);
                }
            }
            if (this.zzxb != null && this.zzxb.length > 0) {
                for (int i5 = 0; i5 < this.zzxb.length; i5++) {
                    zza zzaVar4 = this.zzxb[i5];
                    if (zzaVar4 != null) {
                        zzapoVar.zza(11, zzaVar4);
                    }
                }
            }
            if (this.zzxa) {
                zzapoVar.zzj(12, this.zzxa);
            }
            super.zza(zzapoVar);
        }

        public zza zzaq() {
            this.type = 1;
            this.string = "";
            this.zzwu = zzap();
            this.zzwv = zzap();
            this.zzww = zzap();
            this.zzwx = "";
            this.zzwy = "";
            this.zzwz = 0L;
            this.zzxa = false;
            this.zzxb = zzap();
            this.zzxc = zzapy.bjH;
            this.zzxd = false;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzt, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzapn zzapnVar) throws IOException {
            int i;
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        int al = zzapnVar.al();
                        switch (al) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                this.type = al;
                                break;
                        }
                    case 18:
                        this.string = zzapnVar.readString();
                        break;
                    case 26:
                        int zzc = zzapy.zzc(zzapnVar, 26);
                        int length = this.zzwu == null ? 0 : this.zzwu.length;
                        zza[] zzaVarArr = new zza[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzwu, 0, zzaVarArr, 0, length);
                        }
                        while (length < zzaVarArr.length - 1) {
                            zzaVarArr[length] = new zza();
                            zzapnVar.zza(zzaVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzaVarArr[length] = new zza();
                        zzapnVar.zza(zzaVarArr[length]);
                        this.zzwu = zzaVarArr;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        int zzc2 = zzapy.zzc(zzapnVar, 34);
                        int length2 = this.zzwv == null ? 0 : this.zzwv.length;
                        zza[] zzaVarArr2 = new zza[zzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzwv, 0, zzaVarArr2, 0, length2);
                        }
                        while (length2 < zzaVarArr2.length - 1) {
                            zzaVarArr2[length2] = new zza();
                            zzapnVar.zza(zzaVarArr2[length2]);
                            zzapnVar.ah();
                            length2++;
                        }
                        zzaVarArr2[length2] = new zza();
                        zzapnVar.zza(zzaVarArr2[length2]);
                        this.zzwv = zzaVarArr2;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        int zzc3 = zzapy.zzc(zzapnVar, 42);
                        int length3 = this.zzww == null ? 0 : this.zzww.length;
                        zza[] zzaVarArr3 = new zza[zzc3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzww, 0, zzaVarArr3, 0, length3);
                        }
                        while (length3 < zzaVarArr3.length - 1) {
                            zzaVarArr3[length3] = new zza();
                            zzapnVar.zza(zzaVarArr3[length3]);
                            zzapnVar.ah();
                            length3++;
                        }
                        zzaVarArr3[length3] = new zza();
                        zzapnVar.zza(zzaVarArr3[length3]);
                        this.zzww = zzaVarArr3;
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        this.zzwx = zzapnVar.readString();
                        break;
                    case 58:
                        this.zzwy = zzapnVar.readString();
                        break;
                    case 64:
                        this.zzwz = zzapnVar.ak();
                        break;
                    case DrawableConstants.GradientStrip.GRADIENT_STRIP_HEIGHT_DIPS /* 72 */:
                        this.zzxd = zzapnVar.an();
                        break;
                    case 80:
                        int zzc4 = zzapy.zzc(zzapnVar, 80);
                        int[] iArr = new int[zzc4];
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < zzc4) {
                            if (i2 != 0) {
                                zzapnVar.ah();
                            }
                            int al2 = zzapnVar.al();
                            switch (al2) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                case 16:
                                case 17:
                                    i = i3 + 1;
                                    iArr[i3] = al2;
                                    break;
                                default:
                                    i = i3;
                                    break;
                            }
                            i2++;
                            i3 = i;
                        }
                        if (i3 != 0) {
                            int length4 = this.zzxc == null ? 0 : this.zzxc.length;
                            if (length4 != 0 || i3 != zzc4) {
                                int[] iArr2 = new int[length4 + i3];
                                if (length4 != 0) {
                                    System.arraycopy(this.zzxc, 0, iArr2, 0, length4);
                                }
                                System.arraycopy(iArr, 0, iArr2, length4, i3);
                                this.zzxc = iArr2;
                                break;
                            } else {
                                this.zzxc = iArr;
                                break;
                            }
                        } else {
                            break;
                        }
                    case 82:
                        int zzafr = zzapnVar.zzafr(zzapnVar.aq());
                        int position = zzapnVar.getPosition();
                        int i4 = 0;
                        while (zzapnVar.av() > 0) {
                            switch (zzapnVar.al()) {
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                case 16:
                                case 17:
                                    i4++;
                                    break;
                            }
                        }
                        if (i4 != 0) {
                            zzapnVar.zzaft(position);
                            int length5 = this.zzxc == null ? 0 : this.zzxc.length;
                            int[] iArr3 = new int[i4 + length5];
                            if (length5 != 0) {
                                System.arraycopy(this.zzxc, 0, iArr3, 0, length5);
                            }
                            while (zzapnVar.av() > 0) {
                                int al3 = zzapnVar.al();
                                switch (al3) {
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                    case 16:
                                    case 17:
                                        iArr3[length5] = al3;
                                        length5++;
                                        break;
                                }
                            }
                            this.zzxc = iArr3;
                        }
                        zzapnVar.zzafs(zzafr);
                        break;
                    case AdSize.LARGE_AD_HEIGHT /* 90 */:
                        int zzc5 = zzapy.zzc(zzapnVar, 90);
                        int length6 = this.zzxb == null ? 0 : this.zzxb.length;
                        zza[] zzaVarArr4 = new zza[zzc5 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzxb, 0, zzaVarArr4, 0, length6);
                        }
                        while (length6 < zzaVarArr4.length - 1) {
                            zzaVarArr4[length6] = new zza();
                            zzapnVar.zza(zzaVarArr4[length6]);
                            zzapnVar.ah();
                            length6++;
                        }
                        zzaVarArr4[length6] = new zza();
                        zzapnVar.zza(zzaVarArr4[length6]);
                        this.zzxb = zzaVarArr4;
                        break;
                    case 96:
                        this.zzxa = zzapnVar.an();
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

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx() + zzapo.zzag(1, this.type);
            if (!this.string.equals("")) {
                zzx += zzapo.zzs(2, this.string);
            }
            if (this.zzwu != null && this.zzwu.length > 0) {
                int i = zzx;
                for (int i2 = 0; i2 < this.zzwu.length; i2++) {
                    zza zzaVar = this.zzwu[i2];
                    if (zzaVar != null) {
                        i += zzapo.zzc(3, zzaVar);
                    }
                }
                zzx = i;
            }
            if (this.zzwv != null && this.zzwv.length > 0) {
                int i3 = zzx;
                for (int i4 = 0; i4 < this.zzwv.length; i4++) {
                    zza zzaVar2 = this.zzwv[i4];
                    if (zzaVar2 != null) {
                        i3 += zzapo.zzc(4, zzaVar2);
                    }
                }
                zzx = i3;
            }
            if (this.zzww != null && this.zzww.length > 0) {
                int i5 = zzx;
                for (int i6 = 0; i6 < this.zzww.length; i6++) {
                    zza zzaVar3 = this.zzww[i6];
                    if (zzaVar3 != null) {
                        i5 += zzapo.zzc(5, zzaVar3);
                    }
                }
                zzx = i5;
            }
            if (!this.zzwx.equals("")) {
                zzx += zzapo.zzs(6, this.zzwx);
            }
            if (!this.zzwy.equals("")) {
                zzx += zzapo.zzs(7, this.zzwy);
            }
            if (this.zzwz != 0) {
                zzx += zzapo.zze(8, this.zzwz);
            }
            if (this.zzxd) {
                zzx += zzapo.zzk(9, this.zzxd);
            }
            if (this.zzxc != null && this.zzxc.length > 0) {
                int i7 = 0;
                for (int i8 = 0; i8 < this.zzxc.length; i8++) {
                    i7 += zzapo.zzafx(this.zzxc[i8]);
                }
                zzx = zzx + i7 + (this.zzxc.length * 1);
            }
            if (this.zzxb != null && this.zzxb.length > 0) {
                for (int i9 = 0; i9 < this.zzxb.length; i9++) {
                    zza zzaVar4 = this.zzxb[i9];
                    if (zzaVar4 != null) {
                        zzx += zzapo.zzc(11, zzaVar4);
                    }
                }
            }
            return this.zzxa ? zzx + zzapo.zzk(12, this.zzxa) : zzx;
        }
    }
}
