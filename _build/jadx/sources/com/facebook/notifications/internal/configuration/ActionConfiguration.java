package com.facebook.notifications.internal.configuration;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.facebook.notifications.internal.asset.handlers.ColorAssetHandler;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ActionConfiguration implements Parcelable {
    public static final Parcelable.Creator<ActionConfiguration> CREATOR = new Parcelable.Creator<ActionConfiguration>() { // from class: com.facebook.notifications.internal.configuration.ActionConfiguration.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActionConfiguration createFromParcel(Parcel parcel) {
            return new ActionConfiguration(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActionConfiguration[] newArray(int i) {
            return new ActionConfiguration[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final int f3396a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3397b;
    private final float c;

    @NonNull
    private final String d;
    private final int e;

    @Nullable
    private final Uri f;

    public ActionConfiguration(JSONObject json) throws JSONException {
        this.f3396a = ColorAssetHandler.a(json.optString("backgroundColor"));
        this.f3397b = ColorAssetHandler.a(json.optString("borderColor"));
        this.c = (float) json.optDouble("borderWidth", 0.0d);
        this.d = json.getString("title");
        this.e = ColorAssetHandler.a(json.getString("titleColor"));
        String optString = json.optString("url", null);
        this.f = optString != null ? Uri.parse(optString) : null;
    }

    public ActionConfiguration(Parcel source) {
        this.f3396a = source.readInt();
        this.f3397b = source.readInt();
        this.c = source.readFloat();
        this.d = source.readString();
        this.e = source.readInt();
        this.f = (Uri) source.readParcelable(getClass().getClassLoader());
    }

    public int a() {
        return this.f3396a;
    }

    public int b() {
        return this.f3397b;
    }

    public float c() {
        return this.c;
    }

    @NonNull
    public String d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    @Nullable
    public Uri f() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.f3396a);
        dest.writeInt(this.f3397b);
        dest.writeFloat(this.c);
        dest.writeString(this.d);
        dest.writeInt(this.e);
        dest.writeParcelable(this.f, flags);
    }
}
