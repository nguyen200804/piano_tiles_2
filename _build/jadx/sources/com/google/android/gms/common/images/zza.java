package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.widget.ImageView;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzra;
import com.google.android.gms.internal.zzrb;
import com.google.android.gms.internal.zzrc;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zza {
    final C0128zza wG;
    protected int wI;
    protected int wH = 0;
    protected boolean wJ = false;
    private boolean wK = true;
    private boolean wL = false;
    private boolean wM = true;

    /* renamed from: com.google.android.gms.common.images.zza$zza, reason: collision with other inner class name */
    static final class C0128zza {
        public final Uri uri;

        public C0128zza(Uri uri) {
            this.uri = uri;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0128zza)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return zzaa.equal(((C0128zza) obj).uri, this.uri);
        }

        public int hashCode() {
            return zzaa.hashCode(this.uri);
        }
    }

    public static final class zzb extends zza {
        private WeakReference<ImageView> wN;

        public zzb(ImageView imageView, int i) {
            super(null, i);
            com.google.android.gms.common.internal.zzb.zzu(imageView);
            this.wN = new WeakReference<>(imageView);
        }

        public zzb(ImageView imageView, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzu(imageView);
            this.wN = new WeakReference<>(imageView);
        }

        private void zza(ImageView imageView, Drawable drawable, boolean z, boolean z2, boolean z3) {
            boolean z4 = (z2 || z3) ? false : true;
            if (z4 && (imageView instanceof zzrb)) {
                int zzars = ((zzrb) imageView).zzars();
                if (this.wI != 0 && zzars == this.wI) {
                    return;
                }
            }
            boolean zzc = zzc(z, z2);
            Drawable zza = zzc ? zza(imageView.getDrawable(), drawable) : drawable;
            imageView.setImageDrawable(zza);
            if (imageView instanceof zzrb) {
                zzrb zzrbVar = (zzrb) imageView;
                zzrbVar.zzp(z3 ? this.wG.uri : null);
                zzrbVar.zzga(z4 ? this.wI : 0);
            }
            if (zzc) {
                ((zzra) zza).startTransition(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzb)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageView imageView = this.wN.get();
            ImageView imageView2 = ((zzb) obj).wN.get();
            return (imageView2 == null || imageView == null || !zzaa.equal(imageView2, imageView)) ? false : true;
        }

        public int hashCode() {
            return 0;
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageView imageView = this.wN.get();
            if (imageView != null) {
                zza(imageView, drawable, z, z2, z3);
            }
        }
    }

    public static final class zzc extends zza {
        private WeakReference<ImageManager.OnImageLoadedListener> wO;

        public zzc(ImageManager.OnImageLoadedListener onImageLoadedListener, Uri uri) {
            super(uri, 0);
            com.google.android.gms.common.internal.zzb.zzu(onImageLoadedListener);
            this.wO = new WeakReference<>(onImageLoadedListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zzc)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            zzc zzcVar = (zzc) obj;
            ImageManager.OnImageLoadedListener onImageLoadedListener = this.wO.get();
            ImageManager.OnImageLoadedListener onImageLoadedListener2 = zzcVar.wO.get();
            return onImageLoadedListener2 != null && onImageLoadedListener != null && zzaa.equal(onImageLoadedListener2, onImageLoadedListener) && zzaa.equal(zzcVar.wG, this.wG);
        }

        public int hashCode() {
            return zzaa.hashCode(this.wG);
        }

        @Override // com.google.android.gms.common.images.zza
        protected void zza(Drawable drawable, boolean z, boolean z2, boolean z3) {
            ImageManager.OnImageLoadedListener onImageLoadedListener;
            if (z2 || (onImageLoadedListener = this.wO.get()) == null) {
                return;
            }
            onImageLoadedListener.onImageLoaded(this.wG.uri, drawable, z3);
        }
    }

    public zza(Uri uri, int i) {
        this.wI = 0;
        this.wG = new C0128zza(uri);
        this.wI = i;
    }

    private Drawable zza(Context context, zzrc zzrcVar, int i) {
        return context.getResources().getDrawable(i);
    }

    protected zzra zza(Drawable drawable, Drawable drawable2) {
        if (drawable == null) {
            drawable = null;
        } else if (drawable instanceof zzra) {
            drawable = ((zzra) drawable).zzarq();
        }
        return new zzra(drawable, drawable2);
    }

    void zza(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.zzb.zzu(bitmap);
        zza(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    void zza(Context context, zzrc zzrcVar) {
        if (this.wM) {
            zza(null, false, true, false);
        }
    }

    void zza(Context context, zzrc zzrcVar, boolean z) {
        zza(this.wI != 0 ? zza(context, zzrcVar, this.wI) : null, z, false, false);
    }

    protected abstract void zza(Drawable drawable, boolean z, boolean z2, boolean z3);

    protected boolean zzc(boolean z, boolean z2) {
        return (!this.wK || z2 || z) ? false : true;
    }

    public void zzfy(int i) {
        this.wI = i;
    }
}
