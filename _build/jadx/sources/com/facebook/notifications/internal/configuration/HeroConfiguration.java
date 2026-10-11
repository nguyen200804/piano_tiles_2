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
import com.mopub.mobileads.VastIconXmlManager;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HeroConfiguration implements Parcelable {
    public static final Parcelable.Creator<HeroConfiguration> CREATOR = new Parcelable.Creator<HeroConfiguration>() { // from class: com.facebook.notifications.internal.configuration.HeroConfiguration.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HeroConfiguration createFromParcel(Parcel parcel) {
            return new HeroConfiguration(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public HeroConfiguration[] newArray(int i) {
            return new HeroConfiguration[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final float f3410a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final Asset f3411b;

    @Nullable
    private final Content c;
    private final Content.VerticalAlignment d;

    private HeroConfiguration(@NonNull JSONObject json, @NonNull a assetManager, @NonNull com.facebook.notifications.internal.content.a contentManager) throws JSONException {
        this.f3410a = (float) json.optDouble(VastIconXmlManager.HEIGHT, -1.0d);
        this.f3411b = assetManager.a(json.getJSONObject("background"));
        JSONObject optJSONObject = json.optJSONObject(AppLovinEventTypes.USER_VIEWED_CONTENT);
        this.c = optJSONObject != null ? new TextContent(optJSONObject) : null;
        this.d = Content.VerticalAlignment.a(json.optString("contentAlign"));
    }

    private HeroConfiguration(Parcel parcel) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.f3410a = parcel.readFloat();
        this.f3411b = (Asset) parcel.readParcelable(classLoader);
        this.c = (Content) parcel.readParcelable(classLoader);
        this.d = (Content.VerticalAlignment) parcel.readParcelable(classLoader);
    }

    @Nullable
    public static HeroConfiguration a(@Nullable JSONObject jSONObject, @NonNull a aVar, @NonNull com.facebook.notifications.internal.content.a aVar2) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        return new HeroConfiguration(jSONObject, aVar, aVar2);
    }

    public void a() throws Asset.a {
        if (this.f3411b != null) {
            this.f3411b.b();
        }
    }

    public float b() {
        return this.f3410a;
    }

    @Nullable
    public Asset c() {
        return this.f3411b;
    }

    @Nullable
    public Content d() {
        return this.c;
    }

    public Content.VerticalAlignment e() {
        return this.d;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeFloat(this.f3410a);
        dest.writeParcelable(this.f3411b, flags);
        dest.writeParcelable(this.c, flags);
        dest.writeParcelable(this.d, flags);
    }
}
