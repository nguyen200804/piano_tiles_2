package com.facebook.notifications.internal.configuration;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.utilities.a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastIconXmlManager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ActionsConfiguration implements Parcelable {
    public static final Parcelable.Creator<ActionsConfiguration> CREATOR = new Parcelable.Creator<ActionsConfiguration>() { // from class: com.facebook.notifications.internal.configuration.ActionsConfiguration.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActionsConfiguration createFromParcel(Parcel parcel) {
            return new ActionsConfiguration(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActionsConfiguration[] newArray(int i) {
            return new ActionsConfiguration[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final ActionsStyle f3398a;

    /* renamed from: b, reason: collision with root package name */
    private final ActionsLayoutStyle f3399b;
    private final Asset c;
    private final float d;
    private final float e;
    private final float f;

    @NonNull
    private final ActionConfiguration[] g;
    private final float h;

    public enum ActionsStyle implements Parcelable {
        Attached,
        Detached;

        public static final Parcelable.Creator<ActionsStyle> CREATOR = new a(ActionsStyle.class, values());

        public static ActionsStyle a(String str) {
            switch (str) {
            }
            return Attached;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(ordinal());
        }
    }

    public enum ActionsLayoutStyle implements Parcelable {
        Vertical,
        Horizontal;

        public static final Parcelable.Creator<ActionsLayoutStyle> CREATOR = new a(ActionsLayoutStyle.class, values());

        public static ActionsLayoutStyle a(String str) {
            switch (str) {
            }
            return Vertical;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(ordinal());
        }
    }

    private ActionsConfiguration(@NonNull JSONObject json, @NonNull com.facebook.notifications.internal.asset.a assetManager) throws JSONException {
        this.f3398a = ActionsStyle.a(json.optString(FacebookAdapter.KEY_STYLE));
        this.f3399b = ActionsLayoutStyle.a(json.optString("layoutStyle"));
        this.c = assetManager.a(json.optJSONObject("background"));
        this.d = (float) json.optDouble("topInset", 0.0d);
        this.e = (float) json.optDouble("contentInset", 0.0d);
        this.f = (float) json.optDouble("cornerRadius", 0.0d);
        JSONArray jSONArray = json.getJSONArray("actions");
        this.g = new ActionConfiguration[jSONArray.length()];
        for (int i = 0; i < this.g.length; i++) {
            this.g[i] = new ActionConfiguration(jSONArray.getJSONObject(i));
        }
        this.h = (float) json.optDouble(VastIconXmlManager.HEIGHT, 44.0d);
    }

    private ActionsConfiguration(Parcel source) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.f3398a = (ActionsStyle) source.readParcelable(classLoader);
        this.f3399b = (ActionsLayoutStyle) source.readParcelable(classLoader);
        this.c = (Asset) source.readParcelable(classLoader);
        this.d = source.readFloat();
        this.e = source.readFloat();
        this.f = source.readFloat();
        this.g = (ActionConfiguration[]) source.createTypedArray(ActionConfiguration.CREATOR);
        this.h = source.readFloat();
    }

    @Nullable
    public static ActionsConfiguration a(@Nullable JSONObject jSONObject, @NonNull com.facebook.notifications.internal.asset.a aVar) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new ActionsConfiguration(jSONObject, aVar);
    }

    public void a() throws Asset.a {
        if (this.c != null) {
            this.c.b();
        }
    }

    public ActionsStyle b() {
        return this.f3398a;
    }

    public ActionsLayoutStyle c() {
        return this.f3399b;
    }

    public Asset d() {
        return this.c;
    }

    public float e() {
        return this.d;
    }

    public float f() {
        return this.e;
    }

    public float g() {
        return this.f;
    }

    @NonNull
    public ActionConfiguration[] h() {
        return this.g;
    }

    public float i() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f3398a, flags);
        dest.writeParcelable(this.f3399b, flags);
        dest.writeParcelable(this.c, flags);
        dest.writeFloat(this.d);
        dest.writeFloat(this.e);
        dest.writeFloat(this.f);
        dest.writeTypedArray(this.g, flags);
        dest.writeFloat(this.h);
    }
}
