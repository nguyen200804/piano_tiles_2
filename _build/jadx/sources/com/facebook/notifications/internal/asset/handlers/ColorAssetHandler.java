package com.facebook.notifications.internal.asset.handlers;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.asset.a;
import java.net.URL;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ColorAssetHandler implements a.b<ColorAsset> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3391a = ColorAssetHandler.class.getCanonicalName();

    public static int a(@Nullable String str) {
        if (str == null || str.equals("")) {
            return 0;
        }
        try {
            long parseLong = Long.parseLong(str.substring(1), 16);
            return (int) (((parseLong & 255) << 24) | (parseLong >> 8));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    @Override // com.facebook.notifications.internal.asset.a.b
    @Nullable
    public Set<URL> a(@NonNull JSONObject jSONObject) {
        return null;
    }

    @Override // com.facebook.notifications.internal.asset.a.b
    @Nullable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public ColorAsset a(@NonNull JSONObject jSONObject, @NonNull a.InterfaceC0089a interfaceC0089a) {
        try {
            return new ColorAsset(a(jSONObject.getString("rgbaHex")));
        } catch (JSONException e) {
            Log.e(f3391a, "JSON Exception", e);
            return null;
        }
    }

    @Override // com.facebook.notifications.internal.asset.a.b
    @NonNull
    public View a(@NonNull ColorAsset colorAsset, @NonNull Context context) {
        return new a(context, colorAsset.c());
    }

    static class ColorAsset implements Asset {
        public static final Parcelable.Creator<ColorAsset> CREATOR = new Parcelable.Creator<ColorAsset>() { // from class: com.facebook.notifications.internal.asset.handlers.ColorAssetHandler.ColorAsset.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public ColorAsset createFromParcel(Parcel parcel) {
                return new ColorAsset(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public ColorAsset[] newArray(int i) {
                return new ColorAsset[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        private final int f3392a;

        private ColorAsset(int color) {
            this.f3392a = color;
        }

        private ColorAsset(@NonNull Parcel parcel) {
            this.f3392a = parcel.readInt();
        }

        public int c() {
            return this.f3392a;
        }

        @Override // com.facebook.notifications.internal.asset.Asset
        @NonNull
        public String a() {
            return "Color";
        }

        @Override // com.facebook.notifications.internal.asset.Asset
        public void b() throws Asset.a {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.f3392a);
        }
    }

    private static class a extends FrameLayout {
        public a(Context context, int i) {
            super(context);
            setBackgroundColor(i);
        }
    }
}
