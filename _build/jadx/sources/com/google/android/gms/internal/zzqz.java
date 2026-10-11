package com.google.android.gms.internal;

import android.os.Binder;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzqz<T> {
    private T vQ = null;
    protected final String zzaxp;
    protected final T zzaxq;
    private static final Object zzamr = new Object();
    private static zza vN = null;
    private static int vO = 0;
    private static String vP = "com.google.android.providers.gsf.permission.READ_GSERVICES";

    private interface zza {
        Long getLong(String str, Long l);

        String getString(String str, String str2);

        Boolean zza(String str, Boolean bool);

        Float zzb(String str, Float f);

        Integer zzb(String str, Integer num);
    }

    protected zzqz(String str, T t) {
        this.zzaxp = str;
        this.zzaxq = t;
    }

    public static zzqz<Float> zza(String str, Float f) {
        return new zzqz<Float>(str, f) { // from class: com.google.android.gms.internal.zzqz.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzqz
            /* renamed from: zzhc, reason: merged with bridge method [inline-methods] */
            public Float zzgy(String str2) {
                return zzqz.zzarb().zzb(this.zzaxp, (Float) this.zzaxq);
            }
        };
    }

    public static zzqz<Integer> zza(String str, Integer num) {
        return new zzqz<Integer>(str, num) { // from class: com.google.android.gms.internal.zzqz.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzqz
            /* renamed from: zzhb, reason: merged with bridge method [inline-methods] */
            public Integer zzgy(String str2) {
                return zzqz.zzarb().zzb(this.zzaxp, (Integer) this.zzaxq);
            }
        };
    }

    public static zzqz<Long> zza(String str, Long l) {
        return new zzqz<Long>(str, l) { // from class: com.google.android.gms.internal.zzqz.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzqz
            /* renamed from: zzha, reason: merged with bridge method [inline-methods] */
            public Long zzgy(String str2) {
                return zzqz.zzarb().getLong(this.zzaxp, (Long) this.zzaxq);
            }
        };
    }

    public static zzqz<String> zzab(String str, String str2) {
        return new zzqz<String>(str, str2) { // from class: com.google.android.gms.internal.zzqz.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzqz
            /* renamed from: zzhd, reason: merged with bridge method [inline-methods] */
            public String zzgy(String str3) {
                return zzqz.zzarb().getString(this.zzaxp, (String) this.zzaxq);
            }
        };
    }

    static /* synthetic */ zza zzarb() {
        return null;
    }

    public static zzqz<Boolean> zzm(String str, boolean z) {
        return new zzqz<Boolean>(str, Boolean.valueOf(z)) { // from class: com.google.android.gms.internal.zzqz.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzqz
            /* renamed from: zzgz, reason: merged with bridge method [inline-methods] */
            public Boolean zzgy(String str2) {
                return zzqz.zzarb().zza(this.zzaxp, (Boolean) this.zzaxq);
            }
        };
    }

    public final T get() {
        try {
            return zzgy(this.zzaxp);
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return zzgy(this.zzaxp);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    protected abstract T zzgy(String str);
}
