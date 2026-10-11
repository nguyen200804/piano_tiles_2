package com.facebook.notifications.internal.asset.handlers;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.asset.a;
import com.facebook.notifications.internal.utilities.b;
import com.facebook.notifications.internal.view.f;
import java.io.File;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GifAssetHandler implements a.b<GifAsset> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3393a = GifAssetHandler.class.getCanonicalName();

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
    public GifAsset a(@NonNull JSONObject jSONObject, @NonNull a.InterfaceC0089a interfaceC0089a) {
        try {
            File a2 = interfaceC0089a.a(new URL(jSONObject.getString("url")));
            if (a2 == null) {
                return null;
            }
            return new GifAsset(a2);
        } catch (MalformedURLException e) {
            Log.e(f3393a, "JSON key 'url' was not a valid URL.", e);
            return null;
        } catch (JSONException e2) {
            Log.e(f3393a, "JSON exception", e2);
            return null;
        }
    }

    @Override // com.facebook.notifications.internal.asset.a.b
    @NonNull
    public View a(@NonNull GifAsset gifAsset, @NonNull Context context) {
        return new f(context, gifAsset.c());
    }

    static class GifAsset implements Asset {
        public static final Parcelable.Creator<GifAsset> CREATOR = new Parcelable.Creator<GifAsset>() { // from class: com.facebook.notifications.internal.asset.handlers.GifAssetHandler.GifAsset.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public GifAsset createFromParcel(Parcel parcel) {
                return new GifAsset(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public GifAsset[] newArray(int i) {
                return new GifAsset[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final File f3394a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private transient b f3395b;

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
        
            throw new java.io.IOException("File was shorter than expected!");
         */
        @android.support.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static com.facebook.notifications.internal.utilities.b a(@android.support.annotation.NonNull java.io.File r6) {
            /*
                r0 = 0
                long r2 = r6.length()
                r4 = 0
                int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r1 == 0) goto L12
                r4 = 2147483647(0x7fffffff, double:1.060997895E-314)
                int r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r1 <= 0) goto L13
            L12:
                return r0
            L13:
                int r1 = (int) r2
                byte[] r2 = new byte[r1]
                java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.io.IOException -> L40
                r3.<init>(r6)     // Catch: java.io.IOException -> L40
                r1 = 0
            L1c:
                int r4 = r2.length     // Catch: java.lang.Throwable -> L3b
                int r4 = r4 - r1
                if (r4 != 0) goto L2c
                r3.close()     // Catch: java.io.IOException -> L40
                com.facebook.notifications.internal.utilities.b r0 = new com.facebook.notifications.internal.utilities.b
                r0.<init>()
                r0.a(r2)
                goto L12
            L2c:
                int r4 = r3.read(r2, r1, r4)     // Catch: java.lang.Throwable -> L3b
                r5 = -1
                if (r4 != r5) goto L4b
                java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L3b
                java.lang.String r2 = "File was shorter than expected!"
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L3b
                throw r1     // Catch: java.lang.Throwable -> L3b
            L3b:
                r1 = move-exception
                r3.close()     // Catch: java.io.IOException -> L40
                throw r1     // Catch: java.io.IOException -> L40
            L40:
                r1 = move-exception
                java.lang.String r2 = com.facebook.notifications.internal.asset.handlers.GifAssetHandler.a()
                java.lang.String r3 = "IO Exception while reading GIF data"
                android.util.Log.e(r2, r3, r1)
                goto L12
            L4b:
                int r1 = r1 + r4
                goto L1c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.notifications.internal.asset.handlers.GifAssetHandler.GifAsset.a(java.io.File):com.facebook.notifications.internal.utilities.b");
        }

        private GifAsset(@NonNull File createdFrom) {
            this.f3394a = createdFrom;
        }

        private GifAsset(@NonNull Parcel source) {
            this.f3394a = new File(source.readString());
        }

        @NonNull
        public b c() {
            if (this.f3395b == null) {
                this.f3395b = a(this.f3394a);
                if (this.f3395b == null) {
                    throw new RuntimeException("Failed to decode GIF");
                }
            }
            return this.f3395b;
        }

        @Override // com.facebook.notifications.internal.asset.Asset
        @NonNull
        public String a() {
            return "GIF";
        }

        @Override // com.facebook.notifications.internal.asset.Asset
        public void b() throws Asset.a {
            if (!this.f3394a.exists()) {
                throw new Asset.a(new FileNotFoundException("GIF cache file does not exist: " + this.f3394a.getAbsolutePath()));
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.f3394a.getAbsolutePath());
        }
    }
}
