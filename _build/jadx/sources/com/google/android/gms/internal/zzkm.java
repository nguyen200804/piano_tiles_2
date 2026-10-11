package com.google.android.gms.internal;

import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkm {
    private final String[] zzclr;
    private final double[] zzcls;
    private final double[] zzclt;
    private final int[] zzclu;
    private int zzclv;

    public static class zza {
        public final int count;
        public final String name;
        public final double zzclw;
        public final double zzclx;
        public final double zzcly;

        public zza(String str, double d, double d2, double d3, int i) {
            this.name = str;
            this.zzclx = d;
            this.zzclw = d2;
            this.zzcly = d3;
            this.count = i;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return com.google.android.gms.common.internal.zzaa.equal(this.name, zzaVar.name) && this.zzclw == zzaVar.zzclw && this.zzclx == zzaVar.zzclx && this.count == zzaVar.count && Double.compare(this.zzcly, zzaVar.zzcly) == 0;
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.zzaa.hashCode(this.name, Double.valueOf(this.zzclw), Double.valueOf(this.zzclx), Double.valueOf(this.zzcly), Integer.valueOf(this.count));
        }

        public String toString() {
            return com.google.android.gms.common.internal.zzaa.zzx(this).zzg(MediationMetaData.KEY_NAME, this.name).zzg("minBound", Double.valueOf(this.zzclx)).zzg("maxBound", Double.valueOf(this.zzclw)).zzg("percent", Double.valueOf(this.zzcly)).zzg("count", Integer.valueOf(this.count)).toString();
        }
    }

    public static class zzb {
        private final List<String> zzclz = new ArrayList();
        private final List<Double> zzcma = new ArrayList();
        private final List<Double> zzcmb = new ArrayList();

        public zzb zza(String str, double d, double d2) {
            int i;
            int i2 = 0;
            while (true) {
                i = i2;
                if (i >= this.zzclz.size()) {
                    break;
                }
                double doubleValue = this.zzcmb.get(i).doubleValue();
                double doubleValue2 = this.zzcma.get(i).doubleValue();
                if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                    break;
                }
                i2 = i + 1;
            }
            this.zzclz.add(i, str);
            this.zzcmb.add(i, Double.valueOf(d));
            this.zzcma.add(i, Double.valueOf(d2));
            return this;
        }

        public zzkm zzto() {
            return new zzkm(this);
        }
    }

    private zzkm(zzb zzbVar) {
        int size = zzbVar.zzcma.size();
        this.zzclr = (String[]) zzbVar.zzclz.toArray(new String[size]);
        this.zzcls = zzm(zzbVar.zzcma);
        this.zzclt = zzm(zzbVar.zzcmb);
        this.zzclu = new int[size];
        this.zzclv = 0;
    }

    private double[] zzm(List<Double> list) {
        double[] dArr = new double[list.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= dArr.length) {
                return dArr;
            }
            dArr[i2] = list.get(i2).doubleValue();
            i = i2 + 1;
        }
    }

    public List<zza> getBuckets() {
        ArrayList arrayList = new ArrayList(this.zzclr.length);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.zzclr.length) {
                return arrayList;
            }
            arrayList.add(new zza(this.zzclr[i2], this.zzclt[i2], this.zzcls[i2], this.zzclu[i2] / this.zzclv, this.zzclu[i2]));
            i = i2 + 1;
        }
    }

    public void zza(double d) {
        this.zzclv++;
        for (int i = 0; i < this.zzclt.length; i++) {
            if (this.zzclt[i] <= d && d < this.zzcls[i]) {
                int[] iArr = this.zzclu;
                iArr[i] = iArr[i] + 1;
            }
            if (d < this.zzclt[i]) {
                return;
            }
        }
    }
}
