package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.internal.zzvu;
import com.google.android.gms.internal.zzvv;
import com.google.android.gms.signin.internal.zze;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzg extends zzk<zze> implements zzvu {
    private final boolean aub;
    private final Bundle auc;
    private final com.google.android.gms.common.internal.zzg tN;
    private Integer ym;

    public zzg(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzg zzgVar, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.aub = z;
        this.tN = zzgVar;
        this.auc = bundle;
        this.ym = zzgVar.zzasq();
    }

    public zzg(Context context, Looper looper, boolean z, com.google.android.gms.common.internal.zzg zzgVar, zzvv zzvvVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, z, zzgVar, zza(zzgVar), connectionCallbacks, onConnectionFailedListener);
    }

    public static Bundle zza(com.google.android.gms.common.internal.zzg zzgVar) {
        zzvv zzasp = zzgVar.zzasp();
        Integer zzasq = zzgVar.zzasq();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", zzgVar.getAccount());
        if (zzasq != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", zzasq.intValue());
        }
        if (zzasp != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzasp.zzbzp());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzasp.zzafr());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzasp.zzafu());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzasp.zzaft());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", zzasp.zzafv());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", zzasp.zzbzq());
            if (zzasp.zzbzr() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", zzasp.zzbzr().longValue());
            }
            if (zzasp.zzbzs() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", zzasp.zzbzs().longValue());
            }
        }
        return bundle;
    }

    private ResolveAccountRequest zzbzx() {
        Account zzary = this.tN.zzary();
        return new ResolveAccountRequest(zzary, this.ym.intValue(), "<<default account>>".equals(zzary.name) ? com.google.android.gms.auth.api.signin.internal.zzk.zzbc(getContext()).zzagj() : null);
    }

    @Override // com.google.android.gms.internal.zzvu
    public void connect() {
        zza(new zzd.zzi());
    }

    @Override // com.google.android.gms.internal.zzvu
    public void zza(zzq zzqVar, boolean z) {
        try {
            ((zze) zzasa()).zza(zzqVar, this.ym.intValue(), z);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override // com.google.android.gms.internal.zzvu
    public void zza(zzd zzdVar) {
        zzab.zzb(zzdVar, "Expecting a valid ISignInCallbacks");
        try {
            ((zze) zzasa()).zza(new SignInRequest(zzbzx()), zzdVar);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                zzdVar.zzb(new SignInResponse(8));
            } catch (RemoteException e2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        if (!getContext().getPackageName().equals(this.tN.zzasm())) {
            this.auc.putString("com.google.android.gms.signin.internal.realClientPackageName", this.tN.zzasm());
        }
        return this.auc;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public boolean zzafk() {
        return this.aub;
    }

    @Override // com.google.android.gms.internal.zzvu
    public void zzbzo() {
        try {
            ((zze) zzasa()).zzza(this.ym.intValue());
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* renamed from: zzkw, reason: merged with bridge method [inline-methods] */
    public zze zzbb(IBinder iBinder) {
        return zze.zza.zzkv(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzqz() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }
}
