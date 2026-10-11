package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.google.android.gms.common.internal.zzab;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class Task implements Parcelable {
    public static final int EXTRAS_LIMIT_BYTES = 10240;
    public static final int NETWORK_STATE_ANY = 2;
    public static final int NETWORK_STATE_CONNECTED = 0;
    public static final int NETWORK_STATE_UNMETERED = 1;
    protected static final long UNINITIALIZED = -1;
    private final String ZH;
    private final boolean ZI;
    private final boolean ZJ;
    private final int ZK;
    private final boolean ZL;
    private final zzc ZM;
    private final Bundle mExtras;
    private final String mTag;

    public static abstract class Builder {
        protected zzc ZN = zzc.ZC;
        protected Bundle extras;
        protected String gcmTaskService;
        protected boolean isPersisted;
        protected int requiredNetworkState;
        protected boolean requiresCharging;
        protected String tag;
        protected boolean updateCurrent;

        public abstract Task build();

        @CallSuper
        protected void checkConditions() {
            zzab.zzb(this.gcmTaskService != null, "Must provide an endpoint for this task by calling setService(ComponentName).");
            GcmNetworkManager.zzjx(this.tag);
            Task.zza(this.ZN);
            if (this.isPersisted) {
                Task.zzaj(this.extras);
            }
        }

        public abstract Builder setExtras(Bundle bundle);

        public abstract Builder setPersisted(boolean z);

        public abstract Builder setRequiredNetwork(int i);

        public abstract Builder setRequiresCharging(boolean z);

        public abstract Builder setService(Class<? extends GcmTaskService> cls);

        public abstract Builder setTag(String str);

        public abstract Builder setUpdateCurrent(boolean z);
    }

    @Deprecated
    Task(Parcel parcel) {
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.ZH = parcel.readString();
        this.mTag = parcel.readString();
        this.ZI = parcel.readInt() == 1;
        this.ZJ = parcel.readInt() == 1;
        this.ZK = 2;
        this.ZL = false;
        this.ZM = zzc.ZC;
        this.mExtras = null;
    }

    Task(Builder builder) {
        this.ZH = builder.gcmTaskService;
        this.mTag = builder.tag;
        this.ZI = builder.updateCurrent;
        this.ZJ = builder.isPersisted;
        this.ZK = builder.requiredNetworkState;
        this.ZL = builder.requiresCharging;
        this.mExtras = builder.extras;
        this.ZM = builder.ZN != null ? builder.ZN : zzc.ZC;
    }

    public static void zza(zzc zzcVar) {
        if (zzcVar != null) {
            int zzblj = zzcVar.zzblj();
            if (zzblj != 1 && zzblj != 0) {
                throw new IllegalArgumentException(new StringBuilder(45).append("Must provide a valid RetryPolicy: ").append(zzblj).toString());
            }
            int zzblk = zzcVar.zzblk();
            int zzbll = zzcVar.zzbll();
            if (zzblj == 0 && zzblk < 0) {
                throw new IllegalArgumentException(new StringBuilder(52).append("InitialBackoffSeconds can't be negative: ").append(zzblk).toString());
            }
            if (zzblj == 1 && zzblk < 10) {
                throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
            }
            if (zzbll < zzblk) {
                throw new IllegalArgumentException(new StringBuilder(77).append("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: ").append(zzcVar.zzbll()).toString());
            }
        }
    }

    private static boolean zzad(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean);
    }

    public static void zzaj(Bundle bundle) {
        if (bundle != null) {
            Parcel obtain = Parcel.obtain();
            bundle.writeToParcel(obtain, 0);
            int dataSize = obtain.dataSize();
            if (dataSize > 10240) {
                obtain.recycle();
                String valueOf = String.valueOf("Extras exceeding maximum size(10240 bytes): ");
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 11).append(valueOf).append(dataSize).toString());
            }
            obtain.recycle();
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                if (!zzad(bundle.get(it.next()))) {
                    throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean. ");
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getRequiredNetwork() {
        return this.ZK;
    }

    public boolean getRequiresCharging() {
        return this.ZL;
    }

    public String getServiceName() {
        return this.ZH;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.ZJ;
    }

    public boolean isUpdateCurrent() {
        return this.ZI;
    }

    public void toBundle(Bundle bundle) {
        bundle.putString("tag", this.mTag);
        bundle.putBoolean("update_current", this.ZI);
        bundle.putBoolean("persisted", this.ZJ);
        bundle.putString("service", this.ZH);
        bundle.putInt("requiredNetwork", this.ZK);
        bundle.putBoolean("requiresCharging", this.ZL);
        bundle.putBundle("retryStrategy", this.ZM.zzai(new Bundle()));
        bundle.putBundle("extras", this.mExtras);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.ZH);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.ZI ? 1 : 0);
        parcel.writeInt(this.ZJ ? 1 : 0);
    }
}
