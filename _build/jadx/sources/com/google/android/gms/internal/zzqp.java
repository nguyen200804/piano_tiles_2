package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqp extends zzpn {
    private TaskCompletionSource<Void> sA;

    private zzqp(zzqk zzqkVar) {
        super(zzqkVar);
        this.sA = new TaskCompletionSource<>();
        this.vm.zza("GmsAvailabilityHelper", this);
    }

    public static zzqp zzu(Activity activity) {
        zzqk zzs = zzs(activity);
        zzqp zzqpVar = (zzqp) zzs.zza("GmsAvailabilityHelper", zzqp.class);
        if (zzqpVar == null) {
            return new zzqp(zzs);
        }
        if (!zzqpVar.sA.getTask().isComplete()) {
            return zzqpVar;
        }
        zzqpVar.sA = new TaskCompletionSource<>();
        return zzqpVar;
    }

    public Task<Void> getTask() {
        return this.sA.getTask();
    }

    @Override // com.google.android.gms.internal.zzpn, com.google.android.gms.internal.zzqj
    public void onStop() {
        super.onStop();
        this.sA.setException(new CancellationException());
    }

    @Override // com.google.android.gms.internal.zzpn
    protected void zza(ConnectionResult connectionResult, int i) {
        this.sA.setException(new Exception());
    }

    @Override // com.google.android.gms.internal.zzpn
    protected void zzaoo() {
        int isGooglePlayServicesAvailable = this.sh.isGooglePlayServicesAvailable(this.vm.zzaqt());
        if (isGooglePlayServicesAvailable == 0) {
            this.sA.setResult((Object) null);
        } else {
            zzk(new ConnectionResult(isGooglePlayServicesAvailable, null));
        }
    }

    public void zzk(ConnectionResult connectionResult) {
        zzb(connectionResult, 0);
    }
}
