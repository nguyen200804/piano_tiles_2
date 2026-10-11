package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Flag extends AbstractSafeParcelable implements Comparable<Flag> {
    public static final Parcelable.Creator<Flag> CREATOR = new zzb();
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    public static final zza arp = new zza();
    final boolean ZV;
    final double ZX;
    final long arl;
    final byte[] arm;
    public final int arn;
    public final int aro;
    final int mVersionCode;
    public final String name;
    final String zD;

    public static class zza implements Comparator<Flag> {
        @Override // java.util.Comparator
        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
        public int compare(Flag flag, Flag flag2) {
            return flag.aro == flag2.aro ? flag.name.compareTo(flag2.name) : flag.aro - flag2.aro;
        }
    }

    Flag(int i, String str, long j, boolean z, double d, String str2, byte[] bArr, int i2, int i3) {
        this.mVersionCode = i;
        this.name = str;
        this.arl = j;
        this.ZV = z;
        this.ZX = d;
        this.zD = str2;
        this.arm = bArr;
        this.arn = i2;
        this.aro = i3;
    }

    private static int compare(byte b2, byte b3) {
        return b2 - b3;
    }

    private static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    private static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    private static int compare(String str, String str2) {
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    private static int compare(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Flag)) {
            return false;
        }
        Flag flag = (Flag) obj;
        if (this.mVersionCode != flag.mVersionCode || !zzaa.equal(this.name, flag.name) || this.arn != flag.arn || this.aro != flag.aro) {
            return false;
        }
        switch (this.arn) {
            case 1:
                return this.arl == flag.arl;
            case 2:
                return this.ZV == flag.ZV;
            case 3:
                return this.ZX == flag.ZX;
            case 4:
                return zzaa.equal(this.zD, flag.zD);
            case 5:
                return Arrays.equals(this.arm, flag.arm);
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.arn).toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Flag(");
        sb.append(this.mVersionCode);
        sb.append(", ");
        sb.append(this.name);
        sb.append(", ");
        switch (this.arn) {
            case 1:
                sb.append(this.arl);
                break;
            case 2:
                sb.append(this.ZV);
                break;
            case 3:
                sb.append(this.ZX);
                break;
            case 4:
                sb.append("'");
                sb.append(this.zD);
                sb.append("'");
                break;
            case 5:
                if (this.arm != null) {
                    sb.append("'");
                    sb.append(new String(this.arm, UTF_8));
                    sb.append("'");
                    break;
                } else {
                    sb.append("null");
                    break;
                }
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.arn).toString());
        }
        sb.append(", ");
        sb.append(this.arn);
        sb.append(", ");
        sb.append(this.aro);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public int compareTo(Flag flag) {
        int compareTo = this.name.compareTo(flag.name);
        if (compareTo != 0) {
            return compareTo;
        }
        int compare = compare(this.arn, flag.arn);
        if (compare != 0) {
            return compare;
        }
        switch (this.arn) {
            case 1:
                return compare(this.arl, flag.arl);
            case 2:
                return compare(this.ZV, flag.ZV);
            case 3:
                return Double.compare(this.ZX, flag.ZX);
            case 4:
                return compare(this.zD, flag.zD);
            case 5:
                if (this.arm == flag.arm) {
                    return 0;
                }
                if (this.arm == null) {
                    return -1;
                }
                if (flag.arm == null) {
                    return 1;
                }
                for (int i = 0; i < Math.min(this.arm.length, flag.arm.length); i++) {
                    int compare2 = compare(this.arm[i], flag.arm[i]);
                    if (compare2 != 0) {
                        return compare2;
                    }
                }
                return compare(this.arm.length, flag.arm.length);
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.arn).toString());
        }
    }
}
