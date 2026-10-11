package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import com.google.android.gms.internal.zzae;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzaq extends zzao {
    private static Method zzafo;
    protected boolean zzafn;
    protected String zzafp;
    protected boolean zzafr;
    protected boolean zzafs;
    private static final String TAG = zzaq.class.getSimpleName();
    private static long startTime = 0;
    static boolean zzafq = false;
    protected static volatile zzax zzaey = null;
    protected static final Object zzaft = new Object();

    protected zzaq(Context context, String str) {
        super(context);
        this.zzafn = false;
        this.zzafr = false;
        this.zzafs = false;
        this.zzafp = str;
        this.zzafn = false;
    }

    protected zzaq(Context context, String str, boolean z) {
        super(context);
        this.zzafn = false;
        this.zzafr = false;
        this.zzafs = false;
        this.zzafp = str;
        this.zzafn = z;
    }

    static List<Long> zza(zzax zzaxVar, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zzaw {
        zzafo = zzaxVar.zzc(zzav.zzcb(), zzav.zzcc());
        if (zzafo == null || motionEvent == null) {
            throw new zzaw();
        }
        try {
            return (ArrayList) zzafo.invoke(null, motionEvent, displayMetrics);
        } catch (IllegalAccessException e) {
            throw new zzaw(e);
        } catch (InvocationTargetException e2) {
            throw new zzaw(e2);
        }
    }

    protected static synchronized void zza(Context context, boolean z) {
        synchronized (zzaq.class) {
            if (!zzafq) {
                startTime = Calendar.getInstance().getTime().getTime() / 1000;
                zzaey = zzb(context, z);
                zzafq = true;
            }
        }
    }

    private static void zza(zzax zzaxVar) {
        List<Class> singletonList = Collections.singletonList(Context.class);
        zzaxVar.zza(zzav.zzbn(), zzav.zzbo(), singletonList);
        zzaxVar.zza(zzav.zzbl(), zzav.zzbm(), singletonList);
        zzaxVar.zza(zzav.zzbx(), zzav.zzby(), singletonList);
        zzaxVar.zza(zzav.zzbv(), zzav.zzbw(), singletonList);
        zzaxVar.zza(zzav.zzbf(), zzav.zzbg(), singletonList);
        zzaxVar.zza(zzav.zzbd(), zzav.zzbe(), singletonList);
        zzaxVar.zza(zzav.zzbb(), zzav.zzbc(), singletonList);
        zzaxVar.zza(zzav.zzbr(), zzav.zzbs(), singletonList);
        zzaxVar.zza(zzav.zzaz(), zzav.zzba(), singletonList);
        zzaxVar.zza(zzav.zzcb(), zzav.zzcc(), Arrays.asList(MotionEvent.class, DisplayMetrics.class));
        zzaxVar.zza(zzav.zzbj(), zzav.zzbk(), Collections.emptyList());
        zzaxVar.zza(zzav.zzbz(), zzav.zzca(), Collections.emptyList());
        zzaxVar.zza(zzav.zzbt(), zzav.zzbu(), Collections.emptyList());
        zzaxVar.zza(zzav.zzbh(), zzav.zzbi(), Collections.emptyList());
        zzaxVar.zza(zzav.zzbp(), zzav.zzbq(), Collections.emptyList());
    }

    protected static zzax zzb(Context context, boolean z) {
        if (zzaey == null) {
            synchronized (zzaft) {
                if (zzaey == null) {
                    zzax zza = zzax.zza(context, zzav.getKey(), zzav.zzay(), z);
                    zza(zza);
                    zzaey = zza;
                }
            }
        }
        return zzaey;
    }

    protected void zza(zzax zzaxVar, zzae.zza zzaVar) {
        if (zzaxVar.zzcd() == null) {
            return;
        }
        zza(zzb(zzaxVar, zzaVar));
    }

    protected void zza(List<Callable<Void>> list) {
        ExecutorService zzcd;
        if (zzaey == null || (zzcd = zzaey.zzcd()) == null || list.isEmpty()) {
            return;
        }
        try {
            zzcd.invokeAll(list, zzdc.zzbbj.get().longValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Log.d(TAG, String.format("class methods got exception: %s", zzay.zza(e)));
        }
    }

    protected List<Callable<Void>> zzb(zzax zzaxVar, zzae.zza zzaVar) {
        int zzat = zzaxVar.zzat();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzbb(zzaxVar, zzav.zzbn(), zzav.zzbo(), zzaVar, zzat, 27));
        arrayList.add(new zzbg(zzaxVar, zzav.zzbj(), zzav.zzbk(), zzaVar, startTime, zzat, 25));
        arrayList.add(new zzbl(zzaxVar, zzav.zzbt(), zzav.zzbu(), zzaVar, zzat, 1));
        arrayList.add(new zzbm(zzaxVar, zzav.zzbv(), zzav.zzbw(), zzaVar, zzat, 31));
        arrayList.add(new zzbn(zzaxVar, zzav.zzbz(), zzav.zzca(), zzaVar, zzat, 33));
        arrayList.add(new zzba(zzaxVar, zzav.zzbx(), zzav.zzby(), zzaVar, zzat, 29));
        arrayList.add(new zzbe(zzaxVar, zzav.zzbf(), zzav.zzbg(), zzaVar, zzat, 5));
        arrayList.add(new zzbk(zzaxVar, zzav.zzbr(), zzav.zzbs(), zzaVar, zzat, 12));
        arrayList.add(new zzaz(zzaxVar, zzav.zzaz(), zzav.zzba(), zzaVar, zzat, 3));
        arrayList.add(new zzbd(zzaxVar, zzav.zzbd(), zzav.zzbe(), zzaVar, zzat, 34));
        arrayList.add(new zzbc(zzaxVar, zzav.zzbb(), zzav.zzbc(), zzaVar, zzat, 35));
        if (zzdc.zzbbn.get().booleanValue()) {
            arrayList.add(new zzbf(zzaxVar, zzav.zzbh(), zzav.zzbi(), zzaVar, zzat, 44));
        }
        if (zzdc.zzbbq.get().booleanValue()) {
            arrayList.add(new zzbj(zzaxVar, zzav.zzbp(), zzav.zzbq(), zzaVar, zzat, 22));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzao
    protected zzae.zza zzc(Context context) {
        zzae.zza zzaVar = new zzae.zza();
        if (!TextUtils.isEmpty(this.zzafp)) {
            zzaVar.zzcs = this.zzafp;
        }
        zzax zzb = zzb(context, this.zzafn);
        zzb.zzcs();
        zza(zzb, zzaVar);
        zzb.zzct();
        return zzaVar;
    }

    protected List<Callable<Void>> zzc(zzax zzaxVar, zzae.zza zzaVar) {
        ArrayList arrayList = new ArrayList();
        if (zzaxVar.zzcd() == null) {
            return arrayList;
        }
        int zzat = zzaxVar.zzat();
        arrayList.add(new zzbi(zzaxVar, zzaVar));
        arrayList.add(new zzbl(zzaxVar, zzav.zzbt(), zzav.zzbu(), zzaVar, zzat, 1));
        arrayList.add(new zzbg(zzaxVar, zzav.zzbj(), zzav.zzbk(), zzaVar, startTime, zzat, 25));
        if (zzdc.zzbbo.get().booleanValue()) {
            arrayList.add(new zzbf(zzaxVar, zzav.zzbh(), zzav.zzbi(), zzaVar, zzat, 44));
        }
        arrayList.add(new zzaz(zzaxVar, zzav.zzaz(), zzav.zzba(), zzaVar, zzat, 3));
        if (zzdc.zzbbr.get().booleanValue()) {
            arrayList.add(new zzbj(zzaxVar, zzav.zzbp(), zzav.zzbq(), zzaVar, zzat, 22));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzao
    protected zzae.zza zzd(Context context) {
        zzae.zza zzaVar = new zzae.zza();
        if (!TextUtils.isEmpty(this.zzafp)) {
            zzaVar.zzcs = this.zzafp;
        }
        zzax zzb = zzb(context, this.zzafn);
        zzb.zzcs();
        zzd(zzb, zzaVar);
        zzb.zzct();
        return zzaVar;
    }

    protected void zzd(zzax zzaxVar, zzae.zza zzaVar) {
        try {
            List<Long> zza = zza(zzaxVar, this.zzafd, this.zzafl);
            zzaVar.zzdf = zza.get(0);
            zzaVar.zzdg = zza.get(1);
            if (zza.get(2).longValue() >= 0) {
                zzaVar.zzdh = zza.get(2);
            }
            zzaVar.zzdv = zza.get(3);
            zzaVar.zzdw = zza.get(4);
        } catch (zzaw e) {
        }
        if (this.zzaff > 0) {
            zzaVar.zzea = Long.valueOf(this.zzaff);
        }
        if (this.zzafg > 0) {
            zzaVar.zzdz = Long.valueOf(this.zzafg);
        }
        if (this.zzafh > 0) {
            zzaVar.zzdy = Long.valueOf(this.zzafh);
        }
        if (this.zzafi > 0) {
            zzaVar.zzeb = Long.valueOf(this.zzafi);
        }
        if (this.zzafj > 0) {
            zzaVar.zzed = Long.valueOf(this.zzafj);
        }
        try {
            int size = this.zzafe.size() - 1;
            if (size > 0) {
                zzaVar.zzee = new zzae.zza.C0147zza[size];
                for (int i = 0; i < size; i++) {
                    List<Long> zza2 = zza(zzaxVar, this.zzafe.get(i), this.zzafl);
                    zzae.zza.C0147zza c0147zza = new zzae.zza.C0147zza();
                    c0147zza.zzdf = zza2.get(0);
                    c0147zza.zzdg = zza2.get(1);
                    zzaVar.zzee[i] = c0147zza;
                }
            }
        } catch (zzaw e2) {
            zzaVar.zzee = null;
        }
        zza(zzc(zzaxVar, zzaVar));
    }
}
