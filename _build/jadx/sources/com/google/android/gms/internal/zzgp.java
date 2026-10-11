package com.google.android.gms.internal;

import android.location.Location;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzgp implements MediationAdRequest {
    private final int zzaud;
    private final boolean zzaup;
    private final int zzbph;
    private final Date zzfp;
    private final Set<String> zzfr;
    private final boolean zzfs;
    private final Location zzft;

    public zzgp(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, boolean z2) {
        this.zzfp = date;
        this.zzaud = i;
        this.zzfr = set;
        this.zzft = location;
        this.zzfs = z;
        this.zzbph = i2;
        this.zzaup = z2;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public Date getBirthday() {
        return this.zzfp;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public int getGender() {
        return this.zzaud;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public Set<String> getKeywords() {
        return this.zzfr;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public Location getLocation() {
        return this.zzft;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public boolean isDesignedForFamilies() {
        return this.zzaup;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public boolean isTesting() {
        return this.zzfs;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public int taggedForChildDirectedTreatment() {
        return this.zzbph;
    }
}
