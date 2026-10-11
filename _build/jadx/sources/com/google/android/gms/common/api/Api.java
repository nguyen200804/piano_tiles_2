package com.google.android.gms.common.api;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzq;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class Api<O extends ApiOptions> {
    private final String mName;
    private final zza<?, O> rB;
    private final zzh<?, O> rC;
    private final zzf<?> rD;
    private final zzi<?> rE;

    public interface ApiOptions {

        public interface HasOptions extends ApiOptions {
        }

        public static final class NoOptions implements NotRequiredOptions {
            private NoOptions() {
            }
        }

        public interface NotRequiredOptions extends ApiOptions {
        }

        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    public static abstract class zza<T extends zze, O> extends zzd<T, O> {
        public abstract T zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener);
    }

    public interface zzb {
    }

    public static class zzc<C extends zzb> {
    }

    public static abstract class zzd<T extends zzb, O> {
        public int getPriority() {
            return Integer.MAX_VALUE;
        }

        public List<Scope> zzp(O o) {
            return Collections.emptyList();
        }
    }

    public interface zze extends zzb {
        void disconnect();

        void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        boolean isConnected();

        boolean isConnecting();

        void zza(zzd.zzf zzfVar);

        void zza(zzq zzqVar, Set<Scope> set);

        boolean zzafk();

        boolean zzafz();

        Intent zzaga();

        boolean zzanu();

        @Nullable
        IBinder zzanv();
    }

    public static final class zzf<C extends zze> extends zzc<C> {
    }

    public interface zzg<T extends IInterface> extends zzb {
        void zza(int i, T t);

        T zzbb(IBinder iBinder);

        String zzqz();

        String zzra();
    }

    public static abstract class zzh<T extends zzg, O> extends zzd<T, O> {
        public abstract int zzanw();

        public abstract T zzr(O o);
    }

    public static final class zzi<C extends zzg> extends zzc<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends zze> Api(String str, zza<C, O> zzaVar, zzf<C> zzfVar) {
        zzab.zzb(zzaVar, "Cannot construct an Api with a null ClientBuilder");
        zzab.zzb(zzfVar, "Cannot construct an Api with a null ClientKey");
        this.mName = str;
        this.rB = zzaVar;
        this.rC = null;
        this.rD = zzfVar;
        this.rE = null;
    }

    public String getName() {
        return this.mName;
    }

    public zzd<?, O> zzanp() {
        if (zzant()) {
            return null;
        }
        return this.rB;
    }

    public zza<?, O> zzanq() {
        zzab.zza(this.rB != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.rB;
    }

    public zzh<?, O> zzanr() {
        zzab.zza(false, (Object) "This API was constructed with a ClientBuilder. Use getClientBuilder");
        return null;
    }

    public zzc<?> zzans() {
        if (this.rD != null) {
            return this.rD;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    public boolean zzant() {
        return false;
    }
}
