package com.facebook.notifications.internal.asset.handlers;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.asset.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BitmapAssetHandler implements a.b<BitmapAsset> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3388a = BitmapAssetHandler.class.getCanonicalName();

    @Override // com.facebook.notifications.internal.asset.a.b
    @Nullable
    public Set<URL> a(@NonNull JSONObject jSONObject) {
        try {
            URL url = new URL(jSONObject.getString("url"));
            HashSet hashSet = new HashSet();
            hashSet.add(url);
            return hashSet;
        } catch (MalformedURLException e) {
            return null;
        } catch (JSONException e2) {
            return null;
        }
    }

    @Override // com.facebook.notifications.internal.asset.a.b
    @Nullable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public BitmapAsset a(@NonNull JSONObject jSONObject, @NonNull a.InterfaceC0089a interfaceC0089a) {
        try {
            File a2 = interfaceC0089a.a(new URL(jSONObject.getString("url")));
            if (a2 == null) {
                return null;
            }
            return new BitmapAsset(a2);
        } catch (MalformedURLException e) {
            Log.e(f3388a, "JSON key 'url' was not a valid URL", e);
            return null;
        } catch (JSONException e2) {
            Log.e(f3388a, "JSON exception", e2);
            return null;
        }
    }

    @Override // com.facebook.notifications.internal.asset.a.b
    @NonNull
    public View a(@NonNull BitmapAsset bitmapAsset, @NonNull Context context) {
        ImageView imageView = new ImageView(context);
        imageView.setImageBitmap(bitmapAsset.c());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return imageView;
    }

    static class BitmapAsset implements Asset {
        public static final Parcelable.Creator<BitmapAsset> CREATOR = new Parcelable.Creator<BitmapAsset>() { // from class: com.facebook.notifications.internal.asset.handlers.BitmapAssetHandler.BitmapAsset.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public BitmapAsset createFromParcel(Parcel parcel) {
                return new BitmapAsset(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public BitmapAsset[] newArray(int i) {
                return new BitmapAsset[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final File f3389a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private transient Bitmap f3390b;

        /* JADX WARN: Can't wrap try/catch for region: R(4:13|14|15|16) */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0018, code lost:
        
            java.lang.System.gc();
            r0.inSampleSize *= 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
        
            r2.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
        
            throw r0;
         */
        @android.support.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static android.graphics.Bitmap a(@android.support.annotation.NonNull java.io.File r4) {
            /*
                r1 = 0
                android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options     // Catch: java.io.IOException -> L25
                r0.<init>()     // Catch: java.io.IOException -> L25
                r2 = 1
                r0.inSampleSize = r2     // Catch: java.io.IOException -> L25
            L9:
                java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.IOException -> L25
                r2.<init>(r4)     // Catch: java.io.IOException -> L25
                r3 = 0
                android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r2, r3, r0)     // Catch: java.lang.OutOfMemoryError -> L17 java.lang.Throwable -> L31
                r2.close()     // Catch: java.io.IOException -> L25
            L16:
                return r0
            L17:
                r3 = move-exception
                java.lang.System.gc()     // Catch: java.lang.Throwable -> L31
                int r3 = r0.inSampleSize     // Catch: java.lang.Throwable -> L31
                int r3 = r3 * 2
                r0.inSampleSize = r3     // Catch: java.lang.Throwable -> L31
                r2.close()     // Catch: java.io.IOException -> L25
                goto L9
            L25:
                r0 = move-exception
                java.lang.String r2 = com.facebook.notifications.internal.asset.handlers.BitmapAssetHandler.a()
                java.lang.String r3 = "IO Exception!"
                android.util.Log.e(r2, r3, r0)
                r0 = r1
                goto L16
            L31:
                r0 = move-exception
                r2.close()     // Catch: java.io.IOException -> L25
                throw r0     // Catch: java.io.IOException -> L25
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.notifications.internal.asset.handlers.BitmapAssetHandler.BitmapAsset.a(java.io.File):android.graphics.Bitmap");
        }

        private BitmapAsset(@NonNull File createdFrom) {
            this.f3389a = createdFrom;
        }

        private BitmapAsset(@NonNull Parcel parcel) {
            this.f3389a = new File(parcel.readString());
        }

        @NonNull
        public Bitmap c() {
            if (this.f3390b == null) {
                this.f3390b = a(this.f3389a);
                if (this.f3390b == null) {
                    throw new RuntimeException("Failed to decode bitmap from file");
                }
            }
            return this.f3390b;
        }

        @Override // com.facebook.notifications.internal.asset.Asset
        @NonNull
        public String a() {
            return "Image";
        }

        @Override // com.facebook.notifications.internal.asset.Asset
        public void b() throws Asset.a {
            if (!this.f3389a.exists()) {
                throw new Asset.a(new FileNotFoundException("Bitmap cache file does not exist: " + this.f3389a.getAbsolutePath()));
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.f3389a.getAbsolutePath());
        }
    }
}
