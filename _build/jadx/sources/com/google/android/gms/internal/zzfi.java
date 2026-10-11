package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzp;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzw;
import com.google.android.gms.ads.internal.reward.client.zzd;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzho;
import java.util.LinkedList;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzfi {
    private final List<zza> zzalc = new LinkedList();

    interface zza {
        void zzb(zzfj zzfjVar) throws RemoteException;
    }

    zzfi() {
    }

    void zza(final zzfj zzfjVar) {
        Handler handler = zzkh.zzclc;
        for (final zza zzaVar : this.zzalc) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.zzfi.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzaVar.zzb(zzfjVar);
                    } catch (RemoteException e) {
                        zzkd.zzd("Could not propagate interstitial ad event.", e);
                    }
                }
            });
        }
    }

    void zzc(com.google.android.gms.ads.internal.zzl zzlVar) {
        zzlVar.zza(new zzq.zza() { // from class: com.google.android.gms.internal.zzfi.1
            @Override // com.google.android.gms.ads.internal.client.zzq
            public void onAdClosed() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.1.1
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzalf != null) {
                            zzfjVar.zzalf.onAdClosed();
                        }
                        com.google.android.gms.ads.internal.zzu.zzgb().zzlo();
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.client.zzq
            public void onAdFailedToLoad(final int i) throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.1.2
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzalf != null) {
                            zzfjVar.zzalf.onAdFailedToLoad(i);
                        }
                    }
                });
                zzkd.v("Pooled interstitial failed to load.");
            }

            @Override // com.google.android.gms.ads.internal.client.zzq
            public void onAdLeftApplication() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.1.3
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzalf != null) {
                            zzfjVar.zzalf.onAdLeftApplication();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.client.zzq
            public void onAdLoaded() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.1.4
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzalf != null) {
                            zzfjVar.zzalf.onAdLoaded();
                        }
                    }
                });
                zzkd.v("Pooled interstitial loaded.");
            }

            @Override // com.google.android.gms.ads.internal.client.zzq
            public void onAdOpened() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.1.5
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzalf != null) {
                            zzfjVar.zzalf.onAdOpened();
                        }
                    }
                });
            }
        });
        zzlVar.zza(new zzw.zza() { // from class: com.google.android.gms.internal.zzfi.2
            @Override // com.google.android.gms.ads.internal.client.zzw
            public void onAppEvent(final String str, final String str2) throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.2.1
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkh != null) {
                            zzfjVar.zzbkh.onAppEvent(str, str2);
                        }
                    }
                });
            }
        });
        zzlVar.zza(new zzho.zza() { // from class: com.google.android.gms.internal.zzfi.3
            @Override // com.google.android.gms.internal.zzho
            public void zza(final zzhn zzhnVar) throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.3.1
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbki != null) {
                            zzfjVar.zzbki.zza(zzhnVar);
                        }
                    }
                });
            }
        });
        zzlVar.zza(new zzdo.zza() { // from class: com.google.android.gms.internal.zzfi.4
            @Override // com.google.android.gms.internal.zzdo
            public void zza(final zzdn zzdnVar) throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.4.1
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkj != null) {
                            zzfjVar.zzbkj.zza(zzdnVar);
                        }
                    }
                });
            }
        });
        zzlVar.zza(new zzp.zza() { // from class: com.google.android.gms.internal.zzfi.5
            @Override // com.google.android.gms.ads.internal.client.zzp
            public void onAdClicked() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.5.1
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkk != null) {
                            zzfjVar.zzbkk.onAdClicked();
                        }
                    }
                });
            }
        });
        zzlVar.zza(new zzd.zza() { // from class: com.google.android.gms.internal.zzfi.6
            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void onRewardedVideoAdClosed() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.4
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.onRewardedVideoAdClosed();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void onRewardedVideoAdFailedToLoad(final int i) throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.7
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.onRewardedVideoAdFailedToLoad(i);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void onRewardedVideoAdLeftApplication() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.6
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.onRewardedVideoAdLeftApplication();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void onRewardedVideoAdLoaded() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.1
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.onRewardedVideoAdLoaded();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void onRewardedVideoAdOpened() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.2
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.onRewardedVideoAdOpened();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void onRewardedVideoStarted() throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.3
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.onRewardedVideoStarted();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.ads.internal.reward.client.zzd
            public void zza(final com.google.android.gms.ads.internal.reward.client.zza zzaVar) throws RemoteException {
                zzfi.this.zzalc.add(new zza() { // from class: com.google.android.gms.internal.zzfi.6.5
                    @Override // com.google.android.gms.internal.zzfi.zza
                    public void zzb(zzfj zzfjVar) throws RemoteException {
                        if (zzfjVar.zzbkl != null) {
                            zzfjVar.zzbkl.zza(zzaVar);
                        }
                    }
                });
            }
        });
    }
}
