package com.mopub.dg.d.b;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c extends a {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap f4288a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private String f4289b;
    private Context c;

    private c(Context context) {
        this.c = context;
    }

    public static c a(Context context, String str) {
        c cVar = (c) f4288a.get(str);
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c(context);
        cVar2.f4289b = str;
        f4288a.put(str, cVar2);
        return cVar2;
    }

    @Override // com.mopub.dg.d.b.a
    public final long a(String str, long j) {
        try {
            String a2 = a(str);
            return a2 == null ? j : Long.parseLong(a2);
        } catch (Exception e) {
            return j;
        }
    }

    @Override // com.mopub.dg.d.b.a
    public final String a(String str) {
        return this.c.getSharedPreferences(this.f4289b, 0).getString(str, null);
    }

    @Override // com.mopub.dg.d.b.a
    public final Set a() {
        HashSet hashSet = new HashSet();
        try {
            Map<String, ?> all = this.c.getSharedPreferences(this.f4289b, 0).getAll();
            return all != null ? all.keySet() : hashSet;
        } catch (Exception e) {
            return hashSet;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mopub.dg.d.b.a
    public final boolean a(String str, String str2) {
        if (str2 == 0) {
            return true;
        }
        SharedPreferences.Editor edit = this.c.getSharedPreferences(this.f4289b, 0).edit();
        if (str2 instanceof Integer) {
            edit.putInt(str, ((Integer) str2).intValue());
        } else if (str2 instanceof Boolean) {
            edit.putBoolean(str, ((Boolean) str2).booleanValue());
        } else if (str2 instanceof Float) {
            edit.putFloat(str, ((Float) str2).floatValue());
        } else if (str2 instanceof Long) {
            edit.putLong(str, ((Long) str2).longValue());
        } else {
            edit.putString(str, new StringBuilder().append((Object) str2).toString());
        }
        edit.commit();
        return true;
    }

    @Override // com.mopub.dg.d.b.a
    public final String b(String str, String str2) {
        try {
            return this.c.getSharedPreferences(this.f4289b, 0).getString(str, str2);
        } catch (Exception e) {
            return str2;
        }
    }

    @Override // com.mopub.dg.d.b.a
    public final boolean b(String str) {
        try {
            String a2 = a(str);
            if (a2 == null) {
                return false;
            }
            return Boolean.parseBoolean(a2);
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.mopub.dg.d.b.a
    public final boolean c(String str) {
        SharedPreferences.Editor edit = this.c.getSharedPreferences(this.f4289b, 0).edit();
        edit.remove(str);
        edit.commit();
        return true;
    }
}
