package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.internal.zzqe;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzpn extends zzqj implements DialogInterface.OnCancelListener {
    protected boolean mStarted;
    protected boolean sL;
    private ConnectionResult sM;
    private int sN;
    private final Handler sO;
    protected final GoogleApiAvailability sh;

    private class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            if (zzpn.this.mStarted) {
                if (zzpn.this.sM.hasResolution()) {
                    zzpn.this.vm.startActivityForResult(GoogleApiActivity.zzb(zzpn.this.getActivity(), zzpn.this.sM.getResolution(), zzpn.this.sN, false), 1);
                    return;
                }
                if (zzpn.this.sh.isUserResolvableError(zzpn.this.sM.getErrorCode())) {
                    zzpn.this.sh.zza(zzpn.this.getActivity(), zzpn.this.vm, zzpn.this.sM.getErrorCode(), 2, zzpn.this);
                } else if (zzpn.this.sM.getErrorCode() != 18) {
                    zzpn.this.zza(zzpn.this.sM, zzpn.this.sN);
                } else {
                    final Dialog zza = zzpn.this.sh.zza(zzpn.this.getActivity(), zzpn.this);
                    zzpn.this.sh.zza(zzpn.this.getActivity().getApplicationContext(), new zzqe.zza() { // from class: com.google.android.gms.internal.zzpn.zza.1
                        @Override // com.google.android.gms.internal.zzqe.zza
                        public void zzaou() {
                            zzpn.this.zzaot();
                            if (zza.isShowing()) {
                                zza.dismiss();
                            }
                        }
                    });
                }
            }
        }
    }

    protected zzpn(zzqk zzqkVar) {
        this(zzqkVar, GoogleApiAvailability.getInstance());
    }

    zzpn(zzqk zzqkVar, GoogleApiAvailability googleApiAvailability) {
        super(zzqkVar);
        this.sN = -1;
        this.sO = new Handler(Looper.getMainLooper());
        this.sh = googleApiAvailability;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003d  */
    @Override // com.google.android.gms.internal.zzqj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            r4 = 18
            r2 = 13
            r0 = 1
            r1 = 0
            switch(r6) {
                case 1: goto L27;
                case 2: goto L10;
                default: goto L9;
            }
        L9:
            r0 = r1
        La:
            if (r0 == 0) goto L3d
            r5.zzaot()
        Lf:
            return
        L10:
            com.google.android.gms.common.GoogleApiAvailability r2 = r5.sh
            android.app.Activity r3 = r5.getActivity()
            int r2 = r2.isGooglePlayServicesAvailable(r3)
            if (r2 != 0) goto L47
        L1c:
            com.google.android.gms.common.ConnectionResult r1 = r5.sM
            int r1 = r1.getErrorCode()
            if (r1 != r4) goto La
            if (r2 != r4) goto La
            goto Lf
        L27:
            r3 = -1
            if (r7 == r3) goto La
            if (r7 != 0) goto L9
            if (r8 == 0) goto L45
            java.lang.String r0 = "<<ResolutionFailureErrorDetail>>"
            int r0 = r8.getIntExtra(r0, r2)
        L34:
            com.google.android.gms.common.ConnectionResult r2 = new com.google.android.gms.common.ConnectionResult
            r3 = 0
            r2.<init>(r0, r3)
            r5.sM = r2
            goto L9
        L3d:
            com.google.android.gms.common.ConnectionResult r0 = r5.sM
            int r1 = r5.sN
            r5.zza(r0, r1)
            goto Lf
        L45:
            r0 = r2
            goto L34
        L47:
            r0 = r1
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzpn.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), this.sN);
        zzaot();
    }

    @Override // com.google.android.gms.internal.zzqj
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.sL = bundle.getBoolean("resolving_error", false);
            if (this.sL) {
                this.sN = bundle.getInt("failed_client_id", -1);
                this.sM = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqj
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.sL);
        if (this.sL) {
            bundle.putInt("failed_client_id", this.sN);
            bundle.putInt("failed_status", this.sM.getErrorCode());
            bundle.putParcelable("failed_resolution", this.sM.getResolution());
        }
    }

    @Override // com.google.android.gms.internal.zzqj
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    @Override // com.google.android.gms.internal.zzqj
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    protected abstract void zza(ConnectionResult connectionResult, int i);

    protected abstract void zzaoo();

    protected void zzaot() {
        this.sN = -1;
        this.sL = false;
        this.sM = null;
        zzaoo();
    }

    public void zzb(ConnectionResult connectionResult, int i) {
        if (this.sL) {
            return;
        }
        this.sL = true;
        this.sN = i;
        this.sM = connectionResult;
        this.sO.post(new zza());
    }
}
