package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import com.google.android.gms.internal.zzct;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
import org.apache.commons.io.IOUtils;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzcq {
    private final int zzatb;
    private final zzcp zzatd = new zzcs();
    private final int zzata = 6;
    private final int zzatc = 0;

    static class zza {
        ByteArrayOutputStream zzatf = new ByteArrayOutputStream(4096);
        Base64OutputStream zzatg = new Base64OutputStream(this.zzatf, 10);

        /* JADX WARN: Multi-variable type inference failed */
        public String toString() {
            String str;
            try {
                this.zzatg.close();
            } catch (IOException e) {
                zzkd.zzb("HashManager: Unable to convert to Base64.", e);
            }
            try {
                this.zzatf.close();
                str = this.zzatf.toString();
            } catch (IOException e2) {
                zzkd.zzb("HashManager: Unable to convert to Base64.", e2);
                str = "";
            } finally {
                this.zzatf = null;
                this.zzatg = null;
            }
            return str;
        }

        public void write(byte[] bArr) throws IOException {
            this.zzatg.write(bArr);
        }
    }

    public zzcq(int i) {
        this.zzatb = i;
    }

    public String zza(ArrayList<String> arrayList) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next().toLowerCase(Locale.US));
            stringBuffer.append('\n');
        }
        return zzab(stringBuffer.toString());
    }

    String zzab(String str) {
        String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
        if (split.length == 0) {
            return "";
        }
        zza zzif = zzif();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzatb, new Comparator<zzct.zza>() { // from class: com.google.android.gms.internal.zzcq.1
            @Override // java.util.Comparator
            /* renamed from: zza, reason: merged with bridge method [inline-methods] */
            public int compare(zzct.zza zzaVar, zzct.zza zzaVar2) {
                int i = zzaVar.zzatj - zzaVar2.zzatj;
                return i != 0 ? i : (int) (zzaVar.value - zzaVar2.value);
            }
        });
        for (String str2 : split) {
            String[] zzad = zzcr.zzad(str2);
            if (zzad.length != 0) {
                zzct.zza(zzad, this.zzatb, this.zzata, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzif.write(this.zzatd.zzaa(((zzct.zza) it.next()).zzati));
            } catch (IOException e) {
                zzkd.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzif.toString();
    }

    zza zzif() {
        return new zza();
    }
}
