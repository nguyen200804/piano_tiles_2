package com.cmplay.util.b;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.cmplay.ipc.IpcProvider;
import com.cmplay.util.k;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ServicePreferencesHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements k {
    private static String e = "pref_name";
    private static String f = "action";
    private static String g = VastExtensionXmlManager.TYPE;
    private static String h = "key";
    private static String i = "value";

    /* renamed from: a, reason: collision with root package name */
    private Context f1721a;

    /* renamed from: b, reason: collision with root package name */
    private SharedPreferences f1722b;
    private String c;
    private b d;

    public d(Context context, String str) {
        this.d = null;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f1721a = context.getApplicationContext();
        this.c = str;
        this.d = new b(this.c);
        if (com.cmplay.i.c.a()) {
            this.f1722b = this.f1721a.getSharedPreferences(this.c, 0);
        }
    }

    private SharedPreferences f() {
        com.cmplay.i.c.d();
        if (this.f1722b == null) {
            this.f1722b = this.f1721a.getSharedPreferences(this.c, 0);
        }
        return this.f1722b;
    }

    @Override // com.cmplay.util.k
    public long a(String str, long j) {
        if (!com.cmplay.i.c.a()) {
            return this.d.a(str, j);
        }
        SharedPreferences f2 = f();
        return f2 != null ? f2.getLong(str, j) : j;
    }

    @Override // com.cmplay.util.k
    public boolean a(String str, boolean z) {
        if (!com.cmplay.i.c.a()) {
            return this.d.a(str, z);
        }
        SharedPreferences f2 = f();
        return f2 != null ? f2.getBoolean(str, z) : z;
    }

    @Override // com.cmplay.util.k
    public int a(String str, int i2) {
        if (!com.cmplay.i.c.a()) {
            return this.d.a(str, i2);
        }
        SharedPreferences f2 = f();
        return f2 != null ? f2.getInt(str, i2) : i2;
    }

    @Override // com.cmplay.util.k
    public String a(String str, String str2) {
        if (!com.cmplay.i.c.a()) {
            return this.d.a(str, str2);
        }
        SharedPreferences f2 = f();
        return f2 != null ? f2.getString(str, str2) : str2;
    }

    @Override // com.cmplay.util.k
    public float a(String str, float f2) {
        if (!com.cmplay.i.c.a()) {
            return this.d.a(str, f2);
        }
        SharedPreferences f3 = f();
        return f3 != null ? f3.getFloat(str, f2) : f2;
    }

    @Override // com.cmplay.util.k
    public void b(String str, boolean z) {
        if (com.cmplay.i.c.a()) {
            SharedPreferences f2 = f();
            if (f2 != null) {
                SharedPreferences.Editor edit = f2.edit();
                edit.putBoolean(str, z);
                a(edit);
                return;
            }
            return;
        }
        this.d.b(str, z);
    }

    @Override // com.cmplay.util.k
    public void b(String str, long j) {
        if (com.cmplay.i.c.a()) {
            SharedPreferences f2 = f();
            if (f2 != null) {
                SharedPreferences.Editor edit = f2.edit();
                edit.putLong(str, j);
                a(edit);
                return;
            }
            return;
        }
        this.d.b(str, j);
    }

    @Override // com.cmplay.util.k
    public void b(String str, int i2) {
        if (com.cmplay.i.c.a()) {
            SharedPreferences f2 = f();
            if (f2 != null) {
                SharedPreferences.Editor edit = f2.edit();
                edit.putInt(str, i2);
                a(edit);
                return;
            }
            return;
        }
        this.d.b(str, i2);
    }

    @Override // com.cmplay.util.k
    public void b(String str, String str2) {
        if (com.cmplay.i.c.a()) {
            SharedPreferences f2 = f();
            if (f2 != null) {
                SharedPreferences.Editor edit = f2.edit();
                edit.putString(str, str2);
                a(edit);
                return;
            }
            return;
        }
        this.d.b(str, str2);
    }

    @Override // com.cmplay.util.k
    public void b(String str, float f2) {
        if (com.cmplay.i.c.a()) {
            SharedPreferences f3 = f();
            if (f3 != null) {
                SharedPreferences.Editor edit = f3.edit();
                edit.putFloat(str, f2);
                a(edit);
                return;
            }
            return;
        }
        this.d.b(str, f2);
    }

    private void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    /* compiled from: ServicePreferencesHelper.java */
    public static class a extends com.cmplay.ipc.a {

        /* renamed from: a, reason: collision with root package name */
        private Map<String, k> f1723a = new HashMap();

        private k a(Context context, String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            k kVar = this.f1723a.get(str);
            if (kVar == null) {
                d dVar = new d(context, str);
                this.f1723a.put(str, dVar);
                return dVar;
            }
            return kVar;
        }

        @Override // com.cmplay.ipc.b
        public String a(ContentValues contentValues) {
            com.cmplay.i.c.d();
            k a2 = a(a(), contentValues.getAsString(d.e));
            if (a2 != null) {
                int intValue = contentValues.getAsInteger(d.f).intValue();
                int intValue2 = contentValues.getAsInteger(d.g).intValue();
                if (intValue == 1) {
                    if (intValue2 == 1) {
                        return "" + a2.a(contentValues.getAsString(d.h), contentValues.getAsBoolean(d.i).booleanValue());
                    }
                    if (intValue2 == 2) {
                        return "" + a2.a(contentValues.getAsString(d.h), contentValues.getAsInteger(d.i).intValue());
                    }
                    if (intValue2 == 3) {
                        return "" + a2.a(contentValues.getAsString(d.h), contentValues.getAsLong(d.i).longValue());
                    }
                    if (intValue2 == 4) {
                        return "" + a2.a(contentValues.getAsString(d.h), contentValues.getAsString(d.i));
                    }
                    if (intValue2 == 5) {
                        return "" + a2.a(contentValues.getAsString(d.h), contentValues.getAsFloat(d.i).floatValue());
                    }
                } else if (intValue == 2) {
                    if (intValue2 == 1) {
                        a2.b(contentValues.getAsString(d.h), contentValues.getAsBoolean(d.i).booleanValue());
                    } else if (intValue2 == 2) {
                        a2.b(contentValues.getAsString(d.h), contentValues.getAsInteger(d.i).intValue());
                    } else if (intValue2 == 3) {
                        a2.b(contentValues.getAsString(d.h), contentValues.getAsLong(d.i).longValue());
                    } else if (intValue2 == 4) {
                        a2.b(contentValues.getAsString(d.h), contentValues.getAsString(d.i));
                    } else if (intValue2 == 5) {
                        a2.b(contentValues.getAsString(d.h), contentValues.getAsFloat(d.i).floatValue());
                    }
                }
                return null;
            }
            return null;
        }
    }

    /* compiled from: ServicePreferencesHelper.java */
    private static class b implements com.cmplay.ipc.c, k {

        /* renamed from: a, reason: collision with root package name */
        private String f1724a;

        public b(String str) {
            this.f1724a = null;
            if (str == null) {
                throw new IllegalArgumentException();
            }
            this.f1724a = str;
        }

        @Override // com.cmplay.ipc.c
        public int a() {
            return 4;
        }

        @Override // com.cmplay.util.k
        public long a(String str, long j) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 1);
            contentValues.put(d.g, (Integer) 3);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Long.valueOf(j));
            try {
                return Long.valueOf(IpcProvider.a(contentValues, this)).longValue();
            } catch (Exception e) {
                return j;
            }
        }

        @Override // com.cmplay.util.k
        public boolean a(String str, boolean z) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 1);
            contentValues.put(d.g, (Integer) 1);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Boolean.valueOf(z));
            try {
                return Boolean.valueOf(IpcProvider.a(contentValues, this)).booleanValue();
            } catch (Exception e) {
                return z;
            }
        }

        @Override // com.cmplay.util.k
        public int a(String str, int i) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 1);
            contentValues.put(d.g, (Integer) 2);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Integer.valueOf(i));
            try {
                return Integer.valueOf(IpcProvider.a(contentValues, this)).intValue();
            } catch (Exception e) {
                return i;
            }
        }

        @Override // com.cmplay.util.k
        public String a(String str, String str2) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 1);
            contentValues.put(d.g, (Integer) 4);
            contentValues.put(d.h, str);
            contentValues.put(d.i, str2);
            try {
                return IpcProvider.a(contentValues, this);
            } catch (Exception e) {
                return str2;
            }
        }

        @Override // com.cmplay.util.k
        public float a(String str, float f) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 1);
            contentValues.put(d.g, (Integer) 5);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Float.valueOf(f));
            try {
                return Float.valueOf(IpcProvider.a(contentValues, this)).floatValue();
            } catch (Exception e) {
                return f;
            }
        }

        @Override // com.cmplay.util.k
        public void b(String str, boolean z) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 2);
            contentValues.put(d.g, (Integer) 1);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Boolean.valueOf(z));
            IpcProvider.a(contentValues, this);
        }

        @Override // com.cmplay.util.k
        public void b(String str, long j) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 2);
            contentValues.put(d.g, (Integer) 3);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Long.valueOf(j));
            IpcProvider.a(contentValues, this);
        }

        @Override // com.cmplay.util.k
        public void b(String str, int i) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 2);
            contentValues.put(d.g, (Integer) 2);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Integer.valueOf(i));
            IpcProvider.a(contentValues, this);
        }

        @Override // com.cmplay.util.k
        public void b(String str, String str2) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 2);
            contentValues.put(d.g, (Integer) 4);
            contentValues.put(d.h, str);
            contentValues.put(d.i, str2);
            IpcProvider.a(contentValues, this);
        }

        @Override // com.cmplay.util.k
        public void b(String str, float f) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(d.e, this.f1724a);
            contentValues.put(d.f, (Integer) 2);
            contentValues.put(d.g, (Integer) 5);
            contentValues.put(d.h, str);
            contentValues.put(d.i, Float.valueOf(f));
            IpcProvider.a(contentValues, this);
        }
    }
}
