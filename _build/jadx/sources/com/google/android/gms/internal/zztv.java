package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zztv<T> {
    private final int zzaxo;
    private final String zzaxp;
    private final T zzaxq;

    public static class zza extends zztv<Boolean> {
        public zza(int i, String str, Boolean bool) {
            super(i, str, bool);
        }

        @Override // com.google.android.gms.internal.zztv
        /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Boolean zza(zzty zztyVar) {
            try {
                return Boolean.valueOf(zztyVar.getBooleanFlagValue(getKey(), zzjw().booleanValue(), getSource()));
            } catch (RemoteException e) {
                return zzjw();
            }
        }
    }

    public static class zzb extends zztv<Integer> {
        public zzb(int i, String str, Integer num) {
            super(i, str, num);
        }

        @Override // com.google.android.gms.internal.zztv
        /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public Integer zza(zzty zztyVar) {
            try {
                return Integer.valueOf(zztyVar.getIntFlagValue(getKey(), zzjw().intValue(), getSource()));
            } catch (RemoteException e) {
                return zzjw();
            }
        }
    }

    public static class zzc extends zztv<Long> {
        public zzc(int i, String str, Long l) {
            super(i, str, l);
        }

        @Override // com.google.android.gms.internal.zztv
        /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
        public Long zza(zzty zztyVar) {
            try {
                return Long.valueOf(zztyVar.getLongFlagValue(getKey(), zzjw().longValue(), getSource()));
            } catch (RemoteException e) {
                return zzjw();
            }
        }
    }

    public static class zzd extends zztv<String> {
        public zzd(int i, String str, String str2) {
            super(i, str, str2);
        }

        @Override // com.google.android.gms.internal.zztv
        /* renamed from: zze, reason: merged with bridge method [inline-methods] */
        public String zza(zzty zztyVar) {
            try {
                return zztyVar.getStringFlagValue(getKey(), zzjw(), getSource());
            } catch (RemoteException e) {
                return zzjw();
            }
        }
    }

    private zztv(int i, String str, T t) {
        this.zzaxo = i;
        this.zzaxp = str;
        this.zzaxq = t;
        zztz.zzbet().zza(this);
    }

    public static zza zzb(int i, String str, Boolean bool) {
        return new zza(i, str, bool);
    }

    public static zzb zzb(int i, String str, int i2) {
        return new zzb(i, str, Integer.valueOf(i2));
    }

    public static zzc zzb(int i, String str, long j) {
        return new zzc(i, str, Long.valueOf(j));
    }

    public static zzd zzc(int i, String str, String str2) {
        return new zzd(i, str, str2);
    }

    public T get() {
        return (T) zztz.zzbeu().zzb(this);
    }

    public String getKey() {
        return this.zzaxp;
    }

    public int getSource() {
        return this.zzaxo;
    }

    protected abstract T zza(zzty zztyVar);

    public T zzjw() {
        return this.zzaxq;
    }
}
