package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zza<T extends LifecycleDelegate> {
    private T Ks;
    private Bundle Kt;
    private LinkedList<InterfaceC0140zza> Ku;
    private final zzf<T> Kv = (zzf<T>) new zzf<T>() { // from class: com.google.android.gms.dynamic.zza.1
        @Override // com.google.android.gms.dynamic.zzf
        public void zza(T t) {
            zza.this.Ks = t;
            Iterator it = zza.this.Ku.iterator();
            while (it.hasNext()) {
                ((InterfaceC0140zza) it.next()).zzb(zza.this.Ks);
            }
            zza.this.Ku.clear();
            zza.this.Kt = null;
        }
    };

    /* renamed from: com.google.android.gms.dynamic.zza$zza, reason: collision with other inner class name */
    private interface InterfaceC0140zza {
        int getState();

        void zzb(LifecycleDelegate lifecycleDelegate);
    }

    private void zza(Bundle bundle, InterfaceC0140zza interfaceC0140zza) {
        if (this.Ks != null) {
            interfaceC0140zza.zzb(this.Ks);
            return;
        }
        if (this.Ku == null) {
            this.Ku = new LinkedList<>();
        }
        this.Ku.add(interfaceC0140zza);
        if (bundle != null) {
            if (this.Kt == null) {
                this.Kt = (Bundle) bundle.clone();
            } else {
                this.Kt.putAll(bundle);
            }
        }
        zza(this.Kv);
    }

    public static void zzb(FrameLayout frameLayout) {
        final Context context = frameLayout.getContext();
        final int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String zzc = com.google.android.gms.common.internal.zzh.zzc(context, isGooglePlayServicesAvailable, GooglePlayServicesUtil.zzbv(context));
        String zzh = com.google.android.gms.common.internal.zzh.zzh(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(zzc);
        linearLayout.addView(textView);
        if (zzh != null) {
            Button button = new Button(context);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(zzh);
            linearLayout.addView(button);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.dynamic.zza.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    context.startActivity(GooglePlayServicesUtil.zzfd(isGooglePlayServicesAvailable));
                }
            });
        }
    }

    private void zznd(int i) {
        while (!this.Ku.isEmpty() && this.Ku.getLast().getState() >= i) {
            this.Ku.removeLast();
        }
    }

    public void onCreate(final Bundle bundle) {
        zza(bundle, new InterfaceC0140zza() { // from class: com.google.android.gms.dynamic.zza.3
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public int getState() {
                return 1;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.Ks.onCreate(bundle);
            }
        });
    }

    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zza(bundle, new InterfaceC0140zza() { // from class: com.google.android.gms.dynamic.zza.4
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public int getState() {
                return 2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(zza.this.Ks.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        if (this.Ks == null) {
            zza(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.Ks != null) {
            this.Ks.onDestroy();
        } else {
            zznd(1);
        }
    }

    public void onDestroyView() {
        if (this.Ks != null) {
            this.Ks.onDestroyView();
        } else {
            zznd(2);
        }
    }

    public void onInflate(final Activity activity, final Bundle bundle, final Bundle bundle2) {
        zza(bundle2, new InterfaceC0140zza() { // from class: com.google.android.gms.dynamic.zza.2
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public int getState() {
                return 0;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.Ks.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        if (this.Ks != null) {
            this.Ks.onLowMemory();
        }
    }

    public void onPause() {
        if (this.Ks != null) {
            this.Ks.onPause();
        } else {
            zznd(5);
        }
    }

    public void onResume() {
        zza((Bundle) null, new InterfaceC0140zza() { // from class: com.google.android.gms.dynamic.zza.7
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public int getState() {
                return 5;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.Ks.onResume();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.Ks != null) {
            this.Ks.onSaveInstanceState(bundle);
        } else if (this.Kt != null) {
            bundle.putAll(this.Kt);
        }
    }

    public void onStart() {
        zza((Bundle) null, new InterfaceC0140zza() { // from class: com.google.android.gms.dynamic.zza.6
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public int getState() {
                return 4;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0140zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.Ks.onStart();
            }
        });
    }

    public void onStop() {
        if (this.Ks != null) {
            this.Ks.onStop();
        } else {
            zznd(4);
        }
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zzf<T> zzfVar);

    public T zzbbt() {
        return this.Ks;
    }
}
