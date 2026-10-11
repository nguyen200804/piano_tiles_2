package com.facebook.notifications.internal.configuration;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.asset.a;
import com.facebook.notifications.internal.content.Content;
import com.facebook.notifications.internal.content.TextContent;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BodyConfiguration implements Parcelable {
    public static final Parcelable.Creator<BodyConfiguration> CREATOR = new Parcelable.Creator<BodyConfiguration>() { // from class: com.facebook.notifications.internal.configuration.BodyConfiguration.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BodyConfiguration createFromParcel(Parcel parcel) {
            return new BodyConfiguration(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BodyConfiguration[] newArray(int i) {
            return new BodyConfiguration[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Asset f3404a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final Content f3405b;

    private BodyConfiguration(@NonNull JSONObject json, @NonNull a assetManager, @NonNull com.facebook.notifications.internal.content.a contentManager) throws JSONException {
        this.f3404a = assetManager.a(json.getJSONObject("background"));
        JSONObject optJSONObject = json.optJSONObject(AppLovinEventTypes.USER_VIEWED_CONTENT);
        this.f3405b = optJSONObject != null ? new TextContent(optJSONObject) : null;
    }

    private BodyConfiguration(Parcel source) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.f3404a = (Asset) source.readParcelable(classLoader);
        this.f3405b = (Content) source.readParcelable(classLoader);
    }

    @Nullable
    public static BodyConfiguration a(@Nullable JSONObject jSONObject, @NonNull a aVar, @NonNull com.facebook.notifications.internal.content.a aVar2) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new BodyConfiguration(jSONObject, aVar, aVar2);
    }

    public void a() throws Asset.a {
        if (this.f3404a != null) {
            this.f3404a.b();
        }
    }

    @Nullable
    public Asset b() {
        return this.f3404a;
    }

    @NonNull
    public Content c() {
        return this.f3405b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f3404a, flags);
        dest.writeParcelable(this.f3405b, flags);
    }
}
