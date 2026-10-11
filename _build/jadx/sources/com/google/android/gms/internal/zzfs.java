package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzfp;
import com.google.android.gms.internal.zzla;
import com.mopub.common.Constants;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfs {
    private final Context mContext;
    private final Object zzail;
    private final VersionInfoParcel zzalo;
    private final String zzblr;
    private zzkl<zzfp> zzbls;
    private zzkl<zzfp> zzblt;

    @Nullable
    private zzd zzblu;
    private int zzblv;

    /* renamed from: com.google.android.gms.internal.zzfs$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ zzas zzblw;
        final /* synthetic */ zzd zzblx;

        /* renamed from: com.google.android.gms.internal.zzfs$1$1, reason: invalid class name and collision with other inner class name */
        class C01691 implements zzfp.zza {
            final /* synthetic */ zzfp zzblz;

            C01691(zzfp zzfpVar) {
                this.zzblz = zzfpVar;
            }

            @Override // com.google.android.gms.internal.zzfp.zza
            public void zzlz() {
                zzkh.zzclc.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.zzfs.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (zzfs.this.zzail) {
                            if (AnonymousClass1.this.zzblx.getStatus() == -1 || AnonymousClass1.this.zzblx.getStatus() == 1) {
                                return;
                            }
                            AnonymousClass1.this.zzblx.reject();
                            com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfs.1.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    C01691.this.zzblz.destroy();
                                }
                            });
                            zzkd.v("Could not receive loaded message in a timely manner. Rejecting.");
                        }
                    }
                }, zza.zzbmh);
            }
        }

        AnonymousClass1(zzas zzasVar, zzd zzdVar) {
            this.zzblw = zzasVar;
            this.zzblx = zzdVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            final zzfp zza = zzfs.this.zza(zzfs.this.mContext, zzfs.this.zzalo, this.zzblw);
            zza.zza(new C01691(zza));
            zza.zza("/jsLoaded", new zzep() { // from class: com.google.android.gms.internal.zzfs.1.2
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    synchronized (zzfs.this.zzail) {
                        if (AnonymousClass1.this.zzblx.getStatus() == -1 || AnonymousClass1.this.zzblx.getStatus() == 1) {
                            return;
                        }
                        zzfs.this.zzblv = 0;
                        zzfs.this.zzbls.zzd(zza);
                        AnonymousClass1.this.zzblx.zzg(zza);
                        zzfs.this.zzblu = AnonymousClass1.this.zzblx;
                        zzkd.v("Successfully loaded JS Engine.");
                    }
                }
            });
            final zzks zzksVar = new zzks();
            zzep zzepVar = new zzep() { // from class: com.google.android.gms.internal.zzfs.1.3
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    synchronized (zzfs.this.zzail) {
                        zzkd.zzcw("JS Engine is requesting an update");
                        if (zzfs.this.zzblv == 0) {
                            zzkd.zzcw("Starting reload.");
                            zzfs.this.zzblv = 2;
                            zzfs.this.zzb(AnonymousClass1.this.zzblw);
                        }
                        zza.zzb("/requestReload", (zzep) zzksVar.get());
                    }
                }
            };
            zzksVar.set(zzepVar);
            zza.zza("/requestReload", zzepVar);
            if (zzfs.this.zzblr.endsWith(".js")) {
                zza.zzbg(zzfs.this.zzblr);
            } else if (zzfs.this.zzblr.startsWith("<html>")) {
                zza.zzbi(zzfs.this.zzblr);
            } else {
                zza.zzbh(zzfs.this.zzblr);
            }
            zzkh.zzclc.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.zzfs.1.4
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzfs.this.zzail) {
                        if (AnonymousClass1.this.zzblx.getStatus() == -1 || AnonymousClass1.this.zzblx.getStatus() == 1) {
                            return;
                        }
                        AnonymousClass1.this.zzblx.reject();
                        com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfs.1.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                zza.destroy();
                            }
                        });
                        zzkd.v("Could not receive loaded message in a timely manner. Rejecting.");
                    }
                }
            }, zza.zzbmg);
        }
    }

    static class zza {
        static int zzbmg = 60000;
        static int zzbmh = Constants.TEN_SECONDS_MILLIS;
    }

    public static class zzb<T> implements zzkl<T> {
        @Override // com.google.android.gms.internal.zzkl
        public void zzd(T t) {
        }
    }

    public static class zzc extends zzlb<zzft> {
        private final Object zzail = new Object();
        private final zzd zzbmi;
        private boolean zzbmj;

        public zzc(zzd zzdVar) {
            this.zzbmi = zzdVar;
        }

        public void release() {
            synchronized (this.zzail) {
                if (this.zzbmj) {
                    return;
                }
                this.zzbmj = true;
                zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzfs.zzc.1
                    @Override // com.google.android.gms.internal.zzla.zzc
                    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                    public void zzd(zzft zzftVar) {
                        zzkd.v("Ending javascript session.");
                        ((zzfu) zzftVar).zzmf();
                    }
                }, new zzla.zzb());
                zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzfs.zzc.2
                    @Override // com.google.android.gms.internal.zzla.zzc
                    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                    public void zzd(zzft zzftVar) {
                        zzkd.v("Releasing engine reference.");
                        zzc.this.zzbmi.zzmc();
                    }
                }, new zzla.zza() { // from class: com.google.android.gms.internal.zzfs.zzc.3
                    @Override // com.google.android.gms.internal.zzla.zza
                    public void run() {
                        zzc.this.zzbmi.zzmc();
                    }
                });
            }
        }
    }

    public static class zzd extends zzlb<zzfp> {
        private zzkl<zzfp> zzblt;
        private final Object zzail = new Object();
        private boolean zzbml = false;
        private int zzbmm = 0;

        public zzd(zzkl<zzfp> zzklVar) {
            this.zzblt = zzklVar;
        }

        public zzc zzmb() {
            final zzc zzcVar = new zzc(this);
            synchronized (this.zzail) {
                zza(new zzla.zzc<zzfp>() { // from class: com.google.android.gms.internal.zzfs.zzd.1
                    @Override // com.google.android.gms.internal.zzla.zzc
                    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
                    public void zzd(zzfp zzfpVar) {
                        zzkd.v("Getting a new session for JS Engine.");
                        zzcVar.zzg(zzfpVar.zzly());
                    }
                }, new zzla.zza() { // from class: com.google.android.gms.internal.zzfs.zzd.2
                    @Override // com.google.android.gms.internal.zzla.zza
                    public void run() {
                        zzkd.v("Rejecting reference for JS Engine.");
                        zzcVar.reject();
                    }
                });
                com.google.android.gms.common.internal.zzab.zzbn(this.zzbmm >= 0);
                this.zzbmm++;
            }
            return zzcVar;
        }

        protected void zzmc() {
            synchronized (this.zzail) {
                com.google.android.gms.common.internal.zzab.zzbn(this.zzbmm >= 1);
                zzkd.v("Releasing 1 reference for JS Engine");
                this.zzbmm--;
                zzme();
            }
        }

        public void zzmd() {
            synchronized (this.zzail) {
                com.google.android.gms.common.internal.zzab.zzbn(this.zzbmm >= 0);
                zzkd.v("Releasing root reference. JS Engine will be destroyed once other references are released.");
                this.zzbml = true;
                zzme();
            }
        }

        protected void zzme() {
            synchronized (this.zzail) {
                com.google.android.gms.common.internal.zzab.zzbn(this.zzbmm >= 0);
                if (this.zzbml && this.zzbmm == 0) {
                    zzkd.v("No reference is left (including root). Cleaning up engine.");
                    zza(new zzla.zzc<zzfp>() { // from class: com.google.android.gms.internal.zzfs.zzd.3
                        @Override // com.google.android.gms.internal.zzla.zzc
                        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
                        public void zzd(final zzfp zzfpVar) {
                            com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfs.zzd.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    zzd.this.zzblt.zzd(zzfpVar);
                                    zzfpVar.destroy();
                                }
                            });
                        }
                    }, new zzla.zzb());
                } else {
                    zzkd.v("There are still references to the engine. Not destroying.");
                }
            }
        }
    }

    public static class zze extends zzlb<zzft> {
        private zzc zzbmr;

        public zze(zzc zzcVar) {
            this.zzbmr = zzcVar;
        }

        public void finalize() {
            this.zzbmr.release();
            this.zzbmr = null;
        }

        @Override // com.google.android.gms.internal.zzlb
        public int getStatus() {
            return this.zzbmr.getStatus();
        }

        @Override // com.google.android.gms.internal.zzlb
        public void reject() {
            this.zzbmr.reject();
        }

        @Override // com.google.android.gms.internal.zzlb, com.google.android.gms.internal.zzla
        public void zza(zzla.zzc<zzft> zzcVar, zzla.zza zzaVar) {
            this.zzbmr.zza(zzcVar, zzaVar);
        }

        @Override // com.google.android.gms.internal.zzlb, com.google.android.gms.internal.zzla
        /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
        public void zzg(zzft zzftVar) {
            this.zzbmr.zzg(zzftVar);
        }
    }

    public zzfs(Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.zzail = new Object();
        this.zzblv = 1;
        this.zzblr = str;
        this.mContext = context.getApplicationContext();
        this.zzalo = versionInfoParcel;
        this.zzbls = new zzb();
        this.zzblt = new zzb();
    }

    public zzfs(Context context, VersionInfoParcel versionInfoParcel, String str, zzkl<zzfp> zzklVar, zzkl<zzfp> zzklVar2) {
        this(context, versionInfoParcel, str);
        this.zzbls = zzklVar;
        this.zzblt = zzklVar2;
    }

    private zzd zza(@Nullable zzas zzasVar) {
        zzd zzdVar = new zzd(this.zzblt);
        com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new AnonymousClass1(zzasVar, zzdVar));
        return zzdVar;
    }

    protected zzfp zza(Context context, VersionInfoParcel versionInfoParcel, @Nullable zzas zzasVar) {
        return new zzfr(context, versionInfoParcel, zzasVar);
    }

    protected zzd zzb(@Nullable zzas zzasVar) {
        final zzd zza2 = zza(zzasVar);
        zza2.zza(new zzla.zzc<zzfp>() { // from class: com.google.android.gms.internal.zzfs.2
            @Override // com.google.android.gms.internal.zzla.zzc
            /* renamed from: zza, reason: merged with bridge method [inline-methods] */
            public void zzd(zzfp zzfpVar) {
                synchronized (zzfs.this.zzail) {
                    zzfs.this.zzblv = 0;
                    if (zzfs.this.zzblu != null && zza2 != zzfs.this.zzblu) {
                        zzkd.v("New JS engine is loaded, marking previous one as destroyable.");
                        zzfs.this.zzblu.zzmd();
                    }
                    zzfs.this.zzblu = zza2;
                }
            }
        }, new zzla.zza() { // from class: com.google.android.gms.internal.zzfs.3
            @Override // com.google.android.gms.internal.zzla.zza
            public void run() {
                synchronized (zzfs.this.zzail) {
                    zzfs.this.zzblv = 1;
                    zzkd.v("Failed loading new engine. Marking new engine destroyable.");
                    zza2.zzmd();
                }
            }
        });
        return zza2;
    }

    public zzc zzc(@Nullable zzas zzasVar) {
        zzc zzmb;
        synchronized (this.zzail) {
            if (this.zzblu == null || this.zzblu.getStatus() == -1) {
                this.zzblv = 2;
                this.zzblu = zzb(zzasVar);
                zzmb = this.zzblu.zzmb();
            } else if (this.zzblv == 0) {
                zzmb = this.zzblu.zzmb();
            } else if (this.zzblv == 1) {
                this.zzblv = 2;
                zzb(zzasVar);
                zzmb = this.zzblu.zzmb();
            } else {
                zzmb = this.zzblv == 2 ? this.zzblu.zzmb() : this.zzblu.zzmb();
            }
        }
        return zzmb;
    }

    public zzc zzma() {
        return zzc((zzas) null);
    }
}
