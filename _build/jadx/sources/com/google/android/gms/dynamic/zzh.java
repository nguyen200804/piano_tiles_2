package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.google.android.gms.dynamic.zzc;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzh extends zzc.zza {
    private Fragment KF;

    private zzh(Fragment fragment) {
        this.KF = fragment;
    }

    public static zzh zza(Fragment fragment) {
        if (fragment != null) {
            return new zzh(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.KF.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.KF.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.KF.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.KF.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.KF.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.KF.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd getView() {
        return zze.zzac(this.KF.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.KF.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.KF.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.KF.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.KF.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.KF.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.KF.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.KF.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.KF.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.KF.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.KF.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.KF.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.KF.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.KF.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzab(zzd zzdVar) {
        this.KF.registerForContextMenu((View) zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzac(zzd zzdVar) {
        this.KF.unregisterForContextMenu((View) zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbbu() {
        return zze.zzac(this.KF.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbbv() {
        return zza(this.KF.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbbw() {
        return zze.zzac(this.KF.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbbx() {
        return zza(this.KF.getTargetFragment());
    }
}
