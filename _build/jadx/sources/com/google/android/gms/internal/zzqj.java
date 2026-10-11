package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.MainThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqj {
    protected final zzqk vm;

    protected zzqj(zzqk zzqkVar) {
        this.vm = zzqkVar;
    }

    protected static zzqk zzc(zzqi zzqiVar) {
        return zzqiVar.zzaqq() ? zzqv.zza(zzqiVar.zzaqs()) : zzql.zzt(zzqiVar.zzaqr());
    }

    protected static zzqk zzs(Activity activity) {
        return zzc(new zzqi(activity));
    }

    @MainThread
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        return this.vm.zzaqt();
    }

    @MainThread
    public void onActivityResult(int i, int i2, Intent intent) {
    }

    @MainThread
    public void onCreate(Bundle bundle) {
    }

    @MainThread
    public void onSaveInstanceState(Bundle bundle) {
    }

    @MainThread
    public void onStart() {
    }

    @MainThread
    public void onStop() {
    }
}
