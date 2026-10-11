package com.facebook.notifications.internal.configuration;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.notifications.internal.asset.Asset;
import com.facebook.notifications.internal.asset.handlers.ColorAssetHandler;
import com.facebook.notifications.internal.utilities.a;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CardConfiguration implements Parcelable {
    public static final Parcelable.Creator<CardConfiguration> CREATOR = new Parcelable.Creator<CardConfiguration>() { // from class: com.facebook.notifications.internal.configuration.CardConfiguration.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CardConfiguration createFromParcel(Parcel parcel) {
            try {
                CardConfiguration cardConfiguration = new CardConfiguration(parcel);
                cardConfiguration.a();
                return cardConfiguration;
            } catch (Asset.a e) {
                Log.w(CardConfiguration.f3406a, "Failed to decode card configuration", e);
                return null;
            }
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CardConfiguration[] newArray(int i) {
            return new CardConfiguration[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private static final String f3406a = CardConfiguration.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    private final CardSize f3407b;
    private final float c;
    private final float d;
    private final int e;

    @Nullable
    private final HeroConfiguration f;

    @Nullable
    private final BodyConfiguration g;

    @Nullable
    private final ActionsConfiguration h;

    public enum CardSize implements Parcelable {
        Invalid,
        Small,
        Medium,
        Large;

        public static final Parcelable.Creator<CardSize> CREATOR = new a(CardSize.class, values());

        public static CardSize a(String str) {
            switch (str) {
                case "small":
                    return Small;
                case "medium":
                    return Medium;
                case "large":
                    return Large;
                default:
                    return Invalid;
            }
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

    public CardConfiguration(@NonNull JSONObject jsonObject, @NonNull com.facebook.notifications.internal.asset.a assetManager, @NonNull com.facebook.notifications.internal.content.a contentManager) throws JSONException {
        this.f3407b = CardSize.a(jsonObject.getString("size"));
        this.c = (float) jsonObject.optDouble("cornerRadius", 0.0d);
        this.d = (float) jsonObject.optDouble("contentInset", 10.0d);
        this.e = ColorAssetHandler.a(jsonObject.getString("backdropColor"));
        this.f = HeroConfiguration.a(jsonObject.optJSONObject("hero"), assetManager, contentManager);
        this.g = BodyConfiguration.a(jsonObject.optJSONObject("body"), assetManager, contentManager);
        this.h = ActionsConfiguration.a(jsonObject.optJSONObject("actions"), assetManager);
    }

    public CardConfiguration(@NonNull Parcel source) {
        ClassLoader classLoader = getClass().getClassLoader();
        this.f3407b = (CardSize) source.readParcelable(classLoader);
        this.c = source.readFloat();
        this.d = source.readFloat();
        this.e = source.readInt();
        this.f = (HeroConfiguration) source.readParcelable(classLoader);
        this.g = (BodyConfiguration) source.readParcelable(classLoader);
        this.h = (ActionsConfiguration) source.readParcelable(classLoader);
    }

    public void a() throws Asset.a {
        if (this.f != null) {
            this.f.a();
        }
        if (this.g != null) {
            this.g.a();
        }
        if (this.h != null) {
            this.h.a();
        }
    }

    public CardSize b() {
        return this.f3407b;
    }

    public float c() {
        return this.c;
    }

    public float d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    @Nullable
    public HeroConfiguration f() {
        return this.f;
    }

    @Nullable
    public BodyConfiguration g() {
        return this.g;
    }

    @Nullable
    public ActionsConfiguration h() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.f3407b, flags);
        dest.writeFloat(this.c);
        dest.writeFloat(this.d);
        dest.writeInt(this.e);
        dest.writeParcelable(this.f, flags);
        dest.writeParcelable(this.g, flags);
        dest.writeParcelable(this.h, flags);
    }
}
