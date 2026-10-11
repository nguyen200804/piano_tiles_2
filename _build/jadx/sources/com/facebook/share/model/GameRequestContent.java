package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class GameRequestContent implements ShareModel {
    public static final Parcelable.Creator<GameRequestContent> CREATOR = new Parcelable.Creator<GameRequestContent>() { // from class: com.facebook.share.model.GameRequestContent.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GameRequestContent createFromParcel(Parcel parcel) {
            return new GameRequestContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GameRequestContent[] newArray(int i) {
            return new GameRequestContent[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f3504a;

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f3505b;
    private final String c;
    private final String d;
    private final a e;
    private final String f;
    private final c g;
    private final List<String> h;

    public enum a {
        SEND,
        ASKFOR,
        TURN
    }

    public enum c {
        APP_USERS,
        APP_NON_USERS
    }

    private GameRequestContent(b builder) {
        this.f3504a = builder.f3508a;
        this.f3505b = builder.f3509b;
        this.c = builder.d;
        this.d = builder.c;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
    }

    GameRequestContent(Parcel in) {
        this.f3504a = in.readString();
        this.f3505b = in.createStringArrayList();
        this.c = in.readString();
        this.d = in.readString();
        this.e = (a) in.readSerializable();
        this.f = in.readString();
        this.g = (c) in.readSerializable();
        this.h = in.createStringArrayList();
        in.readStringList(this.h);
    }

    public String a() {
        return this.f3504a;
    }

    public List<String> b() {
        return this.f3505b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public a e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public c g() {
        return this.g;
    }

    public List<String> h() {
        return this.h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.writeString(this.f3504a);
        out.writeStringList(this.f3505b);
        out.writeString(this.c);
        out.writeString(this.d);
        out.writeSerializable(this.e);
        out.writeString(this.f);
        out.writeSerializable(this.g);
        out.writeStringList(this.h);
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private String f3508a;

        /* renamed from: b, reason: collision with root package name */
        private List<String> f3509b;
        private String c;
        private String d;
        private a e;
        private String f;
        private c g;
        private List<String> h;

        public b a(String str) {
            this.f3508a = str;
            return this;
        }

        public b b(String str) {
            if (str != null) {
                this.f3509b = Arrays.asList(str.split(","));
            }
            return this;
        }

        public b c(String str) {
            this.d = str;
            return this;
        }

        public GameRequestContent a() {
            return new GameRequestContent(this);
        }
    }
}
