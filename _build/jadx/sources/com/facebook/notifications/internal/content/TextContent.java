package com.facebook.notifications.internal.content;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.facebook.notifications.internal.asset.handlers.ColorAssetHandler;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class TextContent implements Content {
    public static final Parcelable.Creator<TextContent> CREATOR = new Parcelable.Creator<TextContent>() { // from class: com.facebook.notifications.internal.content.TextContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TextContent createFromParcel(Parcel parcel) {
            return new TextContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TextContent[] newArray(int i) {
            return new TextContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f3414a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3415b;

    @Nullable
    private final String c;
    private final float d;
    private final Alignment e;

    public enum Alignment implements Parcelable {
        Left,
        Right,
        Center;

        public static final Parcelable.Creator<Alignment> CREATOR = new com.facebook.notifications.internal.utilities.a(Alignment.class, values());

        public static Alignment a(@NonNull String str) {
            switch (str) {
            }
            return Left;
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

    public TextContent(@NonNull JSONObject json) throws JSONException {
        this.f3414a = json.getString("text");
        this.f3415b = ColorAssetHandler.a(json.optString("textColor"));
        this.c = json.optString("font");
        this.d = (float) json.optDouble("size", 18.0d);
        this.e = Alignment.a(json.getString("align"));
    }

    public TextContent(Parcel source) {
        this.f3414a = source.readString();
        this.f3415b = source.readInt();
        this.c = source.readString();
        this.d = source.readFloat();
        this.e = (Alignment) source.readParcelable(getClass().getClassLoader());
    }

    @NonNull
    public String a() {
        return this.f3414a;
    }

    public int b() {
        return this.f3415b;
    }

    @Nullable
    public String c() {
        return this.c;
    }

    public float d() {
        return this.d;
    }

    public Alignment e() {
        return this.e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f3414a);
        dest.writeInt(this.f3415b);
        dest.writeString(this.c);
        dest.writeFloat(this.d);
        dest.writeParcelable(this.e, flags);
    }
}
