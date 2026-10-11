package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzvv;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzg {
    private final Account aL;
    private final String bX;
    private final Set<Scope> rX;
    private final int rZ;
    private final View sa;
    private final String sb;
    private final Set<Scope> yj;
    private final Map<Api<?>, zza> yk;
    private final zzvv yl;
    private Integer ym;

    public static final class zza {
        public final Set<Scope> dT;
        public final boolean yn;

        public zza(Set<Scope> set, boolean z) {
            zzab.zzy(set);
            this.dT = Collections.unmodifiableSet(set);
            this.yn = z;
        }
    }

    public zzg(Account account, Set<Scope> set, Map<Api<?>, zza> map, int i, View view, String str, String str2, zzvv zzvvVar) {
        this.aL = account;
        this.rX = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.yk = map == null ? Collections.EMPTY_MAP : map;
        this.sa = view;
        this.rZ = i;
        this.bX = str;
        this.sb = str2;
        this.yl = zzvvVar;
        HashSet hashSet = new HashSet(this.rX);
        Iterator<zza> it = this.yk.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().dT);
        }
        this.yj = Collections.unmodifiableSet(hashSet);
    }

    public static zzg zzcd(Context context) {
        return new GoogleApiClient.Builder(context).zzaoh();
    }

    public Account getAccount() {
        return this.aL;
    }

    @Deprecated
    public String getAccountName() {
        if (this.aL != null) {
            return this.aL.name;
        }
        return null;
    }

    public Account zzary() {
        return this.aL != null ? this.aL : new Account("<<default account>>", "com.google");
    }

    public int zzasi() {
        return this.rZ;
    }

    public Set<Scope> zzasj() {
        return this.rX;
    }

    public Set<Scope> zzask() {
        return this.yj;
    }

    public Map<Api<?>, zza> zzasl() {
        return this.yk;
    }

    public String zzasm() {
        return this.bX;
    }

    public String zzasn() {
        return this.sb;
    }

    public View zzaso() {
        return this.sa;
    }

    public zzvv zzasp() {
        return this.yl;
    }

    public Integer zzasq() {
        return this.ym;
    }

    public Set<Scope> zzb(Api<?> api) {
        zza zzaVar = this.yk.get(api);
        if (zzaVar == null || zzaVar.dT.isEmpty()) {
            return this.rX;
        }
        HashSet hashSet = new HashSet(this.rX);
        hashSet.addAll(zzaVar.dT);
        return hashSet;
    }

    public void zzc(Integer num) {
        this.ym = num;
    }
}
