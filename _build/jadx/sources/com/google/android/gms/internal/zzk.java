package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzm;
import com.google.android.gms.internal.zzs;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzk<T> implements Comparable<zzk<T>> {
    private final zzs.zza zzac;
    private final int zzad;
    private final String zzae;
    private final int zzaf;
    private final zzm.zza zzag;
    private Integer zzah;
    private zzl zzai;
    private boolean zzaj;
    private boolean zzak;
    private boolean zzal;
    private long zzam;
    private zzo zzan;
    private zzb.zza zzao;

    public enum zza {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public zzk(int i, String str, zzm.zza zzaVar) {
        this.zzac = zzs.zza.zzbj ? new zzs.zza() : null;
        this.zzaj = true;
        this.zzak = false;
        this.zzal = false;
        this.zzam = 0L;
        this.zzao = null;
        this.zzad = i;
        this.zzae = str;
        this.zzag = zzaVar;
        zza((zzo) new zzd());
        this.zzaf = zzb(str);
    }

    private byte[] zza(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            String valueOf = String.valueOf(str);
            throw new RuntimeException(valueOf.length() != 0 ? "Encoding not supported: ".concat(valueOf) : new String("Encoding not supported: "), e);
        }
    }

    private static int zzb(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    public Map<String, String> getHeaders() throws com.google.android.gms.internal.zza {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.zzad;
    }

    public String getUrl() {
        return this.zzae;
    }

    public boolean isCanceled() {
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(zzf()));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        String valueOf2 = String.valueOf(getUrl());
        String valueOf3 = String.valueOf(zzr());
        String valueOf4 = String.valueOf(this.zzah);
        return new StringBuilder(String.valueOf("[ ] ").length() + 3 + String.valueOf(valueOf2).length() + String.valueOf(concat).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length()).append("[ ] ").append(valueOf2).append(" ").append(concat).append(" ").append(valueOf3).append(" ").append(valueOf4).toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzk<?> zza(int i) {
        this.zzah = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzk<?> zza(zzb.zza zzaVar) {
        this.zzao = zzaVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzk<?> zza(zzl zzlVar) {
        this.zzai = zzlVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzk<?> zza(zzo zzoVar) {
        this.zzan = zzoVar;
        return this;
    }

    protected abstract zzm<T> zza(zzi zziVar);

    protected abstract void zza(T t);

    protected zzr zzb(zzr zzrVar) {
        return zzrVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public int compareTo(zzk<T> zzkVar) {
        zza zzr = zzr();
        zza zzr2 = zzkVar.zzr();
        return zzr == zzr2 ? this.zzah.intValue() - zzkVar.zzah.intValue() : zzr2.ordinal() - zzr.ordinal();
    }

    public void zzc(zzr zzrVar) {
        if (this.zzag != null) {
            this.zzag.zze(zzrVar);
        }
    }

    public void zzc(String str) {
        if (zzs.zza.zzbj) {
            this.zzac.zza(str, Thread.currentThread().getId());
        } else if (this.zzam == 0) {
            this.zzam = SystemClock.elapsedRealtime();
        }
    }

    void zzd(final String str) {
        if (this.zzai != null) {
            this.zzai.zzf(this);
        }
        if (!zzs.zza.zzbj) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzam;
            if (elapsedRealtime >= 3000) {
                zzs.zzb("%d ms: %s", Long.valueOf(elapsedRealtime), toString());
                return;
            }
            return;
        }
        final long id = Thread.currentThread().getId();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.zzk.1
                @Override // java.lang.Runnable
                public void run() {
                    zzk.this.zzac.zza(str, id);
                    zzk.this.zzac.zzd(toString());
                }
            });
        } else {
            this.zzac.zza(str, id);
            this.zzac.zzd(toString());
        }
    }

    public int zzf() {
        return this.zzaf;
    }

    public String zzg() {
        return getUrl();
    }

    public zzb.zza zzh() {
        return this.zzao;
    }

    @Deprecated
    protected Map<String, String> zzi() throws com.google.android.gms.internal.zza {
        return zzm();
    }

    @Deprecated
    protected String zzj() {
        return zzn();
    }

    @Deprecated
    public String zzk() {
        return zzo();
    }

    @Deprecated
    public byte[] zzl() throws com.google.android.gms.internal.zza {
        Map<String, String> zzi = zzi();
        if (zzi == null || zzi.size() <= 0) {
            return null;
        }
        return zza(zzi, zzj());
    }

    protected Map<String, String> zzm() throws com.google.android.gms.internal.zza {
        return null;
    }

    protected String zzn() {
        return "UTF-8";
    }

    public String zzo() {
        String valueOf = String.valueOf(zzn());
        return valueOf.length() != 0 ? "application/x-www-form-urlencoded; charset=".concat(valueOf) : new String("application/x-www-form-urlencoded; charset=");
    }

    public byte[] zzp() throws com.google.android.gms.internal.zza {
        Map<String, String> zzm = zzm();
        if (zzm == null || zzm.size() <= 0) {
            return null;
        }
        return zza(zzm, zzn());
    }

    public final boolean zzq() {
        return this.zzaj;
    }

    public zza zzr() {
        return zza.NORMAL;
    }

    public final int zzs() {
        return this.zzan.zzc();
    }

    public zzo zzt() {
        return this.zzan;
    }

    public void zzu() {
        this.zzal = true;
    }

    public boolean zzv() {
        return this.zzal;
    }
}
