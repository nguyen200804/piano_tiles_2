package com.google.android.gms.internal;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfg extends zzfd {
    private static final Set<String> zzbjp = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzbjq = new DecimalFormat("#,###");
    private File zzbjr;
    private boolean zzbjs;

    public zzfg(zzlh zzlhVar) {
        super(zzlhVar);
        File cacheDir = this.mContext.getCacheDir();
        if (cacheDir == null) {
            zzkd.zzcx("Context.getCacheDir() returned null");
            return;
        }
        this.zzbjr = new File(cacheDir, "admobVideoStreams");
        if (!this.zzbjr.isDirectory() && !this.zzbjr.mkdirs()) {
            String valueOf = String.valueOf(this.zzbjr.getAbsolutePath());
            zzkd.zzcx(valueOf.length() != 0 ? "Could not create preload cache directory at ".concat(valueOf) : new String("Could not create preload cache directory at "));
            this.zzbjr = null;
        } else {
            if (this.zzbjr.setReadable(true, false) && this.zzbjr.setExecutable(true, false)) {
                return;
            }
            String valueOf2 = String.valueOf(this.zzbjr.getAbsolutePath());
            zzkd.zzcx(valueOf2.length() != 0 ? "Could not set cache file permissions at ".concat(valueOf2) : new String("Could not set cache file permissions at "));
            this.zzbjr = null;
        }
    }

    private File zzb(File file) {
        return new File(this.zzbjr, String.valueOf(file.getName()).concat(".done"));
    }

    private static void zzc(File file) {
        if (file.isFile()) {
            file.setLastModified(System.currentTimeMillis());
        } else {
            try {
                file.createNewFile();
            } catch (IOException e) {
            }
        }
    }

    @Override // com.google.android.gms.internal.zzfd
    public void abort() {
        this.zzbjs = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x03be, code lost:
    
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x03c6, code lost:
    
        if (com.google.android.gms.internal.zzkd.zzaz(3) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x03c8, code lost:
    
        r2 = com.google.android.gms.internal.zzfg.zzbjq.format(r5);
        com.google.android.gms.internal.zzkd.zzcv(new java.lang.StringBuilder((java.lang.String.valueOf(r2).length() + 22) + java.lang.String.valueOf(r27).length()).append("Preloaded ").append(r2).append(" bytes from ").append(r27).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0404, code lost:
    
        r12.setReadable(true, false);
        zzc(r13);
        zza(r27, r12.getAbsolutePath(), r5);
        com.google.android.gms.internal.zzfg.zzbjp.remove(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x041c, code lost:
    
        return true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [java.lang.String] */
    @Override // com.google.android.gms.internal.zzfd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean zzaz(java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 1123
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzfg.zzaz(java.lang.String):boolean");
    }

    public int zzll() {
        int i = 0;
        if (this.zzbjr != null) {
            for (File file : this.zzbjr.listFiles()) {
                if (!file.getName().endsWith(".done")) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean zzlm() {
        boolean z;
        long j;
        File file;
        if (this.zzbjr == null) {
            return false;
        }
        File file2 = null;
        long j2 = Long.MAX_VALUE;
        File[] listFiles = this.zzbjr.listFiles();
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            File file3 = listFiles[i];
            if (!file3.getName().endsWith(".done")) {
                j = file3.lastModified();
                if (j < j2) {
                    file = file3;
                    i++;
                    file2 = file;
                    j2 = j;
                }
            }
            j = j2;
            file = file2;
            i++;
            file2 = file;
            j2 = j;
        }
        if (file2 != null) {
            z = file2.delete();
            File zzb = zzb(file2);
            if (zzb.isFile()) {
                z &= zzb.delete();
            }
        } else {
            z = false;
        }
        return z;
    }
}
