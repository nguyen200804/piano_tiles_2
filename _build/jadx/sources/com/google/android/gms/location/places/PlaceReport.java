package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.EnvironmentCompat;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzab;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new zzi();
    private final String adn;
    private final String mTag;
    final int mVersionCode;
    private final String zzcup;

    PlaceReport(int i, String str, String str2, String str3) {
        this.mVersionCode = i;
        this.adn = str;
        this.mTag = str2;
        this.zzcup = str3;
    }

    public static PlaceReport create(String str, String str2) {
        return zzk(str, str2, EnvironmentCompat.MEDIA_UNKNOWN);
    }

    public static PlaceReport zzk(String str, String str2, String str3) {
        zzab.zzy(str);
        zzab.zzhr(str2);
        zzab.zzhr(str3);
        zzab.zzb(zzkp(str3), "Invalid source");
        return new PlaceReport(1, str, str2, str3);
    }

    private static boolean zzkp(String str) {
        switch (str) {
            case "unknown":
            case "userReported":
            case "inferredGeofencing":
            case "inferredRadioSignals":
            case "inferredReverseGeocoding":
            case "inferredSnappedToRoad":
                return true;
            default:
                return false;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return zzaa.equal(this.adn, placeReport.adn) && zzaa.equal(this.mTag, placeReport.mTag) && zzaa.equal(this.zzcup, placeReport.zzcup);
    }

    public String getPlaceId() {
        return this.adn;
    }

    public String getSource() {
        return this.zzcup;
    }

    public String getTag() {
        return this.mTag;
    }

    public int hashCode() {
        return zzaa.hashCode(this.adn, this.mTag, this.zzcup);
    }

    public String toString() {
        zzaa.zza zzx = zzaa.zzx(this);
        zzx.zzg("placeId", this.adn);
        zzx.zzg("tag", this.mTag);
        if (!EnvironmentCompat.MEDIA_UNKNOWN.equals(this.zzcup)) {
            zzx.zzg("source", this.zzcup);
        }
        return zzx.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
