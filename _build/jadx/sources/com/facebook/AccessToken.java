package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.internal.ab;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class AccessToken implements Parcelable {
    private final Date e;
    private final Set<String> f;
    private final Set<String> g;
    private final String h;
    private final c i;
    private final Date j;
    private final String k;
    private final String l;

    /* renamed from: a, reason: collision with root package name */
    private static final Date f2401a = new Date(Long.MAX_VALUE);

    /* renamed from: b, reason: collision with root package name */
    private static final Date f2402b = f2401a;
    private static final Date c = new Date();
    private static final c d = c.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new Parcelable.Creator() { // from class: com.facebook.AccessToken.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccessToken createFromParcel(Parcel parcel) {
            return new AccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccessToken[] newArray(int i) {
            return new AccessToken[i];
        }
    };

    public interface a {
        void a(AccessToken accessToken);

        void a(i iVar);
    }

    public AccessToken(String accessToken, String applicationId, String userId, @Nullable Collection<String> permissions, @Nullable Collection<String> declinedPermissions, @Nullable c accessTokenSource, @Nullable Date expirationTime, @Nullable Date lastRefreshTime) {
        ab.a(accessToken, "accessToken");
        ab.a(applicationId, "applicationId");
        ab.a(userId, "userId");
        this.e = expirationTime == null ? f2402b : expirationTime;
        this.f = Collections.unmodifiableSet(permissions != null ? new HashSet(permissions) : new HashSet());
        this.g = Collections.unmodifiableSet(declinedPermissions != null ? new HashSet(declinedPermissions) : new HashSet());
        this.h = accessToken;
        this.i = accessTokenSource == null ? d : accessTokenSource;
        this.j = lastRefreshTime == null ? c : lastRefreshTime;
        this.k = applicationId;
        this.l = userId;
    }

    public static AccessToken a() {
        return b.a().b();
    }

    public static void a(AccessToken accessToken) {
        b.a().a(accessToken);
    }

    public static void b() {
        b.a().a((a) null);
    }

    public String c() {
        return this.h;
    }

    public Date d() {
        return this.e;
    }

    public Set<String> e() {
        return this.f;
    }

    public Set<String> f() {
        return this.g;
    }

    public c g() {
        return this.i;
    }

    public Date h() {
        return this.j;
    }

    public String i() {
        return this.k;
    }

    public String j() {
        return this.l;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(m());
        a(sb);
        sb.append("}");
        return sb.toString();
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) other;
        return this.e.equals(accessToken.e) && this.f.equals(accessToken.f) && this.g.equals(accessToken.g) && this.h.equals(accessToken.h) && this.i == accessToken.i && this.j.equals(accessToken.j) && (this.k != null ? this.k.equals(accessToken.k) : accessToken.k == null) && this.l.equals(accessToken.l);
    }

    public int hashCode() {
        return (((this.k == null ? 0 : this.k.hashCode()) + ((((((((((((this.e.hashCode() + 527) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + this.j.hashCode()) * 31)) * 31) + this.l.hashCode();
    }

    static AccessToken a(Bundle bundle) {
        List<String> a2 = a(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> a3 = a(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        String d2 = t.d(bundle);
        if (com.facebook.internal.aa.a(d2)) {
            d2 = l.i();
        }
        String b2 = t.b(bundle);
        try {
            return new AccessToken(b2, d2, com.facebook.internal.aa.e(b2).getString(FacebookAdapter.KEY_ID), a2, a3, t.c(bundle), t.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), t.a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
        } catch (JSONException e) {
            return null;
        }
    }

    static List<String> a(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    public boolean k() {
        return new Date().after(this.e);
    }

    JSONObject l() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(MediationMetaData.KEY_VERSION, 1);
        jSONObject.put("token", this.h);
        jSONObject.put("expires_at", this.e.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.g));
        jSONObject.put("last_refresh", this.j.getTime());
        jSONObject.put("source", this.i.name());
        jSONObject.put("application_id", this.k);
        jSONObject.put("user_id", this.l);
        return jSONObject;
    }

    static AccessToken a(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt(MediationMetaData.KEY_VERSION) > 1) {
            throw new i("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        return new AccessToken(string, jSONObject.getString("application_id"), jSONObject.getString("user_id"), com.facebook.internal.aa.a(jSONArray), com.facebook.internal.aa.a(jSONArray2), c.valueOf(jSONObject.getString("source")), date, date2);
    }

    private String m() {
        if (this.h == null) {
            return "null";
        }
        if (l.a(u.INCLUDE_ACCESS_TOKENS)) {
            return this.h;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    private void a(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.f == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.f));
        sb.append("]");
    }

    AccessToken(Parcel parcel) {
        this.e = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.g = Collections.unmodifiableSet(new HashSet(arrayList));
        this.h = parcel.readString();
        this.i = c.valueOf(parcel.readString());
        this.j = new Date(parcel.readLong());
        this.k = parcel.readString();
        this.l = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.e.getTime());
        dest.writeStringList(new ArrayList(this.f));
        dest.writeStringList(new ArrayList(this.g));
        dest.writeString(this.h);
        dest.writeString(this.i.name());
        dest.writeLong(this.j.getTime());
        dest.writeString(this.k);
        dest.writeString(this.l);
    }
}
