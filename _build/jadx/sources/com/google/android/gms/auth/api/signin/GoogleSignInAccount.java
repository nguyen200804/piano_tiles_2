package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zza();
    public static zze dA = zzh.zzavm();
    private static Comparator<Scope> dJ = new Comparator<Scope>() { // from class: com.google.android.gms.auth.api.signin.GoogleSignInAccount.1
        @Override // java.util.Comparator
        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
        public int compare(Scope scope, Scope scope2) {
            return scope.zzaok().compareTo(scope2.zzaok());
        }
    };
    private String cY;
    List<Scope> cs;
    private String dB;
    private String dC;
    private Uri dD;
    private String dE;
    private long dF;
    private String dG;
    private String dH;
    private String dI;
    final int versionCode;
    private String zzbgg;

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List<Scope> list, String str7, String str8) {
        this.versionCode = i;
        this.zzbgg = str;
        this.cY = str2;
        this.dB = str3;
        this.dC = str4;
        this.dD = uri;
        this.dE = str5;
        this.dF = j;
        this.dG = str6;
        this.cs = list;
        this.dH = str7;
        this.dI = str8;
    }

    public static GoogleSignInAccount zza(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, @Nullable Uri uri, @Nullable Long l, @NonNull String str7, @NonNull Set<Scope> set) {
        if (l == null) {
            l = Long.valueOf(dA.currentTimeMillis() / 1000);
        }
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), zzab.zzhr(str7), new ArrayList((Collection) zzab.zzy(set)), str5, str6);
    }

    private JSONObject zzafp() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put(FacebookAdapter.KEY_ID, getId());
            }
            if (getIdToken() != null) {
                jSONObject.put("tokenId", getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put("email", getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put("displayName", getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put("givenName", getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put("familyName", getFamilyName());
            }
            if (getPhotoUrl() != null) {
                jSONObject.put("photoUrl", getPhotoUrl().toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put("serverAuthCode", getServerAuthCode());
            }
            jSONObject.put("expirationTime", this.dF);
            jSONObject.put("obfuscatedIdentifier", zzafm());
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.cs, dJ);
            Iterator<Scope> it = this.cs.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().zzaok());
            }
            jSONObject.put("grantedScopes", jSONArray);
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    public static GoogleSignInAccount zzfo(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl", null);
        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        return zza(jSONObject.optString(FacebookAdapter.KEY_ID), jSONObject.optString("tokenId", null), jSONObject.optString("email", null), jSONObject.optString("displayName", null), jSONObject.optString("givenName", null), jSONObject.optString("familyName", null), parse, Long.valueOf(parseLong), jSONObject.getString("obfuscatedIdentifier"), hashSet).zzfp(jSONObject.optString("serverAuthCode", null));
    }

    public boolean equals(Object obj) {
        if (obj instanceof GoogleSignInAccount) {
            return ((GoogleSignInAccount) obj).zzafn().equals(zzafn());
        }
        return false;
    }

    @Nullable
    public String getDisplayName() {
        return this.dC;
    }

    @Nullable
    public String getEmail() {
        return this.dB;
    }

    @Nullable
    public String getFamilyName() {
        return this.dI;
    }

    @Nullable
    public String getGivenName() {
        return this.dH;
    }

    @NonNull
    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.cs);
    }

    @Nullable
    public String getId() {
        return this.zzbgg;
    }

    @Nullable
    public String getIdToken() {
        return this.cY;
    }

    @Nullable
    public Uri getPhotoUrl() {
        return this.dD;
    }

    @Nullable
    public String getServerAuthCode() {
        return this.dE;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public boolean zza() {
        return dA.currentTimeMillis() / 1000 >= this.dF - 300;
    }

    public long zzafl() {
        return this.dF;
    }

    @NonNull
    public String zzafm() {
        return this.dG;
    }

    public String zzafn() {
        return zzafp().toString();
    }

    public String zzafo() {
        JSONObject zzafp = zzafp();
        zzafp.remove("serverAuthCode");
        return zzafp.toString();
    }

    public GoogleSignInAccount zzfp(String str) {
        this.dE = str;
        return this;
    }
}
