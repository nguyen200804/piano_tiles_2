package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import com.google.ads.AdSize;
import com.google.android.gms.internal.zzai;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzah {

    public static final class zza extends zzapp<zza> {
        public int level;
        public int zzun;
        public int zzuo;

        public zza() {
            zzaa();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.level == zzaVar.level && this.zzun == zzaVar.zzun && this.zzuo == zzaVar.zzuo) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzaVar.bjx == null || zzaVar.bjx.isEmpty() : this.bjx.equals(zzaVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bjx == null || this.bjx.isEmpty()) ? 0 : this.bjx.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + this.level) * 31) + this.zzun) * 31) + this.zzuo) * 31);
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.level != 1) {
                zzapoVar.zzae(1, this.level);
            }
            if (this.zzun != 0) {
                zzapoVar.zzae(2, this.zzun);
            }
            if (this.zzuo != 0) {
                zzapoVar.zzae(3, this.zzuo);
            }
            super.zza(zzapoVar);
        }

        public zza zzaa() {
            this.level = 1;
            this.zzun = 0;
            this.zzuo = 0;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzapn zzapnVar) throws IOException {
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
                                this.level = al;
                                break;
                        }
                    case 16:
                        this.zzun = zzapnVar.al();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.zzuo = zzapnVar.al();
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
            int zzx = super.zzx();
            if (this.level != 1) {
                zzx += zzapo.zzag(1, this.level);
            }
            if (this.zzun != 0) {
                zzx += zzapo.zzag(2, this.zzun);
            }
            return this.zzuo != 0 ? zzx + zzapo.zzag(3, this.zzuo) : zzx;
        }
    }

    public static final class zzb extends zzapp<zzb> {
        private static volatile zzb[] zzup;
        public int name;
        public int[] zzuq;
        public int zzur;
        public boolean zzus;
        public boolean zzut;

        public zzb() {
            zzac();
        }

        public static zzb[] zzab() {
            if (zzup == null) {
                synchronized (zzapt.bjF) {
                    if (zzup == null) {
                        zzup = new zzb[0];
                    }
                }
            }
            return zzup;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (zzapt.equals(this.zzuq, zzbVar.zzuq) && this.zzur == zzbVar.zzur && this.name == zzbVar.name && this.zzus == zzbVar.zzus && this.zzut == zzbVar.zzut) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzbVar.bjx == null || zzbVar.bjx.isEmpty() : this.bjx.equals(zzbVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bjx == null || this.bjx.isEmpty()) ? 0 : this.bjx.hashCode()) + (((((this.zzus ? 1231 : 1237) + ((((((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.zzuq)) * 31) + this.zzur) * 31) + this.name) * 31)) * 31) + (this.zzut ? 1231 : 1237)) * 31);
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzut) {
                zzapoVar.zzj(1, this.zzut);
            }
            zzapoVar.zzae(2, this.zzur);
            if (this.zzuq != null && this.zzuq.length > 0) {
                for (int i = 0; i < this.zzuq.length; i++) {
                    zzapoVar.zzae(3, this.zzuq[i]);
                }
            }
            if (this.name != 0) {
                zzapoVar.zzae(4, this.name);
            }
            if (this.zzus) {
                zzapoVar.zzj(6, this.zzus);
            }
            super.zza(zzapoVar);
        }

        public zzb zzac() {
            this.zzuq = zzapy.bjH;
            this.zzur = 0;
            this.name = 0;
            this.zzus = false;
            this.zzut = false;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.zzut = zzapnVar.an();
                        break;
                    case 16:
                        this.zzur = zzapnVar.al();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        int zzc = zzapy.zzc(zzapnVar, 24);
                        int length = this.zzuq == null ? 0 : this.zzuq.length;
                        int[] iArr = new int[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzuq, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzapnVar.al();
                            zzapnVar.ah();
                            length++;
                        }
                        iArr[length] = zzapnVar.al();
                        this.zzuq = iArr;
                        break;
                    case 26:
                        int zzafr = zzapnVar.zzafr(zzapnVar.aq());
                        int position = zzapnVar.getPosition();
                        int i = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i++;
                        }
                        zzapnVar.zzaft(position);
                        int length2 = this.zzuq == null ? 0 : this.zzuq.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzuq, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzapnVar.al();
                            length2++;
                        }
                        this.zzuq = iArr2;
                        zzapnVar.zzafs(zzafr);
                        break;
                    case 32:
                        this.name = zzapnVar.al();
                        break;
                    case 48:
                        this.zzus = zzapnVar.an();
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
            int i;
            int i2 = 0;
            int zzx = super.zzx();
            if (this.zzut) {
                zzx += zzapo.zzk(1, this.zzut);
            }
            int zzag = zzapo.zzag(2, this.zzur) + zzx;
            if (this.zzuq == null || this.zzuq.length <= 0) {
                i = zzag;
            } else {
                for (int i3 = 0; i3 < this.zzuq.length; i3++) {
                    i2 += zzapo.zzafx(this.zzuq[i3]);
                }
                i = zzag + i2 + (this.zzuq.length * 1);
            }
            if (this.name != 0) {
                i += zzapo.zzag(4, this.name);
            }
            return this.zzus ? i + zzapo.zzk(6, this.zzus) : i;
        }
    }

    public static final class zzc extends zzapp<zzc> {
        private static volatile zzc[] zzuu;
        public String zzcb;
        public long zzuv;
        public long zzuw;
        public boolean zzux;
        public long zzuy;

        public zzc() {
            zzae();
        }

        public static zzc[] zzad() {
            if (zzuu == null) {
                synchronized (zzapt.bjF) {
                    if (zzuu == null) {
                        zzuu = new zzc[0];
                    }
                }
            }
            return zzuu;
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
            if (this.zzuv == zzcVar.zzuv && this.zzuw == zzcVar.zzuw && this.zzux == zzcVar.zzux && this.zzuy == zzcVar.zzuy) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzcVar.bjx == null || zzcVar.bjx.isEmpty() : this.bjx.equals(zzcVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((this.zzux ? 1231 : 1237) + (((((((this.zzcb == null ? 0 : this.zzcb.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + ((int) (this.zzuv ^ (this.zzuv >>> 32)))) * 31) + ((int) (this.zzuw ^ (this.zzuw >>> 32)))) * 31)) * 31) + ((int) (this.zzuy ^ (this.zzuy >>> 32)))) * 31;
            if (this.bjx != null && !this.bjx.isEmpty()) {
                i = this.bjx.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (!this.zzcb.equals("")) {
                zzapoVar.zzr(1, this.zzcb);
            }
            if (this.zzuv != 0) {
                zzapoVar.zzb(2, this.zzuv);
            }
            if (this.zzuw != 2147483647L) {
                zzapoVar.zzb(3, this.zzuw);
            }
            if (this.zzux) {
                zzapoVar.zzj(4, this.zzux);
            }
            if (this.zzuy != 0) {
                zzapoVar.zzb(5, this.zzuy);
            }
            super.zza(zzapoVar);
        }

        public zzc zzae() {
            this.zzcb = "";
            this.zzuv = 0L;
            this.zzuw = 2147483647L;
            this.zzux = false;
            this.zzuy = 0L;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzl, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        this.zzcb = zzapnVar.readString();
                        break;
                    case 16:
                        this.zzuv = zzapnVar.ak();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.zzuw = zzapnVar.ak();
                        break;
                    case 32:
                        this.zzux = zzapnVar.an();
                        break;
                    case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                        this.zzuy = zzapnVar.ak();
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
            int zzx = super.zzx();
            if (!this.zzcb.equals("")) {
                zzx += zzapo.zzs(1, this.zzcb);
            }
            if (this.zzuv != 0) {
                zzx += zzapo.zze(2, this.zzuv);
            }
            if (this.zzuw != 2147483647L) {
                zzx += zzapo.zze(3, this.zzuw);
            }
            if (this.zzux) {
                zzx += zzapo.zzk(4, this.zzux);
            }
            return this.zzuy != 0 ? zzx + zzapo.zze(5, this.zzuy) : zzx;
        }
    }

    public static final class zzd extends zzapp<zzd> {
        public zzai.zza[] zzuz;
        public zzai.zza[] zzva;
        public zzc[] zzvb;

        public zzd() {
            zzaf();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (zzapt.equals(this.zzuz, zzdVar.zzuz) && zzapt.equals(this.zzva, zzdVar.zzva) && zzapt.equals(this.zzvb, zzdVar.zzvb)) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzdVar.bjx == null || zzdVar.bjx.isEmpty() : this.bjx.equals(zzdVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bjx == null || this.bjx.isEmpty()) ? 0 : this.bjx.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.zzuz)) * 31) + zzapt.hashCode(this.zzva)) * 31) + zzapt.hashCode(this.zzvb)) * 31);
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzuz != null && this.zzuz.length > 0) {
                for (int i = 0; i < this.zzuz.length; i++) {
                    zzai.zza zzaVar = this.zzuz[i];
                    if (zzaVar != null) {
                        zzapoVar.zza(1, zzaVar);
                    }
                }
            }
            if (this.zzva != null && this.zzva.length > 0) {
                for (int i2 = 0; i2 < this.zzva.length; i2++) {
                    zzai.zza zzaVar2 = this.zzva[i2];
                    if (zzaVar2 != null) {
                        zzapoVar.zza(2, zzaVar2);
                    }
                }
            }
            if (this.zzvb != null && this.zzvb.length > 0) {
                for (int i3 = 0; i3 < this.zzvb.length; i3++) {
                    zzc zzcVar = this.zzvb[i3];
                    if (zzcVar != null) {
                        zzapoVar.zza(3, zzcVar);
                    }
                }
            }
            super.zza(zzapoVar);
        }

        public zzd zzaf() {
            this.zzuz = zzai.zza.zzap();
            this.zzva = zzai.zza.zzap();
            this.zzvb = zzc.zzad();
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
        public zzd zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        int zzc = zzapy.zzc(zzapnVar, 10);
                        int length = this.zzuz == null ? 0 : this.zzuz.length;
                        zzai.zza[] zzaVarArr = new zzai.zza[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzuz, 0, zzaVarArr, 0, length);
                        }
                        while (length < zzaVarArr.length - 1) {
                            zzaVarArr[length] = new zzai.zza();
                            zzapnVar.zza(zzaVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzaVarArr[length] = new zzai.zza();
                        zzapnVar.zza(zzaVarArr[length]);
                        this.zzuz = zzaVarArr;
                        break;
                    case 18:
                        int zzc2 = zzapy.zzc(zzapnVar, 18);
                        int length2 = this.zzva == null ? 0 : this.zzva.length;
                        zzai.zza[] zzaVarArr2 = new zzai.zza[zzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzva, 0, zzaVarArr2, 0, length2);
                        }
                        while (length2 < zzaVarArr2.length - 1) {
                            zzaVarArr2[length2] = new zzai.zza();
                            zzapnVar.zza(zzaVarArr2[length2]);
                            zzapnVar.ah();
                            length2++;
                        }
                        zzaVarArr2[length2] = new zzai.zza();
                        zzapnVar.zza(zzaVarArr2[length2]);
                        this.zzva = zzaVarArr2;
                        break;
                    case 26:
                        int zzc3 = zzapy.zzc(zzapnVar, 26);
                        int length3 = this.zzvb == null ? 0 : this.zzvb.length;
                        zzc[] zzcVarArr = new zzc[zzc3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzvb, 0, zzcVarArr, 0, length3);
                        }
                        while (length3 < zzcVarArr.length - 1) {
                            zzcVarArr[length3] = new zzc();
                            zzapnVar.zza(zzcVarArr[length3]);
                            zzapnVar.ah();
                            length3++;
                        }
                        zzcVarArr[length3] = new zzc();
                        zzapnVar.zza(zzcVarArr[length3]);
                        this.zzvb = zzcVarArr;
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
            int zzx = super.zzx();
            if (this.zzuz != null && this.zzuz.length > 0) {
                int i = zzx;
                for (int i2 = 0; i2 < this.zzuz.length; i2++) {
                    zzai.zza zzaVar = this.zzuz[i2];
                    if (zzaVar != null) {
                        i += zzapo.zzc(1, zzaVar);
                    }
                }
                zzx = i;
            }
            if (this.zzva != null && this.zzva.length > 0) {
                int i3 = zzx;
                for (int i4 = 0; i4 < this.zzva.length; i4++) {
                    zzai.zza zzaVar2 = this.zzva[i4];
                    if (zzaVar2 != null) {
                        i3 += zzapo.zzc(2, zzaVar2);
                    }
                }
                zzx = i3;
            }
            if (this.zzvb != null && this.zzvb.length > 0) {
                for (int i5 = 0; i5 < this.zzvb.length; i5++) {
                    zzc zzcVar = this.zzvb[i5];
                    if (zzcVar != null) {
                        zzx += zzapo.zzc(3, zzcVar);
                    }
                }
            }
            return zzx;
        }
    }

    public static final class zze extends zzapp<zze> {
        private static volatile zze[] zzvc;
        public int key;
        public int value;

        public zze() {
            zzah();
        }

        public static zze[] zzag() {
            if (zzvc == null) {
                synchronized (zzapt.bjF) {
                    if (zzvc == null) {
                        zzvc = new zze[0];
                    }
                }
            }
            return zzvc;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.key == zzeVar.key && this.value == zzeVar.value) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzeVar.bjx == null || zzeVar.bjx.isEmpty() : this.bjx.equals(zzeVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bjx == null || this.bjx.isEmpty()) ? 0 : this.bjx.hashCode()) + ((((((getClass().getName().hashCode() + 527) * 31) + this.key) * 31) + this.value) * 31);
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            zzapoVar.zzae(1, this.key);
            zzapoVar.zzae(2, this.value);
            super.zza(zzapoVar);
        }

        public zze zzah() {
            this.key = 0;
            this.value = 0;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzn, reason: merged with bridge method [inline-methods] */
        public zze zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.key = zzapnVar.al();
                        break;
                    case 16:
                        this.value = zzapnVar.al();
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
            return super.zzx() + zzapo.zzag(1, this.key) + zzapo.zzag(2, this.value);
        }
    }

    public static final class zzf extends zzapp<zzf> {
        public String version;
        public String[] zzvd;
        public String[] zzve;
        public zzai.zza[] zzvf;
        public zze[] zzvg;
        public zzb[] zzvh;
        public zzb[] zzvi;
        public zzb[] zzvj;
        public zzg[] zzvk;
        public String zzvl;
        public String zzvm;
        public String zzvn;
        public zza zzvo;
        public float zzvp;
        public boolean zzvq;
        public String[] zzvr;
        public int zzvs;

        public zzf() {
            zzai();
        }

        public static zzf zze(byte[] bArr) throws zzapu {
            return (zzf) zzapv.zza(new zzf(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (!zzapt.equals(this.zzvd, zzfVar.zzvd) || !zzapt.equals(this.zzve, zzfVar.zzve) || !zzapt.equals(this.zzvf, zzfVar.zzvf) || !zzapt.equals(this.zzvg, zzfVar.zzvg) || !zzapt.equals(this.zzvh, zzfVar.zzvh) || !zzapt.equals(this.zzvi, zzfVar.zzvi) || !zzapt.equals(this.zzvj, zzfVar.zzvj) || !zzapt.equals(this.zzvk, zzfVar.zzvk)) {
                return false;
            }
            if (this.zzvl == null) {
                if (zzfVar.zzvl != null) {
                    return false;
                }
            } else if (!this.zzvl.equals(zzfVar.zzvl)) {
                return false;
            }
            if (this.zzvm == null) {
                if (zzfVar.zzvm != null) {
                    return false;
                }
            } else if (!this.zzvm.equals(zzfVar.zzvm)) {
                return false;
            }
            if (this.zzvn == null) {
                if (zzfVar.zzvn != null) {
                    return false;
                }
            } else if (!this.zzvn.equals(zzfVar.zzvn)) {
                return false;
            }
            if (this.version == null) {
                if (zzfVar.version != null) {
                    return false;
                }
            } else if (!this.version.equals(zzfVar.version)) {
                return false;
            }
            if (this.zzvo == null) {
                if (zzfVar.zzvo != null) {
                    return false;
                }
            } else if (!this.zzvo.equals(zzfVar.zzvo)) {
                return false;
            }
            if (Float.floatToIntBits(this.zzvp) == Float.floatToIntBits(zzfVar.zzvp) && this.zzvq == zzfVar.zzvq && zzapt.equals(this.zzvr, zzfVar.zzvr) && this.zzvs == zzfVar.zzvs) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzfVar.bjx == null || zzfVar.bjx.isEmpty() : this.bjx.equals(zzfVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((((((this.zzvq ? 1231 : 1237) + (((((this.zzvo == null ? 0 : this.zzvo.hashCode()) + (((this.version == null ? 0 : this.version.hashCode()) + (((this.zzvn == null ? 0 : this.zzvn.hashCode()) + (((this.zzvm == null ? 0 : this.zzvm.hashCode()) + (((this.zzvl == null ? 0 : this.zzvl.hashCode()) + ((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.zzvd)) * 31) + zzapt.hashCode(this.zzve)) * 31) + zzapt.hashCode(this.zzvf)) * 31) + zzapt.hashCode(this.zzvg)) * 31) + zzapt.hashCode(this.zzvh)) * 31) + zzapt.hashCode(this.zzvi)) * 31) + zzapt.hashCode(this.zzvj)) * 31) + zzapt.hashCode(this.zzvk)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + Float.floatToIntBits(this.zzvp)) * 31)) * 31) + zzapt.hashCode(this.zzvr)) * 31) + this.zzvs) * 31;
            if (this.bjx != null && !this.bjx.isEmpty()) {
                i = this.bjx.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzve != null && this.zzve.length > 0) {
                for (int i = 0; i < this.zzve.length; i++) {
                    String str = this.zzve[i];
                    if (str != null) {
                        zzapoVar.zzr(1, str);
                    }
                }
            }
            if (this.zzvf != null && this.zzvf.length > 0) {
                for (int i2 = 0; i2 < this.zzvf.length; i2++) {
                    zzai.zza zzaVar = this.zzvf[i2];
                    if (zzaVar != null) {
                        zzapoVar.zza(2, zzaVar);
                    }
                }
            }
            if (this.zzvg != null && this.zzvg.length > 0) {
                for (int i3 = 0; i3 < this.zzvg.length; i3++) {
                    zze zzeVar = this.zzvg[i3];
                    if (zzeVar != null) {
                        zzapoVar.zza(3, zzeVar);
                    }
                }
            }
            if (this.zzvh != null && this.zzvh.length > 0) {
                for (int i4 = 0; i4 < this.zzvh.length; i4++) {
                    zzb zzbVar = this.zzvh[i4];
                    if (zzbVar != null) {
                        zzapoVar.zza(4, zzbVar);
                    }
                }
            }
            if (this.zzvi != null && this.zzvi.length > 0) {
                for (int i5 = 0; i5 < this.zzvi.length; i5++) {
                    zzb zzbVar2 = this.zzvi[i5];
                    if (zzbVar2 != null) {
                        zzapoVar.zza(5, zzbVar2);
                    }
                }
            }
            if (this.zzvj != null && this.zzvj.length > 0) {
                for (int i6 = 0; i6 < this.zzvj.length; i6++) {
                    zzb zzbVar3 = this.zzvj[i6];
                    if (zzbVar3 != null) {
                        zzapoVar.zza(6, zzbVar3);
                    }
                }
            }
            if (this.zzvk != null && this.zzvk.length > 0) {
                for (int i7 = 0; i7 < this.zzvk.length; i7++) {
                    zzg zzgVar = this.zzvk[i7];
                    if (zzgVar != null) {
                        zzapoVar.zza(7, zzgVar);
                    }
                }
            }
            if (!this.zzvl.equals("")) {
                zzapoVar.zzr(9, this.zzvl);
            }
            if (!this.zzvm.equals("")) {
                zzapoVar.zzr(10, this.zzvm);
            }
            if (!this.zzvn.equals("0")) {
                zzapoVar.zzr(12, this.zzvn);
            }
            if (!this.version.equals("")) {
                zzapoVar.zzr(13, this.version);
            }
            if (this.zzvo != null) {
                zzapoVar.zza(14, this.zzvo);
            }
            if (Float.floatToIntBits(this.zzvp) != Float.floatToIntBits(0.0f)) {
                zzapoVar.zzc(15, this.zzvp);
            }
            if (this.zzvr != null && this.zzvr.length > 0) {
                for (int i8 = 0; i8 < this.zzvr.length; i8++) {
                    String str2 = this.zzvr[i8];
                    if (str2 != null) {
                        zzapoVar.zzr(16, str2);
                    }
                }
            }
            if (this.zzvs != 0) {
                zzapoVar.zzae(17, this.zzvs);
            }
            if (this.zzvq) {
                zzapoVar.zzj(18, this.zzvq);
            }
            if (this.zzvd != null && this.zzvd.length > 0) {
                for (int i9 = 0; i9 < this.zzvd.length; i9++) {
                    String str3 = this.zzvd[i9];
                    if (str3 != null) {
                        zzapoVar.zzr(19, str3);
                    }
                }
            }
            super.zza(zzapoVar);
        }

        public zzf zzai() {
            this.zzvd = zzapy.bjM;
            this.zzve = zzapy.bjM;
            this.zzvf = zzai.zza.zzap();
            this.zzvg = zze.zzag();
            this.zzvh = zzb.zzab();
            this.zzvi = zzb.zzab();
            this.zzvj = zzb.zzab();
            this.zzvk = zzg.zzaj();
            this.zzvl = "";
            this.zzvm = "";
            this.zzvn = "0";
            this.version = "";
            this.zzvo = null;
            this.zzvp = 0.0f;
            this.zzvq = false;
            this.zzvr = zzapy.bjM;
            this.zzvs = 0;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzo, reason: merged with bridge method [inline-methods] */
        public zzf zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        int zzc = zzapy.zzc(zzapnVar, 10);
                        int length = this.zzve == null ? 0 : this.zzve.length;
                        String[] strArr = new String[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzve, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzapnVar.readString();
                            zzapnVar.ah();
                            length++;
                        }
                        strArr[length] = zzapnVar.readString();
                        this.zzve = strArr;
                        break;
                    case 18:
                        int zzc2 = zzapy.zzc(zzapnVar, 18);
                        int length2 = this.zzvf == null ? 0 : this.zzvf.length;
                        zzai.zza[] zzaVarArr = new zzai.zza[zzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzvf, 0, zzaVarArr, 0, length2);
                        }
                        while (length2 < zzaVarArr.length - 1) {
                            zzaVarArr[length2] = new zzai.zza();
                            zzapnVar.zza(zzaVarArr[length2]);
                            zzapnVar.ah();
                            length2++;
                        }
                        zzaVarArr[length2] = new zzai.zza();
                        zzapnVar.zza(zzaVarArr[length2]);
                        this.zzvf = zzaVarArr;
                        break;
                    case 26:
                        int zzc3 = zzapy.zzc(zzapnVar, 26);
                        int length3 = this.zzvg == null ? 0 : this.zzvg.length;
                        zze[] zzeVarArr = new zze[zzc3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzvg, 0, zzeVarArr, 0, length3);
                        }
                        while (length3 < zzeVarArr.length - 1) {
                            zzeVarArr[length3] = new zze();
                            zzapnVar.zza(zzeVarArr[length3]);
                            zzapnVar.ah();
                            length3++;
                        }
                        zzeVarArr[length3] = new zze();
                        zzapnVar.zza(zzeVarArr[length3]);
                        this.zzvg = zzeVarArr;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        int zzc4 = zzapy.zzc(zzapnVar, 34);
                        int length4 = this.zzvh == null ? 0 : this.zzvh.length;
                        zzb[] zzbVarArr = new zzb[zzc4 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzvh, 0, zzbVarArr, 0, length4);
                        }
                        while (length4 < zzbVarArr.length - 1) {
                            zzbVarArr[length4] = new zzb();
                            zzapnVar.zza(zzbVarArr[length4]);
                            zzapnVar.ah();
                            length4++;
                        }
                        zzbVarArr[length4] = new zzb();
                        zzapnVar.zza(zzbVarArr[length4]);
                        this.zzvh = zzbVarArr;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        int zzc5 = zzapy.zzc(zzapnVar, 42);
                        int length5 = this.zzvi == null ? 0 : this.zzvi.length;
                        zzb[] zzbVarArr2 = new zzb[zzc5 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzvi, 0, zzbVarArr2, 0, length5);
                        }
                        while (length5 < zzbVarArr2.length - 1) {
                            zzbVarArr2[length5] = new zzb();
                            zzapnVar.zza(zzbVarArr2[length5]);
                            zzapnVar.ah();
                            length5++;
                        }
                        zzbVarArr2[length5] = new zzb();
                        zzapnVar.zza(zzbVarArr2[length5]);
                        this.zzvi = zzbVarArr2;
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        int zzc6 = zzapy.zzc(zzapnVar, 50);
                        int length6 = this.zzvj == null ? 0 : this.zzvj.length;
                        zzb[] zzbVarArr3 = new zzb[zzc6 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzvj, 0, zzbVarArr3, 0, length6);
                        }
                        while (length6 < zzbVarArr3.length - 1) {
                            zzbVarArr3[length6] = new zzb();
                            zzapnVar.zza(zzbVarArr3[length6]);
                            zzapnVar.ah();
                            length6++;
                        }
                        zzbVarArr3[length6] = new zzb();
                        zzapnVar.zza(zzbVarArr3[length6]);
                        this.zzvj = zzbVarArr3;
                        break;
                    case 58:
                        int zzc7 = zzapy.zzc(zzapnVar, 58);
                        int length7 = this.zzvk == null ? 0 : this.zzvk.length;
                        zzg[] zzgVarArr = new zzg[zzc7 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzvk, 0, zzgVarArr, 0, length7);
                        }
                        while (length7 < zzgVarArr.length - 1) {
                            zzgVarArr[length7] = new zzg();
                            zzapnVar.zza(zzgVarArr[length7]);
                            zzapnVar.ah();
                            length7++;
                        }
                        zzgVarArr[length7] = new zzg();
                        zzapnVar.zza(zzgVarArr[length7]);
                        this.zzvk = zzgVarArr;
                        break;
                    case 74:
                        this.zzvl = zzapnVar.readString();
                        break;
                    case 82:
                        this.zzvm = zzapnVar.readString();
                        break;
                    case 98:
                        this.zzvn = zzapnVar.readString();
                        break;
                    case 106:
                        this.version = zzapnVar.readString();
                        break;
                    case 114:
                        if (this.zzvo == null) {
                            this.zzvo = new zza();
                        }
                        zzapnVar.zza(this.zzvo);
                        break;
                    case 125:
                        this.zzvp = zzapnVar.readFloat();
                        break;
                    case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                        int zzc8 = zzapy.zzc(zzapnVar, TransportMediator.KEYCODE_MEDIA_RECORD);
                        int length8 = this.zzvr == null ? 0 : this.zzvr.length;
                        String[] strArr2 = new String[zzc8 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzvr, 0, strArr2, 0, length8);
                        }
                        while (length8 < strArr2.length - 1) {
                            strArr2[length8] = zzapnVar.readString();
                            zzapnVar.ah();
                            length8++;
                        }
                        strArr2[length8] = zzapnVar.readString();
                        this.zzvr = strArr2;
                        break;
                    case 136:
                        this.zzvs = zzapnVar.al();
                        break;
                    case 144:
                        this.zzvq = zzapnVar.an();
                        break;
                    case 154:
                        int zzc9 = zzapy.zzc(zzapnVar, 154);
                        int length9 = this.zzvd == null ? 0 : this.zzvd.length;
                        String[] strArr3 = new String[zzc9 + length9];
                        if (length9 != 0) {
                            System.arraycopy(this.zzvd, 0, strArr3, 0, length9);
                        }
                        while (length9 < strArr3.length - 1) {
                            strArr3[length9] = zzapnVar.readString();
                            zzapnVar.ah();
                            length9++;
                        }
                        strArr3[length9] = zzapnVar.readString();
                        this.zzvd = strArr3;
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
            int i;
            int zzx = super.zzx();
            if (this.zzve == null || this.zzve.length <= 0) {
                i = zzx;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzve.length; i4++) {
                    String str = this.zzve[i4];
                    if (str != null) {
                        i3++;
                        i2 += zzapo.zztx(str);
                    }
                }
                i = zzx + i2 + (i3 * 1);
            }
            if (this.zzvf != null && this.zzvf.length > 0) {
                int i5 = i;
                for (int i6 = 0; i6 < this.zzvf.length; i6++) {
                    zzai.zza zzaVar = this.zzvf[i6];
                    if (zzaVar != null) {
                        i5 += zzapo.zzc(2, zzaVar);
                    }
                }
                i = i5;
            }
            if (this.zzvg != null && this.zzvg.length > 0) {
                int i7 = i;
                for (int i8 = 0; i8 < this.zzvg.length; i8++) {
                    zze zzeVar = this.zzvg[i8];
                    if (zzeVar != null) {
                        i7 += zzapo.zzc(3, zzeVar);
                    }
                }
                i = i7;
            }
            if (this.zzvh != null && this.zzvh.length > 0) {
                int i9 = i;
                for (int i10 = 0; i10 < this.zzvh.length; i10++) {
                    zzb zzbVar = this.zzvh[i10];
                    if (zzbVar != null) {
                        i9 += zzapo.zzc(4, zzbVar);
                    }
                }
                i = i9;
            }
            if (this.zzvi != null && this.zzvi.length > 0) {
                int i11 = i;
                for (int i12 = 0; i12 < this.zzvi.length; i12++) {
                    zzb zzbVar2 = this.zzvi[i12];
                    if (zzbVar2 != null) {
                        i11 += zzapo.zzc(5, zzbVar2);
                    }
                }
                i = i11;
            }
            if (this.zzvj != null && this.zzvj.length > 0) {
                int i13 = i;
                for (int i14 = 0; i14 < this.zzvj.length; i14++) {
                    zzb zzbVar3 = this.zzvj[i14];
                    if (zzbVar3 != null) {
                        i13 += zzapo.zzc(6, zzbVar3);
                    }
                }
                i = i13;
            }
            if (this.zzvk != null && this.zzvk.length > 0) {
                int i15 = i;
                for (int i16 = 0; i16 < this.zzvk.length; i16++) {
                    zzg zzgVar = this.zzvk[i16];
                    if (zzgVar != null) {
                        i15 += zzapo.zzc(7, zzgVar);
                    }
                }
                i = i15;
            }
            if (!this.zzvl.equals("")) {
                i += zzapo.zzs(9, this.zzvl);
            }
            if (!this.zzvm.equals("")) {
                i += zzapo.zzs(10, this.zzvm);
            }
            if (!this.zzvn.equals("0")) {
                i += zzapo.zzs(12, this.zzvn);
            }
            if (!this.version.equals("")) {
                i += zzapo.zzs(13, this.version);
            }
            if (this.zzvo != null) {
                i += zzapo.zzc(14, this.zzvo);
            }
            if (Float.floatToIntBits(this.zzvp) != Float.floatToIntBits(0.0f)) {
                i += zzapo.zzd(15, this.zzvp);
            }
            if (this.zzvr != null && this.zzvr.length > 0) {
                int i17 = 0;
                int i18 = 0;
                for (int i19 = 0; i19 < this.zzvr.length; i19++) {
                    String str2 = this.zzvr[i19];
                    if (str2 != null) {
                        i18++;
                        i17 += zzapo.zztx(str2);
                    }
                }
                i = i + i17 + (i18 * 2);
            }
            if (this.zzvs != 0) {
                i += zzapo.zzag(17, this.zzvs);
            }
            if (this.zzvq) {
                i += zzapo.zzk(18, this.zzvq);
            }
            if (this.zzvd == null || this.zzvd.length <= 0) {
                return i;
            }
            int i20 = 0;
            int i21 = 0;
            for (int i22 = 0; i22 < this.zzvd.length; i22++) {
                String str3 = this.zzvd[i22];
                if (str3 != null) {
                    i21++;
                    i20 += zzapo.zztx(str3);
                }
            }
            return i + i20 + (i21 * 2);
        }
    }

    public static final class zzg extends zzapp<zzg> {
        private static volatile zzg[] zzvt;
        public int[] zzvu;
        public int[] zzvv;
        public int[] zzvw;
        public int[] zzvx;
        public int[] zzvy;
        public int[] zzvz;
        public int[] zzwa;
        public int[] zzwb;
        public int[] zzwc;
        public int[] zzwd;

        public zzg() {
            zzak();
        }

        public static zzg[] zzaj() {
            if (zzvt == null) {
                synchronized (zzapt.bjF) {
                    if (zzvt == null) {
                        zzvt = new zzg[0];
                    }
                }
            }
            return zzvt;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzg)) {
                return false;
            }
            zzg zzgVar = (zzg) obj;
            if (zzapt.equals(this.zzvu, zzgVar.zzvu) && zzapt.equals(this.zzvv, zzgVar.zzvv) && zzapt.equals(this.zzvw, zzgVar.zzvw) && zzapt.equals(this.zzvx, zzgVar.zzvx) && zzapt.equals(this.zzvy, zzgVar.zzvy) && zzapt.equals(this.zzvz, zzgVar.zzvz) && zzapt.equals(this.zzwa, zzgVar.zzwa) && zzapt.equals(this.zzwb, zzgVar.zzwb) && zzapt.equals(this.zzwc, zzgVar.zzwc) && zzapt.equals(this.zzwd, zzgVar.zzwd)) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzgVar.bjx == null || zzgVar.bjx.isEmpty() : this.bjx.equals(zzgVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bjx == null || this.bjx.isEmpty()) ? 0 : this.bjx.hashCode()) + ((((((((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.zzvu)) * 31) + zzapt.hashCode(this.zzvv)) * 31) + zzapt.hashCode(this.zzvw)) * 31) + zzapt.hashCode(this.zzvx)) * 31) + zzapt.hashCode(this.zzvy)) * 31) + zzapt.hashCode(this.zzvz)) * 31) + zzapt.hashCode(this.zzwa)) * 31) + zzapt.hashCode(this.zzwb)) * 31) + zzapt.hashCode(this.zzwc)) * 31) + zzapt.hashCode(this.zzwd)) * 31);
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzvu != null && this.zzvu.length > 0) {
                for (int i = 0; i < this.zzvu.length; i++) {
                    zzapoVar.zzae(1, this.zzvu[i]);
                }
            }
            if (this.zzvv != null && this.zzvv.length > 0) {
                for (int i2 = 0; i2 < this.zzvv.length; i2++) {
                    zzapoVar.zzae(2, this.zzvv[i2]);
                }
            }
            if (this.zzvw != null && this.zzvw.length > 0) {
                for (int i3 = 0; i3 < this.zzvw.length; i3++) {
                    zzapoVar.zzae(3, this.zzvw[i3]);
                }
            }
            if (this.zzvx != null && this.zzvx.length > 0) {
                for (int i4 = 0; i4 < this.zzvx.length; i4++) {
                    zzapoVar.zzae(4, this.zzvx[i4]);
                }
            }
            if (this.zzvy != null && this.zzvy.length > 0) {
                for (int i5 = 0; i5 < this.zzvy.length; i5++) {
                    zzapoVar.zzae(5, this.zzvy[i5]);
                }
            }
            if (this.zzvz != null && this.zzvz.length > 0) {
                for (int i6 = 0; i6 < this.zzvz.length; i6++) {
                    zzapoVar.zzae(6, this.zzvz[i6]);
                }
            }
            if (this.zzwa != null && this.zzwa.length > 0) {
                for (int i7 = 0; i7 < this.zzwa.length; i7++) {
                    zzapoVar.zzae(7, this.zzwa[i7]);
                }
            }
            if (this.zzwb != null && this.zzwb.length > 0) {
                for (int i8 = 0; i8 < this.zzwb.length; i8++) {
                    zzapoVar.zzae(8, this.zzwb[i8]);
                }
            }
            if (this.zzwc != null && this.zzwc.length > 0) {
                for (int i9 = 0; i9 < this.zzwc.length; i9++) {
                    zzapoVar.zzae(9, this.zzwc[i9]);
                }
            }
            if (this.zzwd != null && this.zzwd.length > 0) {
                for (int i10 = 0; i10 < this.zzwd.length; i10++) {
                    zzapoVar.zzae(10, this.zzwd[i10]);
                }
            }
            super.zza(zzapoVar);
        }

        public zzg zzak() {
            this.zzvu = zzapy.bjH;
            this.zzvv = zzapy.bjH;
            this.zzvw = zzapy.bjH;
            this.zzvx = zzapy.bjH;
            this.zzvy = zzapy.bjH;
            this.zzvz = zzapy.bjH;
            this.zzwa = zzapy.bjH;
            this.zzwb = zzapy.bjH;
            this.zzwc = zzapy.bjH;
            this.zzwd = zzapy.bjH;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzp, reason: merged with bridge method [inline-methods] */
        public zzg zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        int zzc = zzapy.zzc(zzapnVar, 8);
                        int length = this.zzvu == null ? 0 : this.zzvu.length;
                        int[] iArr = new int[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzvu, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzapnVar.al();
                            zzapnVar.ah();
                            length++;
                        }
                        iArr[length] = zzapnVar.al();
                        this.zzvu = iArr;
                        break;
                    case 10:
                        int zzafr = zzapnVar.zzafr(zzapnVar.aq());
                        int position = zzapnVar.getPosition();
                        int i = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i++;
                        }
                        zzapnVar.zzaft(position);
                        int length2 = this.zzvu == null ? 0 : this.zzvu.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzvu, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzapnVar.al();
                            length2++;
                        }
                        this.zzvu = iArr2;
                        zzapnVar.zzafs(zzafr);
                        break;
                    case 16:
                        int zzc2 = zzapy.zzc(zzapnVar, 16);
                        int length3 = this.zzvv == null ? 0 : this.zzvv.length;
                        int[] iArr3 = new int[zzc2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzvv, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = zzapnVar.al();
                            zzapnVar.ah();
                            length3++;
                        }
                        iArr3[length3] = zzapnVar.al();
                        this.zzvv = iArr3;
                        break;
                    case 18:
                        int zzafr2 = zzapnVar.zzafr(zzapnVar.aq());
                        int position2 = zzapnVar.getPosition();
                        int i2 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i2++;
                        }
                        zzapnVar.zzaft(position2);
                        int length4 = this.zzvv == null ? 0 : this.zzvv.length;
                        int[] iArr4 = new int[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzvv, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = zzapnVar.al();
                            length4++;
                        }
                        this.zzvv = iArr4;
                        zzapnVar.zzafs(zzafr2);
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        int zzc3 = zzapy.zzc(zzapnVar, 24);
                        int length5 = this.zzvw == null ? 0 : this.zzvw.length;
                        int[] iArr5 = new int[zzc3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzvw, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = zzapnVar.al();
                            zzapnVar.ah();
                            length5++;
                        }
                        iArr5[length5] = zzapnVar.al();
                        this.zzvw = iArr5;
                        break;
                    case 26:
                        int zzafr3 = zzapnVar.zzafr(zzapnVar.aq());
                        int position3 = zzapnVar.getPosition();
                        int i3 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i3++;
                        }
                        zzapnVar.zzaft(position3);
                        int length6 = this.zzvw == null ? 0 : this.zzvw.length;
                        int[] iArr6 = new int[i3 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzvw, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = zzapnVar.al();
                            length6++;
                        }
                        this.zzvw = iArr6;
                        zzapnVar.zzafs(zzafr3);
                        break;
                    case 32:
                        int zzc4 = zzapy.zzc(zzapnVar, 32);
                        int length7 = this.zzvx == null ? 0 : this.zzvx.length;
                        int[] iArr7 = new int[zzc4 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzvx, 0, iArr7, 0, length7);
                        }
                        while (length7 < iArr7.length - 1) {
                            iArr7[length7] = zzapnVar.al();
                            zzapnVar.ah();
                            length7++;
                        }
                        iArr7[length7] = zzapnVar.al();
                        this.zzvx = iArr7;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        int zzafr4 = zzapnVar.zzafr(zzapnVar.aq());
                        int position4 = zzapnVar.getPosition();
                        int i4 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i4++;
                        }
                        zzapnVar.zzaft(position4);
                        int length8 = this.zzvx == null ? 0 : this.zzvx.length;
                        int[] iArr8 = new int[i4 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzvx, 0, iArr8, 0, length8);
                        }
                        while (length8 < iArr8.length) {
                            iArr8[length8] = zzapnVar.al();
                            length8++;
                        }
                        this.zzvx = iArr8;
                        zzapnVar.zzafs(zzafr4);
                        break;
                    case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                        int zzc5 = zzapy.zzc(zzapnVar, 40);
                        int length9 = this.zzvy == null ? 0 : this.zzvy.length;
                        int[] iArr9 = new int[zzc5 + length9];
                        if (length9 != 0) {
                            System.arraycopy(this.zzvy, 0, iArr9, 0, length9);
                        }
                        while (length9 < iArr9.length - 1) {
                            iArr9[length9] = zzapnVar.al();
                            zzapnVar.ah();
                            length9++;
                        }
                        iArr9[length9] = zzapnVar.al();
                        this.zzvy = iArr9;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        int zzafr5 = zzapnVar.zzafr(zzapnVar.aq());
                        int position5 = zzapnVar.getPosition();
                        int i5 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i5++;
                        }
                        zzapnVar.zzaft(position5);
                        int length10 = this.zzvy == null ? 0 : this.zzvy.length;
                        int[] iArr10 = new int[i5 + length10];
                        if (length10 != 0) {
                            System.arraycopy(this.zzvy, 0, iArr10, 0, length10);
                        }
                        while (length10 < iArr10.length) {
                            iArr10[length10] = zzapnVar.al();
                            length10++;
                        }
                        this.zzvy = iArr10;
                        zzapnVar.zzafs(zzafr5);
                        break;
                    case 48:
                        int zzc6 = zzapy.zzc(zzapnVar, 48);
                        int length11 = this.zzvz == null ? 0 : this.zzvz.length;
                        int[] iArr11 = new int[zzc6 + length11];
                        if (length11 != 0) {
                            System.arraycopy(this.zzvz, 0, iArr11, 0, length11);
                        }
                        while (length11 < iArr11.length - 1) {
                            iArr11[length11] = zzapnVar.al();
                            zzapnVar.ah();
                            length11++;
                        }
                        iArr11[length11] = zzapnVar.al();
                        this.zzvz = iArr11;
                        break;
                    case AdSize.PORTRAIT_AD_HEIGHT /* 50 */:
                        int zzafr6 = zzapnVar.zzafr(zzapnVar.aq());
                        int position6 = zzapnVar.getPosition();
                        int i6 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i6++;
                        }
                        zzapnVar.zzaft(position6);
                        int length12 = this.zzvz == null ? 0 : this.zzvz.length;
                        int[] iArr12 = new int[i6 + length12];
                        if (length12 != 0) {
                            System.arraycopy(this.zzvz, 0, iArr12, 0, length12);
                        }
                        while (length12 < iArr12.length) {
                            iArr12[length12] = zzapnVar.al();
                            length12++;
                        }
                        this.zzvz = iArr12;
                        zzapnVar.zzafs(zzafr6);
                        break;
                    case DrawableConstants.CloseButton.WIDGET_HEIGHT_DIPS /* 56 */:
                        int zzc7 = zzapy.zzc(zzapnVar, 56);
                        int length13 = this.zzwa == null ? 0 : this.zzwa.length;
                        int[] iArr13 = new int[zzc7 + length13];
                        if (length13 != 0) {
                            System.arraycopy(this.zzwa, 0, iArr13, 0, length13);
                        }
                        while (length13 < iArr13.length - 1) {
                            iArr13[length13] = zzapnVar.al();
                            zzapnVar.ah();
                            length13++;
                        }
                        iArr13[length13] = zzapnVar.al();
                        this.zzwa = iArr13;
                        break;
                    case 58:
                        int zzafr7 = zzapnVar.zzafr(zzapnVar.aq());
                        int position7 = zzapnVar.getPosition();
                        int i7 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i7++;
                        }
                        zzapnVar.zzaft(position7);
                        int length14 = this.zzwa == null ? 0 : this.zzwa.length;
                        int[] iArr14 = new int[i7 + length14];
                        if (length14 != 0) {
                            System.arraycopy(this.zzwa, 0, iArr14, 0, length14);
                        }
                        while (length14 < iArr14.length) {
                            iArr14[length14] = zzapnVar.al();
                            length14++;
                        }
                        this.zzwa = iArr14;
                        zzapnVar.zzafs(zzafr7);
                        break;
                    case 64:
                        int zzc8 = zzapy.zzc(zzapnVar, 64);
                        int length15 = this.zzwb == null ? 0 : this.zzwb.length;
                        int[] iArr15 = new int[zzc8 + length15];
                        if (length15 != 0) {
                            System.arraycopy(this.zzwb, 0, iArr15, 0, length15);
                        }
                        while (length15 < iArr15.length - 1) {
                            iArr15[length15] = zzapnVar.al();
                            zzapnVar.ah();
                            length15++;
                        }
                        iArr15[length15] = zzapnVar.al();
                        this.zzwb = iArr15;
                        break;
                    case 66:
                        int zzafr8 = zzapnVar.zzafr(zzapnVar.aq());
                        int position8 = zzapnVar.getPosition();
                        int i8 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i8++;
                        }
                        zzapnVar.zzaft(position8);
                        int length16 = this.zzwb == null ? 0 : this.zzwb.length;
                        int[] iArr16 = new int[i8 + length16];
                        if (length16 != 0) {
                            System.arraycopy(this.zzwb, 0, iArr16, 0, length16);
                        }
                        while (length16 < iArr16.length) {
                            iArr16[length16] = zzapnVar.al();
                            length16++;
                        }
                        this.zzwb = iArr16;
                        zzapnVar.zzafs(zzafr8);
                        break;
                    case DrawableConstants.GradientStrip.GRADIENT_STRIP_HEIGHT_DIPS /* 72 */:
                        int zzc9 = zzapy.zzc(zzapnVar, 72);
                        int length17 = this.zzwc == null ? 0 : this.zzwc.length;
                        int[] iArr17 = new int[zzc9 + length17];
                        if (length17 != 0) {
                            System.arraycopy(this.zzwc, 0, iArr17, 0, length17);
                        }
                        while (length17 < iArr17.length - 1) {
                            iArr17[length17] = zzapnVar.al();
                            zzapnVar.ah();
                            length17++;
                        }
                        iArr17[length17] = zzapnVar.al();
                        this.zzwc = iArr17;
                        break;
                    case 74:
                        int zzafr9 = zzapnVar.zzafr(zzapnVar.aq());
                        int position9 = zzapnVar.getPosition();
                        int i9 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i9++;
                        }
                        zzapnVar.zzaft(position9);
                        int length18 = this.zzwc == null ? 0 : this.zzwc.length;
                        int[] iArr18 = new int[i9 + length18];
                        if (length18 != 0) {
                            System.arraycopy(this.zzwc, 0, iArr18, 0, length18);
                        }
                        while (length18 < iArr18.length) {
                            iArr18[length18] = zzapnVar.al();
                            length18++;
                        }
                        this.zzwc = iArr18;
                        zzapnVar.zzafs(zzafr9);
                        break;
                    case 80:
                        int zzc10 = zzapy.zzc(zzapnVar, 80);
                        int length19 = this.zzwd == null ? 0 : this.zzwd.length;
                        int[] iArr19 = new int[zzc10 + length19];
                        if (length19 != 0) {
                            System.arraycopy(this.zzwd, 0, iArr19, 0, length19);
                        }
                        while (length19 < iArr19.length - 1) {
                            iArr19[length19] = zzapnVar.al();
                            zzapnVar.ah();
                            length19++;
                        }
                        iArr19[length19] = zzapnVar.al();
                        this.zzwd = iArr19;
                        break;
                    case 82:
                        int zzafr10 = zzapnVar.zzafr(zzapnVar.aq());
                        int position10 = zzapnVar.getPosition();
                        int i10 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i10++;
                        }
                        zzapnVar.zzaft(position10);
                        int length20 = this.zzwd == null ? 0 : this.zzwd.length;
                        int[] iArr20 = new int[i10 + length20];
                        if (length20 != 0) {
                            System.arraycopy(this.zzwd, 0, iArr20, 0, length20);
                        }
                        while (length20 < iArr20.length) {
                            iArr20[length20] = zzapnVar.al();
                            length20++;
                        }
                        this.zzwd = iArr20;
                        zzapnVar.zzafs(zzafr10);
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
            int i;
            int zzx = super.zzx();
            if (this.zzvu == null || this.zzvu.length <= 0) {
                i = zzx;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzvu.length; i3++) {
                    i2 += zzapo.zzafx(this.zzvu[i3]);
                }
                i = zzx + i2 + (this.zzvu.length * 1);
            }
            if (this.zzvv != null && this.zzvv.length > 0) {
                int i4 = 0;
                for (int i5 = 0; i5 < this.zzvv.length; i5++) {
                    i4 += zzapo.zzafx(this.zzvv[i5]);
                }
                i = i + i4 + (this.zzvv.length * 1);
            }
            if (this.zzvw != null && this.zzvw.length > 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzvw.length; i7++) {
                    i6 += zzapo.zzafx(this.zzvw[i7]);
                }
                i = i + i6 + (this.zzvw.length * 1);
            }
            if (this.zzvx != null && this.zzvx.length > 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < this.zzvx.length; i9++) {
                    i8 += zzapo.zzafx(this.zzvx[i9]);
                }
                i = i + i8 + (this.zzvx.length * 1);
            }
            if (this.zzvy != null && this.zzvy.length > 0) {
                int i10 = 0;
                for (int i11 = 0; i11 < this.zzvy.length; i11++) {
                    i10 += zzapo.zzafx(this.zzvy[i11]);
                }
                i = i + i10 + (this.zzvy.length * 1);
            }
            if (this.zzvz != null && this.zzvz.length > 0) {
                int i12 = 0;
                for (int i13 = 0; i13 < this.zzvz.length; i13++) {
                    i12 += zzapo.zzafx(this.zzvz[i13]);
                }
                i = i + i12 + (this.zzvz.length * 1);
            }
            if (this.zzwa != null && this.zzwa.length > 0) {
                int i14 = 0;
                for (int i15 = 0; i15 < this.zzwa.length; i15++) {
                    i14 += zzapo.zzafx(this.zzwa[i15]);
                }
                i = i + i14 + (this.zzwa.length * 1);
            }
            if (this.zzwb != null && this.zzwb.length > 0) {
                int i16 = 0;
                for (int i17 = 0; i17 < this.zzwb.length; i17++) {
                    i16 += zzapo.zzafx(this.zzwb[i17]);
                }
                i = i + i16 + (this.zzwb.length * 1);
            }
            if (this.zzwc != null && this.zzwc.length > 0) {
                int i18 = 0;
                for (int i19 = 0; i19 < this.zzwc.length; i19++) {
                    i18 += zzapo.zzafx(this.zzwc[i19]);
                }
                i = i + i18 + (this.zzwc.length * 1);
            }
            if (this.zzwd == null || this.zzwd.length <= 0) {
                return i;
            }
            int i20 = 0;
            for (int i21 = 0; i21 < this.zzwd.length; i21++) {
                i20 += zzapo.zzafx(this.zzwd[i21]);
            }
            return i + i20 + (this.zzwd.length * 1);
        }
    }

    public static final class zzh extends zzapp<zzh> {
        public static final zzapq<zzai.zza, zzh> zzwe = zzapq.zza(11, zzh.class, 810);
        private static final zzh[] zzwf = new zzh[0];
        public int[] zzwg;
        public int[] zzwh;
        public int[] zzwi;
        public int zzwj;
        public int[] zzwk;
        public int zzwl;
        public int zzwm;

        public zzh() {
            zzal();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzh)) {
                return false;
            }
            zzh zzhVar = (zzh) obj;
            if (zzapt.equals(this.zzwg, zzhVar.zzwg) && zzapt.equals(this.zzwh, zzhVar.zzwh) && zzapt.equals(this.zzwi, zzhVar.zzwi) && this.zzwj == zzhVar.zzwj && zzapt.equals(this.zzwk, zzhVar.zzwk) && this.zzwl == zzhVar.zzwl && this.zzwm == zzhVar.zzwm) {
                return (this.bjx == null || this.bjx.isEmpty()) ? zzhVar.bjx == null || zzhVar.bjx.isEmpty() : this.bjx.equals(zzhVar.bjx);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bjx == null || this.bjx.isEmpty()) ? 0 : this.bjx.hashCode()) + ((((((((((((((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.zzwg)) * 31) + zzapt.hashCode(this.zzwh)) * 31) + zzapt.hashCode(this.zzwi)) * 31) + this.zzwj) * 31) + zzapt.hashCode(this.zzwk)) * 31) + this.zzwl) * 31) + this.zzwm) * 31);
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzwg != null && this.zzwg.length > 0) {
                for (int i = 0; i < this.zzwg.length; i++) {
                    zzapoVar.zzae(1, this.zzwg[i]);
                }
            }
            if (this.zzwh != null && this.zzwh.length > 0) {
                for (int i2 = 0; i2 < this.zzwh.length; i2++) {
                    zzapoVar.zzae(2, this.zzwh[i2]);
                }
            }
            if (this.zzwi != null && this.zzwi.length > 0) {
                for (int i3 = 0; i3 < this.zzwi.length; i3++) {
                    zzapoVar.zzae(3, this.zzwi[i3]);
                }
            }
            if (this.zzwj != 0) {
                zzapoVar.zzae(4, this.zzwj);
            }
            if (this.zzwk != null && this.zzwk.length > 0) {
                for (int i4 = 0; i4 < this.zzwk.length; i4++) {
                    zzapoVar.zzae(5, this.zzwk[i4]);
                }
            }
            if (this.zzwl != 0) {
                zzapoVar.zzae(6, this.zzwl);
            }
            if (this.zzwm != 0) {
                zzapoVar.zzae(7, this.zzwm);
            }
            super.zza(zzapoVar);
        }

        public zzh zzal() {
            this.zzwg = zzapy.bjH;
            this.zzwh = zzapy.bjH;
            this.zzwi = zzapy.bjH;
            this.zzwj = 0;
            this.zzwk = zzapy.bjH;
            this.zzwl = 0;
            this.zzwm = 0;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzq, reason: merged with bridge method [inline-methods] */
        public zzh zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        int zzc = zzapy.zzc(zzapnVar, 8);
                        int length = this.zzwg == null ? 0 : this.zzwg.length;
                        int[] iArr = new int[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzwg, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzapnVar.al();
                            zzapnVar.ah();
                            length++;
                        }
                        iArr[length] = zzapnVar.al();
                        this.zzwg = iArr;
                        break;
                    case 10:
                        int zzafr = zzapnVar.zzafr(zzapnVar.aq());
                        int position = zzapnVar.getPosition();
                        int i = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i++;
                        }
                        zzapnVar.zzaft(position);
                        int length2 = this.zzwg == null ? 0 : this.zzwg.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.zzwg, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzapnVar.al();
                            length2++;
                        }
                        this.zzwg = iArr2;
                        zzapnVar.zzafs(zzafr);
                        break;
                    case 16:
                        int zzc2 = zzapy.zzc(zzapnVar, 16);
                        int length3 = this.zzwh == null ? 0 : this.zzwh.length;
                        int[] iArr3 = new int[zzc2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.zzwh, 0, iArr3, 0, length3);
                        }
                        while (length3 < iArr3.length - 1) {
                            iArr3[length3] = zzapnVar.al();
                            zzapnVar.ah();
                            length3++;
                        }
                        iArr3[length3] = zzapnVar.al();
                        this.zzwh = iArr3;
                        break;
                    case 18:
                        int zzafr2 = zzapnVar.zzafr(zzapnVar.aq());
                        int position2 = zzapnVar.getPosition();
                        int i2 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i2++;
                        }
                        zzapnVar.zzaft(position2);
                        int length4 = this.zzwh == null ? 0 : this.zzwh.length;
                        int[] iArr4 = new int[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.zzwh, 0, iArr4, 0, length4);
                        }
                        while (length4 < iArr4.length) {
                            iArr4[length4] = zzapnVar.al();
                            length4++;
                        }
                        this.zzwh = iArr4;
                        zzapnVar.zzafs(zzafr2);
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        int zzc3 = zzapy.zzc(zzapnVar, 24);
                        int length5 = this.zzwi == null ? 0 : this.zzwi.length;
                        int[] iArr5 = new int[zzc3 + length5];
                        if (length5 != 0) {
                            System.arraycopy(this.zzwi, 0, iArr5, 0, length5);
                        }
                        while (length5 < iArr5.length - 1) {
                            iArr5[length5] = zzapnVar.al();
                            zzapnVar.ah();
                            length5++;
                        }
                        iArr5[length5] = zzapnVar.al();
                        this.zzwi = iArr5;
                        break;
                    case 26:
                        int zzafr3 = zzapnVar.zzafr(zzapnVar.aq());
                        int position3 = zzapnVar.getPosition();
                        int i3 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i3++;
                        }
                        zzapnVar.zzaft(position3);
                        int length6 = this.zzwi == null ? 0 : this.zzwi.length;
                        int[] iArr6 = new int[i3 + length6];
                        if (length6 != 0) {
                            System.arraycopy(this.zzwi, 0, iArr6, 0, length6);
                        }
                        while (length6 < iArr6.length) {
                            iArr6[length6] = zzapnVar.al();
                            length6++;
                        }
                        this.zzwi = iArr6;
                        zzapnVar.zzafs(zzafr3);
                        break;
                    case 32:
                        this.zzwj = zzapnVar.al();
                        break;
                    case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                        int zzc4 = zzapy.zzc(zzapnVar, 40);
                        int length7 = this.zzwk == null ? 0 : this.zzwk.length;
                        int[] iArr7 = new int[zzc4 + length7];
                        if (length7 != 0) {
                            System.arraycopy(this.zzwk, 0, iArr7, 0, length7);
                        }
                        while (length7 < iArr7.length - 1) {
                            iArr7[length7] = zzapnVar.al();
                            zzapnVar.ah();
                            length7++;
                        }
                        iArr7[length7] = zzapnVar.al();
                        this.zzwk = iArr7;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        int zzafr4 = zzapnVar.zzafr(zzapnVar.aq());
                        int position4 = zzapnVar.getPosition();
                        int i4 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.al();
                            i4++;
                        }
                        zzapnVar.zzaft(position4);
                        int length8 = this.zzwk == null ? 0 : this.zzwk.length;
                        int[] iArr8 = new int[i4 + length8];
                        if (length8 != 0) {
                            System.arraycopy(this.zzwk, 0, iArr8, 0, length8);
                        }
                        while (length8 < iArr8.length) {
                            iArr8[length8] = zzapnVar.al();
                            length8++;
                        }
                        this.zzwk = iArr8;
                        zzapnVar.zzafs(zzafr4);
                        break;
                    case 48:
                        this.zzwl = zzapnVar.al();
                        break;
                    case DrawableConstants.CloseButton.WIDGET_HEIGHT_DIPS /* 56 */:
                        this.zzwm = zzapnVar.al();
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
            int i;
            int zzx = super.zzx();
            if (this.zzwg == null || this.zzwg.length <= 0) {
                i = zzx;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.zzwg.length; i3++) {
                    i2 += zzapo.zzafx(this.zzwg[i3]);
                }
                i = zzx + i2 + (this.zzwg.length * 1);
            }
            if (this.zzwh != null && this.zzwh.length > 0) {
                int i4 = 0;
                for (int i5 = 0; i5 < this.zzwh.length; i5++) {
                    i4 += zzapo.zzafx(this.zzwh[i5]);
                }
                i = i + i4 + (this.zzwh.length * 1);
            }
            if (this.zzwi != null && this.zzwi.length > 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzwi.length; i7++) {
                    i6 += zzapo.zzafx(this.zzwi[i7]);
                }
                i = i + i6 + (this.zzwi.length * 1);
            }
            if (this.zzwj != 0) {
                i += zzapo.zzag(4, this.zzwj);
            }
            if (this.zzwk != null && this.zzwk.length > 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < this.zzwk.length; i9++) {
                    i8 += zzapo.zzafx(this.zzwk[i9]);
                }
                i = i + i8 + (this.zzwk.length * 1);
            }
            if (this.zzwl != 0) {
                i += zzapo.zzag(6, this.zzwl);
            }
            return this.zzwm != 0 ? i + zzapo.zzag(7, this.zzwm) : i;
        }
    }

    public static final class zzi extends zzapp<zzi> {
        private static volatile zzi[] zzwn;
        public String name;
        public zzai.zza zzwo;
        public zzd zzwp;

        public zzi() {
            zzan();
        }

        public static zzi[] zzam() {
            if (zzwn == null) {
                synchronized (zzapt.bjF) {
                    if (zzwn == null) {
                        zzwn = new zzi[0];
                    }
                }
            }
            return zzwn;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzi)) {
                return false;
            }
            zzi zziVar = (zzi) obj;
            if (this.name == null) {
                if (zziVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zziVar.name)) {
                return false;
            }
            if (this.zzwo == null) {
                if (zziVar.zzwo != null) {
                    return false;
                }
            } else if (!this.zzwo.equals(zziVar.zzwo)) {
                return false;
            }
            if (this.zzwp == null) {
                if (zziVar.zzwp != null) {
                    return false;
                }
            } else if (!this.zzwp.equals(zziVar.zzwp)) {
                return false;
            }
            return (this.bjx == null || this.bjx.isEmpty()) ? zziVar.bjx == null || zziVar.bjx.isEmpty() : this.bjx.equals(zziVar.bjx);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzwp == null ? 0 : this.zzwp.hashCode()) + (((this.zzwo == null ? 0 : this.zzwo.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
            if (this.bjx != null && !this.bjx.isEmpty()) {
                i = this.bjx.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (!this.name.equals("")) {
                zzapoVar.zzr(1, this.name);
            }
            if (this.zzwo != null) {
                zzapoVar.zza(2, this.zzwo);
            }
            if (this.zzwp != null) {
                zzapoVar.zza(3, this.zzwp);
            }
            super.zza(zzapoVar);
        }

        public zzi zzan() {
            this.name = "";
            this.zzwo = null;
            this.zzwp = null;
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzr, reason: merged with bridge method [inline-methods] */
        public zzi zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzapnVar.readString();
                        break;
                    case 18:
                        if (this.zzwo == null) {
                            this.zzwo = new zzai.zza();
                        }
                        zzapnVar.zza(this.zzwo);
                        break;
                    case 26:
                        if (this.zzwp == null) {
                            this.zzwp = new zzd();
                        }
                        zzapnVar.zza(this.zzwp);
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
            int zzx = super.zzx();
            if (!this.name.equals("")) {
                zzx += zzapo.zzs(1, this.name);
            }
            if (this.zzwo != null) {
                zzx += zzapo.zzc(2, this.zzwo);
            }
            return this.zzwp != null ? zzx + zzapo.zzc(3, this.zzwp) : zzx;
        }
    }

    public static final class zzj extends zzapp<zzj> {
        public zzi[] zzwq;
        public zzf zzwr;
        public String zzws;

        public zzj() {
            zzao();
        }

        public static zzj zzf(byte[] bArr) throws zzapu {
            return (zzj) zzapv.zza(new zzj(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzj)) {
                return false;
            }
            zzj zzjVar = (zzj) obj;
            if (!zzapt.equals(this.zzwq, zzjVar.zzwq)) {
                return false;
            }
            if (this.zzwr == null) {
                if (zzjVar.zzwr != null) {
                    return false;
                }
            } else if (!this.zzwr.equals(zzjVar.zzwr)) {
                return false;
            }
            if (this.zzws == null) {
                if (zzjVar.zzws != null) {
                    return false;
                }
            } else if (!this.zzws.equals(zzjVar.zzws)) {
                return false;
            }
            return (this.bjx == null || this.bjx.isEmpty()) ? zzjVar.bjx == null || zzjVar.bjx.isEmpty() : this.bjx.equals(zzjVar.bjx);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzws == null ? 0 : this.zzws.hashCode()) + (((this.zzwr == null ? 0 : this.zzwr.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.zzwq)) * 31)) * 31)) * 31;
            if (this.bjx != null && !this.bjx.isEmpty()) {
                i = this.bjx.hashCode();
            }
            return hashCode + i;
        }

        @Override // com.google.android.gms.internal.zzapp, com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.zzwq != null && this.zzwq.length > 0) {
                for (int i = 0; i < this.zzwq.length; i++) {
                    zzi zziVar = this.zzwq[i];
                    if (zziVar != null) {
                        zzapoVar.zza(1, zziVar);
                    }
                }
            }
            if (this.zzwr != null) {
                zzapoVar.zza(2, this.zzwr);
            }
            if (!this.zzws.equals("")) {
                zzapoVar.zzr(3, this.zzws);
            }
            super.zza(zzapoVar);
        }

        public zzj zzao() {
            this.zzwq = zzi.zzam();
            this.zzwr = null;
            this.zzws = "";
            this.bjx = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
        public zzj zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        int zzc = zzapy.zzc(zzapnVar, 10);
                        int length = this.zzwq == null ? 0 : this.zzwq.length;
                        zzi[] zziVarArr = new zzi[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.zzwq, 0, zziVarArr, 0, length);
                        }
                        while (length < zziVarArr.length - 1) {
                            zziVarArr[length] = new zzi();
                            zzapnVar.zza(zziVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zziVarArr[length] = new zzi();
                        zzapnVar.zza(zziVarArr[length]);
                        this.zzwq = zziVarArr;
                        break;
                    case 18:
                        if (this.zzwr == null) {
                            this.zzwr = new zzf();
                        }
                        zzapnVar.zza(this.zzwr);
                        break;
                    case 26:
                        this.zzws = zzapnVar.readString();
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
            int zzx = super.zzx();
            if (this.zzwq != null && this.zzwq.length > 0) {
                for (int i = 0; i < this.zzwq.length; i++) {
                    zzi zziVar = this.zzwq[i];
                    if (zziVar != null) {
                        zzx += zzapo.zzc(1, zziVar);
                    }
                }
            }
            if (this.zzwr != null) {
                zzx += zzapo.zzc(2, this.zzwr);
            }
            return !this.zzws.equals("") ? zzx + zzapo.zzs(3, this.zzws) : zzx;
        }
    }
}
