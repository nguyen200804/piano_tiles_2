package com.google.android.gms.dynamic;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.zzc;

@SuppressLint({"NewApi"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzb extends zzc.zza {
    private Fragment KC;

    private zzb(Fragment fragment) {
        this.KC = fragment;
    }

    public static zzb zza(Fragment fragment) {
        if (fragment != null) {
            return new zzb(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.zzc
    public Bundle getArguments() {
        return this.KC.getArguments();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getId() {
        return this.KC.getId();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getRetainInstance() {
        return this.KC.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public String getTag() {
        return this.KC.getTag();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public int getTargetRequestCode() {
        return this.KC.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean getUserVisibleHint() {
        return this.KC.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd getView() {
        return zze.zzac(this.KC.getView());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isAdded() {
        return this.KC.isAdded();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isDetached() {
        return this.KC.isDetached();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isHidden() {
        return this.KC.isHidden();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isInLayout() {
        return this.KC.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isRemoving() {
        return this.KC.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isResumed() {
        return this.KC.isResumed();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public boolean isVisible() {
        return this.KC.isVisible();
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setHasOptionsMenu(boolean z) {
        this.KC.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setMenuVisibility(boolean z) {
        this.KC.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setRetainInstance(boolean z) {
        this.KC.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void setUserVisibleHint(boolean z) {
        this.KC.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivity(Intent intent) {
        this.KC.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void startActivityForResult(Intent intent, int i) {
        this.KC.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzab(zzd zzdVar) {
        this.KC.registerForContextMenu((View) zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public void zzac(zzd zzdVar) {
        this.KC.unregisterForContextMenu((View) zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbbu() {
        return zze.zzac(this.KC.getActivity());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbbv() {
        return zza(this.KC.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzd zzbbw() {
        return zze.zzac(this.KC.getResources());
    }

    @Override // com.google.android.gms.dynamic.zzc
    public zzc zzbbx() {
        return zza(this.KC.getTargetFragment());
    }
}
