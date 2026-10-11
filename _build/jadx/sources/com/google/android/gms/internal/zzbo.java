package com.google.android.gms.internal;

import com.google.android.gms.internal.zzau;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzbo {
    protected static final String TAG = zzbo.class.getSimpleName();
    private final String className;
    private final zzax zzaey;
    private final String zzahf;
    private List<Class> zzahi;
    private final int zzahg = 2;
    private volatile Method zzahh = null;
    private CountDownLatch zzahj = new CountDownLatch(1);

    public zzbo(zzax zzaxVar, String str, String str2, List<Class> list) {
        this.zzaey = zzaxVar;
        this.className = str;
        this.zzahf = str2;
        this.zzahi = new ArrayList(list);
        this.zzaey.zzcd().submit(new Runnable() { // from class: com.google.android.gms.internal.zzbo.1
            @Override // java.lang.Runnable
            public void run() {
                zzbo.this.zzcy();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzcy() {
        try {
            Class loadClass = this.zzaey.zzce().loadClass(zzd(this.zzaey.zzcg(), this.className));
            if (loadClass == null) {
                return;
            }
            this.zzahh = loadClass.getMethod(zzd(this.zzaey.zzcg(), this.zzahf), (Class[]) this.zzahi.toArray(new Class[this.zzahi.size()]));
            if (this.zzahh == null) {
            }
        } catch (zzau.zza e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            this.zzahj.countDown();
        }
    }

    private String zzd(byte[] bArr, String str) throws zzau.zza, UnsupportedEncodingException {
        return new String(this.zzaey.zzcf().zzc(bArr, str), "UTF-8");
    }

    public Method zzcz() {
        if (this.zzahh != null) {
            return this.zzahh;
        }
        try {
            if (this.zzahj.await(2L, TimeUnit.SECONDS)) {
                return this.zzahh;
            }
            return null;
        } catch (InterruptedException e) {
            return null;
        }
    }
}
