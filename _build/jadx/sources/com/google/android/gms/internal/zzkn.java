package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzm;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Map;
import org.apache.commons.io.IOUtils;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkn {
    private static zzl zzcmc;
    private static final Object zzcmd = new Object();
    public static final zza<Void> zzcme = new zza<Void>() { // from class: com.google.android.gms.internal.zzkn.1
        @Override // com.google.android.gms.internal.zzkn.zza
        /* renamed from: zzi, reason: merged with bridge method [inline-methods] */
        public Void zzh(InputStream inputStream) {
            return null;
        }

        @Override // com.google.android.gms.internal.zzkn.zza
        /* renamed from: zztp, reason: merged with bridge method [inline-methods] */
        public Void zzqu() {
            return null;
        }
    };

    public interface zza<T> {
        T zzh(InputStream inputStream);

        T zzqu();
    }

    private static class zzb<T> extends zzk<InputStream> {
        private final zzm.zzb<T> zzcg;
        private final zza<T> zzcmj;

        public zzb(String str, final zza<T> zzaVar, final zzm.zzb<T> zzbVar) {
            super(0, str, new zzm.zza() { // from class: com.google.android.gms.internal.zzkn.zzb.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.zzm.zza
                public void zze(zzr zzrVar) {
                    zzm.zzb.this.zzb(zzaVar.zzqu());
                }
            });
            this.zzcmj = zzaVar;
            this.zzcg = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzk
        protected zzm<InputStream> zza(zzi zziVar) {
            return zzm.zza(new ByteArrayInputStream(zziVar.data), zzx.zzb(zziVar));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzk
        /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
        public void zza(InputStream inputStream) {
            this.zzcg.zzb(this.zzcmj.zzh(inputStream));
        }
    }

    private class zzc<T> extends zzkv<T> implements zzm.zzb<T> {
        private zzc() {
        }

        @Override // com.google.android.gms.internal.zzm.zzb
        public void zzb(T t) {
            super.zzh(t);
        }
    }

    public zzkn(Context context) {
        zzap(context);
    }

    private static zzl zzap(Context context) {
        zzl zzlVar;
        synchronized (zzcmd) {
            if (zzcmc == null) {
                zzcmc = zzac.zza(context.getApplicationContext());
            }
            zzlVar = zzcmc;
        }
        return zzlVar;
    }

    public zzky<String> zza(int i, final String str, final Map<String, String> map, final byte[] bArr) {
        final zzc zzcVar = new zzc();
        zzcmc.zze(new zzab(i, str, zzcVar, new zzm.zza() { // from class: com.google.android.gms.internal.zzkn.2
            @Override // com.google.android.gms.internal.zzm.zza
            public void zze(zzr zzrVar) {
                String str2 = str;
                String valueOf = String.valueOf(zzrVar.toString());
                zzkd.zzcx(new StringBuilder(String.valueOf(str2).length() + 21 + String.valueOf(valueOf).length()).append("Failed to load URL: ").append(str2).append(IOUtils.LINE_SEPARATOR_UNIX).append(valueOf).toString());
                zzcVar.zzb(null);
            }
        }) { // from class: com.google.android.gms.internal.zzkn.3
            @Override // com.google.android.gms.internal.zzk
            public Map<String, String> getHeaders() throws com.google.android.gms.internal.zza {
                return map == null ? super.getHeaders() : map;
            }

            @Override // com.google.android.gms.internal.zzk
            public byte[] zzp() throws com.google.android.gms.internal.zza {
                return bArr == null ? super.zzp() : bArr;
            }
        });
        return zzcVar;
    }

    public <T> zzky<T> zza(String str, zza<T> zzaVar) {
        zzc zzcVar = new zzc();
        zzcmc.zze(new zzb(str, zzaVar, zzcVar));
        return zzcVar;
    }

    public zzky<String> zzc(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
