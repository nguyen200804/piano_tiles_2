package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import com.google.ads.AdSize;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzuh {

    public static final class zza extends zzapv {
        private static volatile zza[] ani;
        public Integer amz;
        public zzf anj;
        public zzf ank;
        public Boolean anl;

        public zza() {
            zzbvt();
        }

        public static zza[] zzbvs() {
            if (ani == null) {
                synchronized (zzapt.bjF) {
                    if (ani == null) {
                        ani = new zza[0];
                    }
                }
            }
            return ani;
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
            if (this.anj == null) {
                if (zzaVar.anj != null) {
                    return false;
                }
            } else if (!this.anj.equals(zzaVar.anj)) {
                return false;
            }
            if (this.ank == null) {
                if (zzaVar.ank != null) {
                    return false;
                }
            } else if (!this.ank.equals(zzaVar.ank)) {
                return false;
            }
            return this.anl == null ? zzaVar.anl == null : this.anl.equals(zzaVar.anl);
        }

        public int hashCode() {
            return (((this.ank == null ? 0 : this.ank.hashCode()) + (((this.anj == null ? 0 : this.anj.hashCode()) + (((this.amz == null ? 0 : this.amz.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31) + (this.anl != null ? this.anl.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.amz != null) {
                zzapoVar.zzae(1, this.amz.intValue());
            }
            if (this.anj != null) {
                zzapoVar.zza(2, this.anj);
            }
            if (this.ank != null) {
                zzapoVar.zza(3, this.ank);
            }
            if (this.anl != null) {
                zzapoVar.zzj(4, this.anl.booleanValue());
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzal, reason: merged with bridge method [inline-methods] */
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
                        if (this.anj == null) {
                            this.anj = new zzf();
                        }
                        zzapnVar.zza(this.anj);
                        break;
                    case 26:
                        if (this.ank == null) {
                            this.ank = new zzf();
                        }
                        zzapnVar.zza(this.ank);
                        break;
                    case 32:
                        this.anl = Boolean.valueOf(zzapnVar.an());
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

        public zza zzbvt() {
            this.amz = null;
            this.anj = null;
            this.ank = null;
            this.anl = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.amz != null) {
                zzx += zzapo.zzag(1, this.amz.intValue());
            }
            if (this.anj != null) {
                zzx += zzapo.zzc(2, this.anj);
            }
            if (this.ank != null) {
                zzx += zzapo.zzc(3, this.ank);
            }
            return this.anl != null ? zzx + zzapo.zzk(4, this.anl.booleanValue()) : zzx;
        }
    }

    public static final class zzb extends zzapv {
        private static volatile zzb[] anm;
        public zzc[] ann;
        public Long ano;
        public Long anp;
        public Integer count;
        public String name;

        public zzb() {
            zzbvv();
        }

        public static zzb[] zzbvu() {
            if (anm == null) {
                synchronized (zzapt.bjF) {
                    if (anm == null) {
                        anm = new zzb[0];
                    }
                }
            }
            return anm;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (!zzapt.equals(this.ann, zzbVar.ann)) {
                return false;
            }
            if (this.name == null) {
                if (zzbVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzbVar.name)) {
                return false;
            }
            if (this.ano == null) {
                if (zzbVar.ano != null) {
                    return false;
                }
            } else if (!this.ano.equals(zzbVar.ano)) {
                return false;
            }
            if (this.anp == null) {
                if (zzbVar.anp != null) {
                    return false;
                }
            } else if (!this.anp.equals(zzbVar.anp)) {
                return false;
            }
            return this.count == null ? zzbVar.count == null : this.count.equals(zzbVar.count);
        }

        public int hashCode() {
            return (((this.anp == null ? 0 : this.anp.hashCode()) + (((this.ano == null ? 0 : this.ano.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.ann)) * 31)) * 31)) * 31)) * 31) + (this.count != null ? this.count.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.ann != null && this.ann.length > 0) {
                for (int i = 0; i < this.ann.length; i++) {
                    zzc zzcVar = this.ann[i];
                    if (zzcVar != null) {
                        zzapoVar.zza(1, zzcVar);
                    }
                }
            }
            if (this.name != null) {
                zzapoVar.zzr(2, this.name);
            }
            if (this.ano != null) {
                zzapoVar.zzb(3, this.ano.longValue());
            }
            if (this.anp != null) {
                zzapoVar.zzb(4, this.anp.longValue());
            }
            if (this.count != null) {
                zzapoVar.zzae(5, this.count.intValue());
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzam, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        int zzc = zzapy.zzc(zzapnVar, 10);
                        int length = this.ann == null ? 0 : this.ann.length;
                        zzc[] zzcVarArr = new zzc[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.ann, 0, zzcVarArr, 0, length);
                        }
                        while (length < zzcVarArr.length - 1) {
                            zzcVarArr[length] = new zzc();
                            zzapnVar.zza(zzcVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzcVarArr[length] = new zzc();
                        zzapnVar.zza(zzcVarArr[length]);
                        this.ann = zzcVarArr;
                        break;
                    case 18:
                        this.name = zzapnVar.readString();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.ano = Long.valueOf(zzapnVar.ak());
                        break;
                    case 32:
                        this.anp = Long.valueOf(zzapnVar.ak());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                        this.count = Integer.valueOf(zzapnVar.al());
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

        public zzb zzbvv() {
            this.ann = zzc.zzbvw();
            this.name = null;
            this.ano = null;
            this.anp = null;
            this.count = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.ann != null && this.ann.length > 0) {
                for (int i = 0; i < this.ann.length; i++) {
                    zzc zzcVar = this.ann[i];
                    if (zzcVar != null) {
                        zzx += zzapo.zzc(1, zzcVar);
                    }
                }
            }
            if (this.name != null) {
                zzx += zzapo.zzs(2, this.name);
            }
            if (this.ano != null) {
                zzx += zzapo.zze(3, this.ano.longValue());
            }
            if (this.anp != null) {
                zzx += zzapo.zze(4, this.anp.longValue());
            }
            return this.count != null ? zzx + zzapo.zzag(5, this.count.intValue()) : zzx;
        }
    }

    public static final class zzc extends zzapv {
        private static volatile zzc[] anq;
        public Float amv;
        public Double amw;
        public Long anr;
        public String name;
        public String zD;

        public zzc() {
            zzbvx();
        }

        public static zzc[] zzbvw() {
            if (anq == null) {
                synchronized (zzapt.bjF) {
                    if (anq == null) {
                        anq = new zzc[0];
                    }
                }
            }
            return anq;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.name == null) {
                if (zzcVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzcVar.name)) {
                return false;
            }
            if (this.zD == null) {
                if (zzcVar.zD != null) {
                    return false;
                }
            } else if (!this.zD.equals(zzcVar.zD)) {
                return false;
            }
            if (this.anr == null) {
                if (zzcVar.anr != null) {
                    return false;
                }
            } else if (!this.anr.equals(zzcVar.anr)) {
                return false;
            }
            if (this.amv == null) {
                if (zzcVar.amv != null) {
                    return false;
                }
            } else if (!this.amv.equals(zzcVar.amv)) {
                return false;
            }
            return this.amw == null ? zzcVar.amw == null : this.amw.equals(zzcVar.amw);
        }

        public int hashCode() {
            return (((this.amv == null ? 0 : this.amv.hashCode()) + (((this.anr == null ? 0 : this.anr.hashCode()) + (((this.zD == null ? 0 : this.zD.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31) + (this.amw != null ? this.amw.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.name != null) {
                zzapoVar.zzr(1, this.name);
            }
            if (this.zD != null) {
                zzapoVar.zzr(2, this.zD);
            }
            if (this.anr != null) {
                zzapoVar.zzb(3, this.anr.longValue());
            }
            if (this.amv != null) {
                zzapoVar.zzc(4, this.amv.floatValue());
            }
            if (this.amw != null) {
                zzapoVar.zza(5, this.amw.doubleValue());
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzan, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        this.name = zzapnVar.readString();
                        break;
                    case 18:
                        this.zD = zzapnVar.readString();
                        break;
                    case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                        this.anr = Long.valueOf(zzapnVar.ak());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                        this.amv = Float.valueOf(zzapnVar.readFloat());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                        this.amw = Double.valueOf(zzapnVar.readDouble());
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

        public zzc zzbvx() {
            this.name = null;
            this.zD = null;
            this.anr = null;
            this.amv = null;
            this.amw = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.name != null) {
                zzx += zzapo.zzs(1, this.name);
            }
            if (this.zD != null) {
                zzx += zzapo.zzs(2, this.zD);
            }
            if (this.anr != null) {
                zzx += zzapo.zze(3, this.anr.longValue());
            }
            if (this.amv != null) {
                zzx += zzapo.zzd(4, this.amv.floatValue());
            }
            return this.amw != null ? zzx + zzapo.zzb(5, this.amw.doubleValue()) : zzx;
        }
    }

    public static final class zzd extends zzapv {
        public zze[] ans;

        public zzd() {
            zzbvy();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof zzd) && zzapt.equals(this.ans, ((zzd) obj).ans);
        }

        public int hashCode() {
            return ((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.ans);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.ans != null && this.ans.length > 0) {
                for (int i = 0; i < this.ans.length; i++) {
                    zze zzeVar = this.ans[i];
                    if (zzeVar != null) {
                        zzapoVar.zza(1, zzeVar);
                    }
                }
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzao, reason: merged with bridge method [inline-methods] */
        public zzd zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 10:
                        int zzc = zzapy.zzc(zzapnVar, 10);
                        int length = this.ans == null ? 0 : this.ans.length;
                        zze[] zzeVarArr = new zze[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.ans, 0, zzeVarArr, 0, length);
                        }
                        while (length < zzeVarArr.length - 1) {
                            zzeVarArr[length] = new zze();
                            zzapnVar.zza(zzeVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzeVarArr[length] = new zze();
                        zzapnVar.zza(zzeVarArr[length]);
                        this.ans = zzeVarArr;
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

        public zzd zzbvy() {
            this.ans = zze.zzbvz();
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.ans != null && this.ans.length > 0) {
                for (int i = 0; i < this.ans.length; i++) {
                    zze zzeVar = this.ans[i];
                    if (zzeVar != null) {
                        zzx += zzapo.zzc(1, zzeVar);
                    }
                }
            }
            return zzx;
        }
    }

    public static final class zze extends zzapv {
        private static volatile zze[] ant;
        public String aav;
        public String aic;
        public String aid;
        public String aig;
        public String aik;
        public Long anA;
        public Long anB;
        public String anC;
        public String anD;
        public String anE;
        public Integer anF;
        public Long anG;
        public Long anH;
        public String anI;
        public Boolean anJ;
        public String anK;
        public Long anL;
        public Integer anM;
        public Boolean anN;
        public zza[] anO;
        public Integer anP;
        public Integer anQ;
        public Integer anR;
        public String anS;
        public Integer anu;
        public zzb[] anv;
        public zzg[] anw;
        public Long anx;
        public Long any;
        public Long anz;
        public String zzck;
        public String zzct;

        public zze() {
            zzbwa();
        }

        public static zze[] zzbvz() {
            if (ant == null) {
                synchronized (zzapt.bjF) {
                    if (ant == null) {
                        ant = new zze[0];
                    }
                }
            }
            return ant;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.anu == null) {
                if (zzeVar.anu != null) {
                    return false;
                }
            } else if (!this.anu.equals(zzeVar.anu)) {
                return false;
            }
            if (zzapt.equals(this.anv, zzeVar.anv) && zzapt.equals(this.anw, zzeVar.anw)) {
                if (this.anx == null) {
                    if (zzeVar.anx != null) {
                        return false;
                    }
                } else if (!this.anx.equals(zzeVar.anx)) {
                    return false;
                }
                if (this.any == null) {
                    if (zzeVar.any != null) {
                        return false;
                    }
                } else if (!this.any.equals(zzeVar.any)) {
                    return false;
                }
                if (this.anz == null) {
                    if (zzeVar.anz != null) {
                        return false;
                    }
                } else if (!this.anz.equals(zzeVar.anz)) {
                    return false;
                }
                if (this.anA == null) {
                    if (zzeVar.anA != null) {
                        return false;
                    }
                } else if (!this.anA.equals(zzeVar.anA)) {
                    return false;
                }
                if (this.anB == null) {
                    if (zzeVar.anB != null) {
                        return false;
                    }
                } else if (!this.anB.equals(zzeVar.anB)) {
                    return false;
                }
                if (this.anC == null) {
                    if (zzeVar.anC != null) {
                        return false;
                    }
                } else if (!this.anC.equals(zzeVar.anC)) {
                    return false;
                }
                if (this.zzct == null) {
                    if (zzeVar.zzct != null) {
                        return false;
                    }
                } else if (!this.zzct.equals(zzeVar.zzct)) {
                    return false;
                }
                if (this.anD == null) {
                    if (zzeVar.anD != null) {
                        return false;
                    }
                } else if (!this.anD.equals(zzeVar.anD)) {
                    return false;
                }
                if (this.anE == null) {
                    if (zzeVar.anE != null) {
                        return false;
                    }
                } else if (!this.anE.equals(zzeVar.anE)) {
                    return false;
                }
                if (this.anF == null) {
                    if (zzeVar.anF != null) {
                        return false;
                    }
                } else if (!this.anF.equals(zzeVar.anF)) {
                    return false;
                }
                if (this.aid == null) {
                    if (zzeVar.aid != null) {
                        return false;
                    }
                } else if (!this.aid.equals(zzeVar.aid)) {
                    return false;
                }
                if (this.zzck == null) {
                    if (zzeVar.zzck != null) {
                        return false;
                    }
                } else if (!this.zzck.equals(zzeVar.zzck)) {
                    return false;
                }
                if (this.aav == null) {
                    if (zzeVar.aav != null) {
                        return false;
                    }
                } else if (!this.aav.equals(zzeVar.aav)) {
                    return false;
                }
                if (this.anG == null) {
                    if (zzeVar.anG != null) {
                        return false;
                    }
                } else if (!this.anG.equals(zzeVar.anG)) {
                    return false;
                }
                if (this.anH == null) {
                    if (zzeVar.anH != null) {
                        return false;
                    }
                } else if (!this.anH.equals(zzeVar.anH)) {
                    return false;
                }
                if (this.anI == null) {
                    if (zzeVar.anI != null) {
                        return false;
                    }
                } else if (!this.anI.equals(zzeVar.anI)) {
                    return false;
                }
                if (this.anJ == null) {
                    if (zzeVar.anJ != null) {
                        return false;
                    }
                } else if (!this.anJ.equals(zzeVar.anJ)) {
                    return false;
                }
                if (this.anK == null) {
                    if (zzeVar.anK != null) {
                        return false;
                    }
                } else if (!this.anK.equals(zzeVar.anK)) {
                    return false;
                }
                if (this.anL == null) {
                    if (zzeVar.anL != null) {
                        return false;
                    }
                } else if (!this.anL.equals(zzeVar.anL)) {
                    return false;
                }
                if (this.anM == null) {
                    if (zzeVar.anM != null) {
                        return false;
                    }
                } else if (!this.anM.equals(zzeVar.anM)) {
                    return false;
                }
                if (this.aig == null) {
                    if (zzeVar.aig != null) {
                        return false;
                    }
                } else if (!this.aig.equals(zzeVar.aig)) {
                    return false;
                }
                if (this.aic == null) {
                    if (zzeVar.aic != null) {
                        return false;
                    }
                } else if (!this.aic.equals(zzeVar.aic)) {
                    return false;
                }
                if (this.anN == null) {
                    if (zzeVar.anN != null) {
                        return false;
                    }
                } else if (!this.anN.equals(zzeVar.anN)) {
                    return false;
                }
                if (!zzapt.equals(this.anO, zzeVar.anO)) {
                    return false;
                }
                if (this.aik == null) {
                    if (zzeVar.aik != null) {
                        return false;
                    }
                } else if (!this.aik.equals(zzeVar.aik)) {
                    return false;
                }
                if (this.anP == null) {
                    if (zzeVar.anP != null) {
                        return false;
                    }
                } else if (!this.anP.equals(zzeVar.anP)) {
                    return false;
                }
                if (this.anQ == null) {
                    if (zzeVar.anQ != null) {
                        return false;
                    }
                } else if (!this.anQ.equals(zzeVar.anQ)) {
                    return false;
                }
                if (this.anR == null) {
                    if (zzeVar.anR != null) {
                        return false;
                    }
                } else if (!this.anR.equals(zzeVar.anR)) {
                    return false;
                }
                return this.anS == null ? zzeVar.anS == null : this.anS.equals(zzeVar.anS);
            }
            return false;
        }

        public int hashCode() {
            return (((this.anR == null ? 0 : this.anR.hashCode()) + (((this.anQ == null ? 0 : this.anQ.hashCode()) + (((this.anP == null ? 0 : this.anP.hashCode()) + (((this.aik == null ? 0 : this.aik.hashCode()) + (((((this.anN == null ? 0 : this.anN.hashCode()) + (((this.aic == null ? 0 : this.aic.hashCode()) + (((this.aig == null ? 0 : this.aig.hashCode()) + (((this.anM == null ? 0 : this.anM.hashCode()) + (((this.anL == null ? 0 : this.anL.hashCode()) + (((this.anK == null ? 0 : this.anK.hashCode()) + (((this.anJ == null ? 0 : this.anJ.hashCode()) + (((this.anI == null ? 0 : this.anI.hashCode()) + (((this.anH == null ? 0 : this.anH.hashCode()) + (((this.anG == null ? 0 : this.anG.hashCode()) + (((this.aav == null ? 0 : this.aav.hashCode()) + (((this.zzck == null ? 0 : this.zzck.hashCode()) + (((this.aid == null ? 0 : this.aid.hashCode()) + (((this.anF == null ? 0 : this.anF.hashCode()) + (((this.anE == null ? 0 : this.anE.hashCode()) + (((this.anD == null ? 0 : this.anD.hashCode()) + (((this.zzct == null ? 0 : this.zzct.hashCode()) + (((this.anC == null ? 0 : this.anC.hashCode()) + (((this.anB == null ? 0 : this.anB.hashCode()) + (((this.anA == null ? 0 : this.anA.hashCode()) + (((this.anz == null ? 0 : this.anz.hashCode()) + (((this.any == null ? 0 : this.any.hashCode()) + (((this.anx == null ? 0 : this.anx.hashCode()) + (((((((this.anu == null ? 0 : this.anu.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + zzapt.hashCode(this.anv)) * 31) + zzapt.hashCode(this.anw)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + zzapt.hashCode(this.anO)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.anS != null ? this.anS.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.anu != null) {
                zzapoVar.zzae(1, this.anu.intValue());
            }
            if (this.anv != null && this.anv.length > 0) {
                for (int i = 0; i < this.anv.length; i++) {
                    zzb zzbVar = this.anv[i];
                    if (zzbVar != null) {
                        zzapoVar.zza(2, zzbVar);
                    }
                }
            }
            if (this.anw != null && this.anw.length > 0) {
                for (int i2 = 0; i2 < this.anw.length; i2++) {
                    zzg zzgVar = this.anw[i2];
                    if (zzgVar != null) {
                        zzapoVar.zza(3, zzgVar);
                    }
                }
            }
            if (this.anx != null) {
                zzapoVar.zzb(4, this.anx.longValue());
            }
            if (this.any != null) {
                zzapoVar.zzb(5, this.any.longValue());
            }
            if (this.anz != null) {
                zzapoVar.zzb(6, this.anz.longValue());
            }
            if (this.anB != null) {
                zzapoVar.zzb(7, this.anB.longValue());
            }
            if (this.anC != null) {
                zzapoVar.zzr(8, this.anC);
            }
            if (this.zzct != null) {
                zzapoVar.zzr(9, this.zzct);
            }
            if (this.anD != null) {
                zzapoVar.zzr(10, this.anD);
            }
            if (this.anE != null) {
                zzapoVar.zzr(11, this.anE);
            }
            if (this.anF != null) {
                zzapoVar.zzae(12, this.anF.intValue());
            }
            if (this.aid != null) {
                zzapoVar.zzr(13, this.aid);
            }
            if (this.zzck != null) {
                zzapoVar.zzr(14, this.zzck);
            }
            if (this.aav != null) {
                zzapoVar.zzr(16, this.aav);
            }
            if (this.anG != null) {
                zzapoVar.zzb(17, this.anG.longValue());
            }
            if (this.anH != null) {
                zzapoVar.zzb(18, this.anH.longValue());
            }
            if (this.anI != null) {
                zzapoVar.zzr(19, this.anI);
            }
            if (this.anJ != null) {
                zzapoVar.zzj(20, this.anJ.booleanValue());
            }
            if (this.anK != null) {
                zzapoVar.zzr(21, this.anK);
            }
            if (this.anL != null) {
                zzapoVar.zzb(22, this.anL.longValue());
            }
            if (this.anM != null) {
                zzapoVar.zzae(23, this.anM.intValue());
            }
            if (this.aig != null) {
                zzapoVar.zzr(24, this.aig);
            }
            if (this.aic != null) {
                zzapoVar.zzr(25, this.aic);
            }
            if (this.anA != null) {
                zzapoVar.zzb(26, this.anA.longValue());
            }
            if (this.anN != null) {
                zzapoVar.zzj(28, this.anN.booleanValue());
            }
            if (this.anO != null && this.anO.length > 0) {
                for (int i3 = 0; i3 < this.anO.length; i3++) {
                    zza zzaVar = this.anO[i3];
                    if (zzaVar != null) {
                        zzapoVar.zza(29, zzaVar);
                    }
                }
            }
            if (this.aik != null) {
                zzapoVar.zzr(30, this.aik);
            }
            if (this.anP != null) {
                zzapoVar.zzae(31, this.anP.intValue());
            }
            if (this.anQ != null) {
                zzapoVar.zzae(32, this.anQ.intValue());
            }
            if (this.anR != null) {
                zzapoVar.zzae(33, this.anR.intValue());
            }
            if (this.anS != null) {
                zzapoVar.zzr(34, this.anS);
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzap, reason: merged with bridge method [inline-methods] */
        public zze zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.anu = Integer.valueOf(zzapnVar.al());
                        break;
                    case 18:
                        int zzc = zzapy.zzc(zzapnVar, 18);
                        int length = this.anv == null ? 0 : this.anv.length;
                        zzb[] zzbVarArr = new zzb[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.anv, 0, zzbVarArr, 0, length);
                        }
                        while (length < zzbVarArr.length - 1) {
                            zzbVarArr[length] = new zzb();
                            zzapnVar.zza(zzbVarArr[length]);
                            zzapnVar.ah();
                            length++;
                        }
                        zzbVarArr[length] = new zzb();
                        zzapnVar.zza(zzbVarArr[length]);
                        this.anv = zzbVarArr;
                        break;
                    case 26:
                        int zzc2 = zzapy.zzc(zzapnVar, 26);
                        int length2 = this.anw == null ? 0 : this.anw.length;
                        zzg[] zzgVarArr = new zzg[zzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.anw, 0, zzgVarArr, 0, length2);
                        }
                        while (length2 < zzgVarArr.length - 1) {
                            zzgVarArr[length2] = new zzg();
                            zzapnVar.zza(zzgVarArr[length2]);
                            zzapnVar.ah();
                            length2++;
                        }
                        zzgVarArr[length2] = new zzg();
                        zzapnVar.zza(zzgVarArr[length2]);
                        this.anw = zzgVarArr;
                        break;
                    case 32:
                        this.anx = Long.valueOf(zzapnVar.ak());
                        break;
                    case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                        this.any = Long.valueOf(zzapnVar.ak());
                        break;
                    case 48:
                        this.anz = Long.valueOf(zzapnVar.ak());
                        break;
                    case DrawableConstants.CloseButton.WIDGET_HEIGHT_DIPS /* 56 */:
                        this.anB = Long.valueOf(zzapnVar.ak());
                        break;
                    case 66:
                        this.anC = zzapnVar.readString();
                        break;
                    case 74:
                        this.zzct = zzapnVar.readString();
                        break;
                    case 82:
                        this.anD = zzapnVar.readString();
                        break;
                    case AdSize.LARGE_AD_HEIGHT /* 90 */:
                        this.anE = zzapnVar.readString();
                        break;
                    case 96:
                        this.anF = Integer.valueOf(zzapnVar.al());
                        break;
                    case 106:
                        this.aid = zzapnVar.readString();
                        break;
                    case 114:
                        this.zzck = zzapnVar.readString();
                        break;
                    case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                        this.aav = zzapnVar.readString();
                        break;
                    case 136:
                        this.anG = Long.valueOf(zzapnVar.ak());
                        break;
                    case 144:
                        this.anH = Long.valueOf(zzapnVar.ak());
                        break;
                    case 154:
                        this.anI = zzapnVar.readString();
                        break;
                    case 160:
                        this.anJ = Boolean.valueOf(zzapnVar.an());
                        break;
                    case 170:
                        this.anK = zzapnVar.readString();
                        break;
                    case 176:
                        this.anL = Long.valueOf(zzapnVar.ak());
                        break;
                    case 184:
                        this.anM = Integer.valueOf(zzapnVar.al());
                        break;
                    case 194:
                        this.aig = zzapnVar.readString();
                        break;
                    case 202:
                        this.aic = zzapnVar.readString();
                        break;
                    case 208:
                        this.anA = Long.valueOf(zzapnVar.ak());
                        break;
                    case 224:
                        this.anN = Boolean.valueOf(zzapnVar.an());
                        break;
                    case 234:
                        int zzc3 = zzapy.zzc(zzapnVar, 234);
                        int length3 = this.anO == null ? 0 : this.anO.length;
                        zza[] zzaVarArr = new zza[zzc3 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.anO, 0, zzaVarArr, 0, length3);
                        }
                        while (length3 < zzaVarArr.length - 1) {
                            zzaVarArr[length3] = new zza();
                            zzapnVar.zza(zzaVarArr[length3]);
                            zzapnVar.ah();
                            length3++;
                        }
                        zzaVarArr[length3] = new zza();
                        zzapnVar.zza(zzaVarArr[length3]);
                        this.anO = zzaVarArr;
                        break;
                    case 242:
                        this.aik = zzapnVar.readString();
                        break;
                    case 248:
                        this.anP = Integer.valueOf(zzapnVar.al());
                        break;
                    case 256:
                        this.anQ = Integer.valueOf(zzapnVar.al());
                        break;
                    case 264:
                        this.anR = Integer.valueOf(zzapnVar.al());
                        break;
                    case 274:
                        this.anS = zzapnVar.readString();
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

        public zze zzbwa() {
            this.anu = null;
            this.anv = zzb.zzbvu();
            this.anw = zzg.zzbwc();
            this.anx = null;
            this.any = null;
            this.anz = null;
            this.anA = null;
            this.anB = null;
            this.anC = null;
            this.zzct = null;
            this.anD = null;
            this.anE = null;
            this.anF = null;
            this.aid = null;
            this.zzck = null;
            this.aav = null;
            this.anG = null;
            this.anH = null;
            this.anI = null;
            this.anJ = null;
            this.anK = null;
            this.anL = null;
            this.anM = null;
            this.aig = null;
            this.aic = null;
            this.anN = null;
            this.anO = zza.zzbvs();
            this.aik = null;
            this.anP = null;
            this.anQ = null;
            this.anR = null;
            this.anS = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.anu != null) {
                zzx += zzapo.zzag(1, this.anu.intValue());
            }
            if (this.anv != null && this.anv.length > 0) {
                int i = zzx;
                for (int i2 = 0; i2 < this.anv.length; i2++) {
                    zzb zzbVar = this.anv[i2];
                    if (zzbVar != null) {
                        i += zzapo.zzc(2, zzbVar);
                    }
                }
                zzx = i;
            }
            if (this.anw != null && this.anw.length > 0) {
                int i3 = zzx;
                for (int i4 = 0; i4 < this.anw.length; i4++) {
                    zzg zzgVar = this.anw[i4];
                    if (zzgVar != null) {
                        i3 += zzapo.zzc(3, zzgVar);
                    }
                }
                zzx = i3;
            }
            if (this.anx != null) {
                zzx += zzapo.zze(4, this.anx.longValue());
            }
            if (this.any != null) {
                zzx += zzapo.zze(5, this.any.longValue());
            }
            if (this.anz != null) {
                zzx += zzapo.zze(6, this.anz.longValue());
            }
            if (this.anB != null) {
                zzx += zzapo.zze(7, this.anB.longValue());
            }
            if (this.anC != null) {
                zzx += zzapo.zzs(8, this.anC);
            }
            if (this.zzct != null) {
                zzx += zzapo.zzs(9, this.zzct);
            }
            if (this.anD != null) {
                zzx += zzapo.zzs(10, this.anD);
            }
            if (this.anE != null) {
                zzx += zzapo.zzs(11, this.anE);
            }
            if (this.anF != null) {
                zzx += zzapo.zzag(12, this.anF.intValue());
            }
            if (this.aid != null) {
                zzx += zzapo.zzs(13, this.aid);
            }
            if (this.zzck != null) {
                zzx += zzapo.zzs(14, this.zzck);
            }
            if (this.aav != null) {
                zzx += zzapo.zzs(16, this.aav);
            }
            if (this.anG != null) {
                zzx += zzapo.zze(17, this.anG.longValue());
            }
            if (this.anH != null) {
                zzx += zzapo.zze(18, this.anH.longValue());
            }
            if (this.anI != null) {
                zzx += zzapo.zzs(19, this.anI);
            }
            if (this.anJ != null) {
                zzx += zzapo.zzk(20, this.anJ.booleanValue());
            }
            if (this.anK != null) {
                zzx += zzapo.zzs(21, this.anK);
            }
            if (this.anL != null) {
                zzx += zzapo.zze(22, this.anL.longValue());
            }
            if (this.anM != null) {
                zzx += zzapo.zzag(23, this.anM.intValue());
            }
            if (this.aig != null) {
                zzx += zzapo.zzs(24, this.aig);
            }
            if (this.aic != null) {
                zzx += zzapo.zzs(25, this.aic);
            }
            if (this.anA != null) {
                zzx += zzapo.zze(26, this.anA.longValue());
            }
            if (this.anN != null) {
                zzx += zzapo.zzk(28, this.anN.booleanValue());
            }
            if (this.anO != null && this.anO.length > 0) {
                for (int i5 = 0; i5 < this.anO.length; i5++) {
                    zza zzaVar = this.anO[i5];
                    if (zzaVar != null) {
                        zzx += zzapo.zzc(29, zzaVar);
                    }
                }
            }
            if (this.aik != null) {
                zzx += zzapo.zzs(30, this.aik);
            }
            if (this.anP != null) {
                zzx += zzapo.zzag(31, this.anP.intValue());
            }
            if (this.anQ != null) {
                zzx += zzapo.zzag(32, this.anQ.intValue());
            }
            if (this.anR != null) {
                zzx += zzapo.zzag(33, this.anR.intValue());
            }
            return this.anS != null ? zzx + zzapo.zzs(34, this.anS) : zzx;
        }
    }

    public static final class zzf extends zzapv {
        public long[] anT;
        public long[] anU;

        public zzf() {
            zzbwb();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            return zzapt.equals(this.anT, zzfVar.anT) && zzapt.equals(this.anU, zzfVar.anU);
        }

        public int hashCode() {
            return ((((getClass().getName().hashCode() + 527) * 31) + zzapt.hashCode(this.anT)) * 31) + zzapt.hashCode(this.anU);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.anT != null && this.anT.length > 0) {
                for (int i = 0; i < this.anT.length; i++) {
                    zzapoVar.zza(1, this.anT[i]);
                }
            }
            if (this.anU != null && this.anU.length > 0) {
                for (int i2 = 0; i2 < this.anU.length; i2++) {
                    zzapoVar.zza(2, this.anU[i2]);
                }
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzaq, reason: merged with bridge method [inline-methods] */
        public zzf zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        int zzc = zzapy.zzc(zzapnVar, 8);
                        int length = this.anT == null ? 0 : this.anT.length;
                        long[] jArr = new long[zzc + length];
                        if (length != 0) {
                            System.arraycopy(this.anT, 0, jArr, 0, length);
                        }
                        while (length < jArr.length - 1) {
                            jArr[length] = zzapnVar.aj();
                            zzapnVar.ah();
                            length++;
                        }
                        jArr[length] = zzapnVar.aj();
                        this.anT = jArr;
                        break;
                    case 10:
                        int zzafr = zzapnVar.zzafr(zzapnVar.aq());
                        int position = zzapnVar.getPosition();
                        int i = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.aj();
                            i++;
                        }
                        zzapnVar.zzaft(position);
                        int length2 = this.anT == null ? 0 : this.anT.length;
                        long[] jArr2 = new long[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.anT, 0, jArr2, 0, length2);
                        }
                        while (length2 < jArr2.length) {
                            jArr2[length2] = zzapnVar.aj();
                            length2++;
                        }
                        this.anT = jArr2;
                        zzapnVar.zzafs(zzafr);
                        break;
                    case 16:
                        int zzc2 = zzapy.zzc(zzapnVar, 16);
                        int length3 = this.anU == null ? 0 : this.anU.length;
                        long[] jArr3 = new long[zzc2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.anU, 0, jArr3, 0, length3);
                        }
                        while (length3 < jArr3.length - 1) {
                            jArr3[length3] = zzapnVar.aj();
                            zzapnVar.ah();
                            length3++;
                        }
                        jArr3[length3] = zzapnVar.aj();
                        this.anU = jArr3;
                        break;
                    case 18:
                        int zzafr2 = zzapnVar.zzafr(zzapnVar.aq());
                        int position2 = zzapnVar.getPosition();
                        int i2 = 0;
                        while (zzapnVar.av() > 0) {
                            zzapnVar.aj();
                            i2++;
                        }
                        zzapnVar.zzaft(position2);
                        int length4 = this.anU == null ? 0 : this.anU.length;
                        long[] jArr4 = new long[i2 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.anU, 0, jArr4, 0, length4);
                        }
                        while (length4 < jArr4.length) {
                            jArr4[length4] = zzapnVar.aj();
                            length4++;
                        }
                        this.anU = jArr4;
                        zzapnVar.zzafs(zzafr2);
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

        public zzf zzbwb() {
            this.anT = zzapy.bjI;
            this.anU = zzapy.bjI;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int i;
            int zzx = super.zzx();
            if (this.anT == null || this.anT.length <= 0) {
                i = zzx;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.anT.length; i3++) {
                    i2 += zzapo.zzcx(this.anT[i3]);
                }
                i = zzx + i2 + (this.anT.length * 1);
            }
            if (this.anU == null || this.anU.length <= 0) {
                return i;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.anU.length; i5++) {
                i4 += zzapo.zzcx(this.anU[i5]);
            }
            return i + i4 + (this.anU.length * 1);
        }
    }

    public static final class zzg extends zzapv {
        private static volatile zzg[] anV;
        public Float amv;
        public Double amw;
        public Long anW;
        public Long anr;
        public String name;
        public String zD;

        public zzg() {
            zzbwd();
        }

        public static zzg[] zzbwc() {
            if (anV == null) {
                synchronized (zzapt.bjF) {
                    if (anV == null) {
                        anV = new zzg[0];
                    }
                }
            }
            return anV;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzg)) {
                return false;
            }
            zzg zzgVar = (zzg) obj;
            if (this.anW == null) {
                if (zzgVar.anW != null) {
                    return false;
                }
            } else if (!this.anW.equals(zzgVar.anW)) {
                return false;
            }
            if (this.name == null) {
                if (zzgVar.name != null) {
                    return false;
                }
            } else if (!this.name.equals(zzgVar.name)) {
                return false;
            }
            if (this.zD == null) {
                if (zzgVar.zD != null) {
                    return false;
                }
            } else if (!this.zD.equals(zzgVar.zD)) {
                return false;
            }
            if (this.anr == null) {
                if (zzgVar.anr != null) {
                    return false;
                }
            } else if (!this.anr.equals(zzgVar.anr)) {
                return false;
            }
            if (this.amv == null) {
                if (zzgVar.amv != null) {
                    return false;
                }
            } else if (!this.amv.equals(zzgVar.amv)) {
                return false;
            }
            return this.amw == null ? zzgVar.amw == null : this.amw.equals(zzgVar.amw);
        }

        public int hashCode() {
            return (((this.amv == null ? 0 : this.amv.hashCode()) + (((this.anr == null ? 0 : this.anr.hashCode()) + (((this.zD == null ? 0 : this.zD.hashCode()) + (((this.name == null ? 0 : this.name.hashCode()) + (((this.anW == null ? 0 : this.anW.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.amw != null ? this.amw.hashCode() : 0);
        }

        @Override // com.google.android.gms.internal.zzapv
        public void zza(zzapo zzapoVar) throws IOException {
            if (this.anW != null) {
                zzapoVar.zzb(1, this.anW.longValue());
            }
            if (this.name != null) {
                zzapoVar.zzr(2, this.name);
            }
            if (this.zD != null) {
                zzapoVar.zzr(3, this.zD);
            }
            if (this.anr != null) {
                zzapoVar.zzb(4, this.anr.longValue());
            }
            if (this.amv != null) {
                zzapoVar.zzc(5, this.amv.floatValue());
            }
            if (this.amw != null) {
                zzapoVar.zza(6, this.amw.doubleValue());
            }
            super.zza(zzapoVar);
        }

        @Override // com.google.android.gms.internal.zzapv
        /* renamed from: zzar, reason: merged with bridge method [inline-methods] */
        public zzg zzb(zzapn zzapnVar) throws IOException {
            while (true) {
                int ah = zzapnVar.ah();
                switch (ah) {
                    case 0:
                        break;
                    case 8:
                        this.anW = Long.valueOf(zzapnVar.ak());
                        break;
                    case 18:
                        this.name = zzapnVar.readString();
                        break;
                    case 26:
                        this.zD = zzapnVar.readString();
                        break;
                    case 32:
                        this.anr = Long.valueOf(zzapnVar.ak());
                        break;
                    case 45:
                        this.amv = Float.valueOf(zzapnVar.readFloat());
                        break;
                    case 49:
                        this.amw = Double.valueOf(zzapnVar.readDouble());
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

        public zzg zzbwd() {
            this.anW = null;
            this.name = null;
            this.zD = null;
            this.anr = null;
            this.amv = null;
            this.amw = null;
            this.bjG = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapv
        protected int zzx() {
            int zzx = super.zzx();
            if (this.anW != null) {
                zzx += zzapo.zze(1, this.anW.longValue());
            }
            if (this.name != null) {
                zzx += zzapo.zzs(2, this.name);
            }
            if (this.zD != null) {
                zzx += zzapo.zzs(3, this.zD);
            }
            if (this.anr != null) {
                zzx += zzapo.zze(4, this.anr.longValue());
            }
            if (this.amv != null) {
                zzx += zzapo.zzd(5, this.amv.floatValue());
            }
            return this.amw != null ? zzx + zzapo.zzb(6, this.amw.doubleValue()) : zzx;
        }
    }
}
