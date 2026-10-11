package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.NonNull;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzae;
import com.google.android.gms.internal.zzau;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzax {
    private static final String TAG = zzax.class.getSimpleName();
    protected static final Object zzagr = new Object();
    private static com.google.android.gms.common.zzc zzagt = null;
    protected Context zzagf;
    private ExecutorService zzagg;
    private DexClassLoader zzagh;
    private zzau zzagi;
    private byte[] zzagj;
    private zzam zzago;
    private volatile AdvertisingIdClient zzagk = null;
    private volatile boolean zzafn = false;
    private Future zzagl = null;
    private volatile zzae.zza zzagm = null;
    private Future zzagn = null;
    private GoogleApiClient zzagp = null;
    protected boolean zzagq = false;
    protected boolean zzags = false;
    protected boolean zzagu = false;
    private Map<Pair<String, String>, zzbo> zzagv = new HashMap();

    private zzax(Context context) {
        this.zzagf = context;
    }

    public static zzax zza(Context context, String str, String str2, boolean z) {
        zzax zzaxVar = new zzax(context);
        if (zzaxVar.zzc(str, str2, z)) {
            return zzaxVar;
        }
        return null;
    }

    @NonNull
    private File zza(String str, File file, String str2) throws zzau.zza, IOException {
        File file2 = new File(String.format("%s/%s.jar", file, str2));
        if (!file2.exists()) {
            byte[] zzc = this.zzagi.zzc(this.zzagj, str);
            file2.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            fileOutputStream.write(zzc, 0, zzc.length);
            fileOutputStream.close();
        }
        return file2;
    }

    private void zza(File file) {
        if (file.exists()) {
            file.delete();
        } else {
            Log.d(TAG, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void zza(java.io.File r10, java.lang.String r11) {
        /*
            r9 = this;
            r6 = 2
            r5 = 1
            r4 = 0
            java.io.File r2 = new java.io.File
            java.lang.String r0 = "%s/%s.tmp"
            java.lang.Object[] r1 = new java.lang.Object[r6]
            r1[r4] = r10
            r1[r5] = r11
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r2.<init>(r0)
            boolean r0 = r2.exists()
            if (r0 == 0) goto L1b
        L1a:
            return
        L1b:
            java.io.File r3 = new java.io.File
            java.lang.String r0 = "%s/%s.dex"
            java.lang.Object[] r1 = new java.lang.Object[r6]
            r1[r4] = r10
            r1[r5] = r11
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r3.<init>(r0)
            boolean r0 = r3.exists()
            if (r0 == 0) goto L1a
            r1 = 0
            long r4 = r3.length()
            r6 = 0
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 <= 0) goto L1a
            int r0 = (int) r4
            byte[] r4 = new byte[r0]
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.security.NoSuchAlgorithmException -> L98 java.lang.Throwable -> La4 java.io.IOException -> Lbd com.google.android.gms.internal.zzau.zza -> Lc2
            r0.<init>(r3)     // Catch: java.security.NoSuchAlgorithmException -> L98 java.lang.Throwable -> La4 java.io.IOException -> Lbd com.google.android.gms.internal.zzau.zza -> Lc2
            int r1 = r0.read(r4)     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            if (r1 > 0) goto L54
            if (r0 == 0) goto L50
            r0.close()     // Catch: java.io.IOException -> Lae
        L50:
            r9.zza(r3)
            goto L1a
        L54:
            com.google.android.gms.internal.zzae$zzd r1 = new com.google.android.gms.internal.zzae$zzd     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r1.<init>()     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            java.lang.String r5 = android.os.Build.VERSION.SDK     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            byte[] r5 = r5.getBytes()     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r1.zzev = r5     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            byte[] r5 = r11.getBytes()     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r1.zzeu = r5     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            com.google.android.gms.internal.zzau r5 = r9.zzagi     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            byte[] r6 = r9.zzagj     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            java.lang.String r4 = r5.zzd(r6, r4)     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            byte[] r4 = r4.getBytes()     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r1.data = r4     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            byte[] r4 = com.google.android.gms.internal.zzak.zzg(r4)     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r1.zzet = r4     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r2.createNewFile()     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r4.<init>(r2)     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            byte[] r1 = com.google.android.gms.internal.zzapv.zzf(r1)     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r2 = 0
            int r5 = r1.length     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r4.write(r1, r2, r5)     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            r4.close()     // Catch: java.lang.Throwable -> Lb6 java.security.NoSuchAlgorithmException -> Lbb java.io.IOException -> Lc0 com.google.android.gms.internal.zzau.zza -> Lc5
            if (r0 == 0) goto L94
            r0.close()     // Catch: java.io.IOException -> Lb0
        L94:
            r9.zza(r3)
            goto L1a
        L98:
            r0 = move-exception
            r0 = r1
        L9a:
            if (r0 == 0) goto L9f
            r0.close()     // Catch: java.io.IOException -> Lb2
        L9f:
            r9.zza(r3)
            goto L1a
        La4:
            r0 = move-exception
        La5:
            if (r1 == 0) goto Laa
            r1.close()     // Catch: java.io.IOException -> Lb4
        Laa:
            r9.zza(r3)
            throw r0
        Lae:
            r0 = move-exception
            goto L50
        Lb0:
            r0 = move-exception
            goto L94
        Lb2:
            r0 = move-exception
            goto L9f
        Lb4:
            r1 = move-exception
            goto Laa
        Lb6:
            r1 = move-exception
            r8 = r1
            r1 = r0
            r0 = r8
            goto La5
        Lbb:
            r1 = move-exception
            goto L9a
        Lbd:
            r0 = move-exception
            r0 = r1
            goto L9a
        Lc0:
            r1 = move-exception
            goto L9a
        Lc2:
            r0 = move-exception
            r0 = r1
            goto L9a
        Lc5:
            r1 = move-exception
            goto L9a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzax.zza(java.io.File, java.lang.String):void");
    }

    private boolean zzb(File file, String str) {
        boolean z = false;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            File file3 = new File(String.format("%s/%s.dex", file, str));
            if (!file3.exists()) {
                try {
                    long length = file2.length();
                    if (length <= 0) {
                        zza(file2);
                    } else {
                        byte[] bArr = new byte[(int) length];
                        if (new FileInputStream(file2).read(bArr) <= 0) {
                            Log.d(TAG, "Cannot read the cache data.");
                            zza(file2);
                        } else {
                            zzae.zzd zzd = zzae.zzd.zzd(bArr);
                            if (str.equals(new String(zzd.zzeu)) && Arrays.equals(zzd.zzet, zzak.zzg(zzd.data)) && Arrays.equals(zzd.zzev, Build.VERSION.SDK.getBytes())) {
                                byte[] zzc = this.zzagi.zzc(this.zzagj, new String(zzd.data));
                                file3.createNewFile();
                                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                                fileOutputStream.write(zzc, 0, zzc.length);
                                fileOutputStream.close();
                                z = true;
                            } else {
                                zza(file2);
                            }
                        }
                    }
                } catch (zzau.zza e) {
                } catch (IOException e2) {
                } catch (NoSuchAlgorithmException e3) {
                }
            }
        }
        return z;
    }

    private void zzc(boolean z) {
        this.zzafn = z;
        if (z) {
            this.zzagl = this.zzagg.submit(new Runnable() { // from class: com.google.android.gms.internal.zzax.1
                @Override // java.lang.Runnable
                public void run() {
                    zzax.this.zzcn();
                }
            });
        }
    }

    private boolean zzc(String str, String str2, boolean z) throws zzaw {
        this.zzagg = Executors.newCachedThreadPool();
        zzc(z);
        zzcq();
        zzco();
        this.zzagi = new zzau(null);
        try {
            this.zzagj = this.zzagi.zzl(str);
            boolean zzm = zzm(str2);
            this.zzago = new zzam(this);
            return zzm;
        } catch (zzau.zza e) {
            throw new zzaw(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzcn() {
        try {
            if (this.zzagk == null) {
                AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.zzagf);
                advertisingIdClient.start();
                this.zzagk = advertisingIdClient;
            }
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException e) {
            this.zzagk = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzcp() {
        if (this.zzags) {
            try {
                this.zzagm = com.google.android.gms.gass.internal.zza.zzg(this.zzagf, this.zzagf.getPackageName(), Integer.toString(this.zzagf.getPackageManager().getPackageInfo(this.zzagf.getPackageName(), 0).versionCode));
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    private void zzcq() {
        zzagt = com.google.android.gms.common.zzc.zzang();
        this.zzagq = zzagt.zzbn(this.zzagf) > 0;
        this.zzags = zzagt.isGooglePlayServicesAvailable(this.zzagf) == 0;
        if (this.zzagf.getApplicationContext() != null) {
            this.zzagp = new GoogleApiClient.Builder(this.zzagf).addApi(com.google.android.gms.clearcut.zzb.API).build();
        }
        zzdc.initialize(this.zzagf);
    }

    private boolean zzm(String str) throws zzaw {
        try {
            File cacheDir = this.zzagf.getCacheDir();
            if (cacheDir == null && (cacheDir = this.zzagf.getDir("dex", 0)) == null) {
                throw new zzaw();
            }
            File file = cacheDir;
            String zzax = zzav.zzax();
            File zza = zza(str, file, zzax);
            zzb(file, zzax);
            try {
                this.zzagh = new DexClassLoader(zza.getAbsolutePath(), file.getAbsolutePath(), null, this.zzagf.getClassLoader());
                zza(zza);
                zza(file, zzax);
                zzn(String.format("%s/%s.dex", file, zzax));
                return true;
            } catch (Throwable th) {
                zza(zza);
                zza(file, zzax);
                zzn(String.format("%s/%s.dex", file, zzax));
                throw th;
            }
        } catch (zzau.zza e) {
            throw new zzaw(e);
        } catch (FileNotFoundException e2) {
            throw new zzaw(e2);
        } catch (IOException e3) {
            throw new zzaw(e3);
        } catch (NullPointerException e4) {
            throw new zzaw(e4);
        }
    }

    private void zzn(String str) {
        zza(new File(str));
    }

    public Context getContext() {
        return this.zzagf;
    }

    public boolean zza(String str, String str2, List<Class> list) {
        if (this.zzagv.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.zzagv.put(new Pair<>(str, str2), new zzbo(this, str, str2, list));
        return true;
    }

    public int zzat() {
        zzam zzck = zzck();
        if (zzck != null) {
            return zzck.zzat();
        }
        return Integer.MIN_VALUE;
    }

    public Method zzc(String str, String str2) {
        zzbo zzboVar = this.zzagv.get(new Pair(str, str2));
        if (zzboVar == null) {
            return null;
        }
        return zzboVar.zzcz();
    }

    public ExecutorService zzcd() {
        return this.zzagg;
    }

    public DexClassLoader zzce() {
        return this.zzagh;
    }

    public zzau zzcf() {
        return this.zzagi;
    }

    public byte[] zzcg() {
        return this.zzagj;
    }

    public GoogleApiClient zzch() {
        return this.zzagp;
    }

    public boolean zzci() {
        return this.zzagq;
    }

    public boolean zzcj() {
        return this.zzagu;
    }

    public zzam zzck() {
        return this.zzago;
    }

    public zzae.zza zzcl() {
        return this.zzagm;
    }

    public Future zzcm() {
        return this.zzagn;
    }

    void zzco() {
        if (zzdc.zzbbu.get().booleanValue()) {
            this.zzagn = this.zzagg.submit(new Runnable() { // from class: com.google.android.gms.internal.zzax.2
                @Override // java.lang.Runnable
                public void run() {
                    zzax.this.zzcp();
                }
            });
        }
    }

    public AdvertisingIdClient zzcr() {
        if (!this.zzafn) {
            return null;
        }
        if (this.zzagk != null) {
            return this.zzagk;
        }
        if (this.zzagl != null) {
            try {
                this.zzagl.get(2000L, TimeUnit.MILLISECONDS);
                this.zzagl = null;
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            } catch (TimeoutException e3) {
                this.zzagl.cancel(true);
            }
        }
        return this.zzagk;
    }

    public void zzcs() {
        synchronized (zzagr) {
            if (this.zzagu) {
                return;
            }
            if (!this.zzags || this.zzagp == null) {
                this.zzagu = false;
            } else {
                this.zzagp.connect();
                this.zzagu = true;
            }
        }
    }

    public void zzct() {
        synchronized (zzagr) {
            if (this.zzagu && this.zzagp != null) {
                this.zzagp.disconnect();
                this.zzagu = false;
            }
        }
    }
}
