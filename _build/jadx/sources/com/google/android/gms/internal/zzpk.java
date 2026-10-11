package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpk extends zzpn {
    private final SparseArray<zza> sC;

    private class zza implements GoogleApiClient.OnConnectionFailedListener {
        public final int sD;
        public final GoogleApiClient sE;
        public final GoogleApiClient.OnConnectionFailedListener sF;

        public zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.sD = i;
            this.sE = googleApiClient;
            this.sF = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.append((CharSequence) str).append("GoogleApiClient #").print(this.sD);
            printWriter.println(":");
            this.sE.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 27).append("beginFailureResolution for ").append(valueOf).toString());
            zzpk.this.zzb(connectionResult, this.sD);
        }

        public void zzaop() {
            this.sE.unregisterConnectionFailedListener(this);
            this.sE.disconnect();
        }
    }

    private zzpk(zzqk zzqkVar) {
        super(zzqkVar);
        this.sC = new SparseArray<>();
        this.vm.zza("AutoManageHelper", this);
    }

    public static zzpk zza(zzqi zzqiVar) {
        zzqk zzc = zzc(zzqiVar);
        zzpk zzpkVar = (zzpk) zzc.zza("AutoManageHelper", zzpk.class);
        return zzpkVar != null ? zzpkVar : new zzpk(zzc);
    }

    @Override // com.google.android.gms.internal.zzqj
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.sC.size()) {
                return;
            }
            this.sC.valueAt(i2).dump(str, fileDescriptor, printWriter, strArr);
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzpn, com.google.android.gms.internal.zzqj
    public void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(this.sC);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 14).append("onStart ").append(z).append(" ").append(valueOf).toString());
        if (this.sL) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.sC.size()) {
                return;
            }
            this.sC.valueAt(i2).sE.connect();
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzpn, com.google.android.gms.internal.zzqj
    public void onStop() {
        super.onStop();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.sC.size()) {
                return;
            }
            this.sC.valueAt(i2).sE.disconnect();
            i = i2 + 1;
        }
    }

    public void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        com.google.android.gms.common.internal.zzab.zzb(googleApiClient, "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.zzab.zza(this.sC.indexOfKey(i) < 0, new StringBuilder(54).append("Already managing a GoogleApiClient with id ").append(i).toString());
        Log.d("AutoManageHelper", new StringBuilder(54).append("starting AutoManage for client ").append(i).append(" ").append(this.mStarted).append(" ").append(this.sL).toString());
        this.sC.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (!this.mStarted || this.sL) {
            return;
        }
        String valueOf = String.valueOf(googleApiClient);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 11).append("connecting ").append(valueOf).toString());
        googleApiClient.connect();
    }

    @Override // com.google.android.gms.internal.zzpn
    protected void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zzaVar = this.sC.get(i);
        if (zzaVar != null) {
            zzfh(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzaVar.sF;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzpn
    protected void zzaoo() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.sC.size()) {
                return;
            }
            this.sC.valueAt(i2).sE.connect();
            i = i2 + 1;
        }
    }

    public void zzfh(int i) {
        zza zzaVar = this.sC.get(i);
        this.sC.remove(i);
        if (zzaVar != null) {
            zzaVar.zzaop();
        }
    }
}
