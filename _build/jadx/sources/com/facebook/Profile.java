package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.facebook.internal.aa;
import com.facebook.internal.ab;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.metadata.MediationMetaData;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator() { // from class: com.facebook.Profile.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private final String f2424a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2425b;
    private final String c;
    private final String d;
    private final String e;
    private final Uri f;

    public static Profile a() {
        return w.a().b();
    }

    public static void a(Profile profile) {
        w.a().a(profile);
    }

    public static void b() {
        AccessToken a2 = AccessToken.a();
        if (a2 == null) {
            a(null);
        } else {
            com.facebook.internal.aa.a(a2.c(), new aa.c() { // from class: com.facebook.Profile.1
                @Override // com.facebook.internal.aa.c
                public void a(JSONObject jSONObject) {
                    String optString = jSONObject.optString(FacebookAdapter.KEY_ID);
                    if (optString != null) {
                        String optString2 = jSONObject.optString("link");
                        Profile.a(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString(MediationMetaData.KEY_NAME), optString2 != null ? Uri.parse(optString2) : null));
                    }
                }

                @Override // com.facebook.internal.aa.c
                public void a(i iVar) {
                }
            });
        }
    }

    public Profile(String id, @Nullable String firstName, @Nullable String middleName, @Nullable String lastName, @Nullable String name, @Nullable Uri linkUri) {
        ab.a(id, FacebookAdapter.KEY_ID);
        this.f2424a = id;
        this.f2425b = firstName;
        this.c = middleName;
        this.d = lastName;
        this.e = name;
        this.f = linkUri;
    }

    public String c() {
        return this.e;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Profile)) {
            return false;
        }
        Profile profile = (Profile) other;
        return (this.f2424a.equals(profile.f2424a) && this.f2425b == null) ? profile.f2425b == null : (this.f2425b.equals(profile.f2425b) && this.c == null) ? profile.c == null : (this.c.equals(profile.c) && this.d == null) ? profile.d == null : (this.d.equals(profile.d) && this.e == null) ? profile.e == null : (this.e.equals(profile.e) && this.f == null) ? profile.f == null : this.f.equals(profile.f);
    }

    public int hashCode() {
        int hashCode = this.f2424a.hashCode() + 527;
        if (this.f2425b != null) {
            hashCode = (hashCode * 31) + this.f2425b.hashCode();
        }
        if (this.c != null) {
            hashCode = (hashCode * 31) + this.c.hashCode();
        }
        if (this.d != null) {
            hashCode = (hashCode * 31) + this.d.hashCode();
        }
        if (this.e != null) {
            hashCode = (hashCode * 31) + this.e.hashCode();
        }
        if (this.f != null) {
            return (hashCode * 31) + this.f.hashCode();
        }
        return hashCode;
    }

    JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(FacebookAdapter.KEY_ID, this.f2424a);
            jSONObject.put("first_name", this.f2425b);
            jSONObject.put("middle_name", this.c);
            jSONObject.put("last_name", this.d);
            jSONObject.put(MediationMetaData.KEY_NAME, this.e);
            if (this.f != null) {
                jSONObject.put("link_uri", this.f.toString());
                return jSONObject;
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    Profile(JSONObject jsonObject) {
        this.f2424a = jsonObject.optString(FacebookAdapter.KEY_ID, null);
        this.f2425b = jsonObject.optString("first_name", null);
        this.c = jsonObject.optString("middle_name", null);
        this.d = jsonObject.optString("last_name", null);
        this.e = jsonObject.optString(MediationMetaData.KEY_NAME, null);
        String optString = jsonObject.optString("link_uri", null);
        this.f = optString != null ? Uri.parse(optString) : null;
    }

    private Profile(Parcel source) {
        this.f2424a = source.readString();
        this.f2425b = source.readString();
        this.c = source.readString();
        this.d = source.readString();
        this.e = source.readString();
        String readString = source.readString();
        this.f = readString == null ? null : Uri.parse(readString);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.f2424a);
        dest.writeString(this.f2425b);
        dest.writeString(this.c);
        dest.writeString(this.d);
        dest.writeString(this.e);
        dest.writeString(this.f == null ? null : this.f.toString());
    }
}
