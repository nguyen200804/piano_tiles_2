package com.b.a;

import android.content.Context;
import android.content.SharedPreferences;
import b.a.ao;
import b.a.ap;
import b.a.av;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: StoreHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class k {

    /* renamed from: b, reason: collision with root package name */
    private static Context f649b;
    private static String c;
    private a d;

    /* renamed from: a, reason: collision with root package name */
    private static k f648a = null;
    private static long e = 1209600000;
    private static long f = 2097152;

    /* compiled from: StoreHelper.java */
    public interface b {
        void a(File file);

        boolean b(File file);

        void c(File file);
    }

    public k(Context context) {
        this.d = new a(context);
        f649b = context.getApplicationContext();
        c = context.getPackageName();
    }

    public static synchronized k a(Context context) {
        k kVar;
        synchronized (k.class) {
            if (f648a == null) {
                f648a = new k(context);
            }
            kVar = f648a;
        }
        return kVar;
    }

    private static boolean a(File file) {
        return file.exists() && file.length() > f;
    }

    public String[] a() {
        SharedPreferences j = j();
        String string = j.getString("au_p", null);
        String string2 = j.getString("au_u", null);
        if (string == null || string2 == null) {
            return null;
        }
        return new String[]{string, string2};
    }

    public int[] b() {
        SharedPreferences i = i();
        int[] iArr = new int[2];
        if (i.getInt("umeng_net_report_policy", -1) != -1) {
            iArr[0] = i.getInt("umeng_net_report_policy", 1);
            iArr[1] = (int) i.getLong("umeng_net_report_interval", 0L);
        } else {
            iArr[0] = i.getInt("umeng_local_report_policy", 1);
            iArr[1] = (int) i.getLong("umeng_local_report_interval", 0L);
        }
        return iArr;
    }

    public void a(int i) {
        SharedPreferences i2;
        if (i >= 0 && i <= 3 && (i2 = i()) != null) {
            i2.edit().putInt("oc_dc", i).commit();
        }
    }

    public int c() {
        SharedPreferences i = i();
        if (i != null) {
            return i.getInt("oc_dc", 0);
        }
        return 0;
    }

    public void b(int i) {
        SharedPreferences i2;
        if (i > 0 && (i2 = i()) != null) {
            i2.edit().putInt("oc_lt", i).commit();
        }
    }

    public int d() {
        SharedPreferences i = i();
        if (i != null) {
            return i.getInt("oc_lt", 0);
        }
        return 0;
    }

    public void c(int i) {
        SharedPreferences i2 = i();
        if (i2 != null) {
            i2.edit().putInt("oc_ec", i).commit();
        }
    }

    public int d(int i) {
        SharedPreferences i2 = i();
        if (i2 != null) {
            return i2.getInt("oc_ec", i);
        }
        return i;
    }

    public void a(int i, int i2) {
        SharedPreferences.Editor edit = a(f649b).i().edit();
        edit.putInt("umeng_net_report_policy", i);
        edit.putLong("umeng_net_report_interval", i2);
        edit.commit();
    }

    public byte[] e() {
        FileInputStream fileInputStream;
        Throwable th;
        byte[] bArr = null;
        String l = l();
        File file = new File(f649b.getFilesDir(), l);
        if (a(file)) {
            file.delete();
        } else if (file.exists()) {
            try {
                fileInputStream = f649b.openFileInput(l);
                try {
                    try {
                        bArr = av.b(fileInputStream);
                        av.c(fileInputStream);
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        av.c(fileInputStream);
                        return bArr;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    av.c(fileInputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileInputStream = null;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
                av.c(fileInputStream);
                throw th;
            }
        }
        return bArr;
    }

    public void a(byte[] bArr) {
        try {
            av.a(new File(f649b.getFilesDir(), l()), bArr);
        } catch (Exception e2) {
            ap.b("MobclickAgent", e2.getMessage());
        }
    }

    public void f() {
        f649b.deleteFile(k());
        f649b.deleteFile(l());
    }

    public void b(byte[] bArr) {
        this.d.a(bArr);
    }

    public boolean g() {
        return this.d.a();
    }

    public a h() {
        return this.d;
    }

    private SharedPreferences j() {
        return f649b.getSharedPreferences("mobclick_agent_user_" + c, 0);
    }

    public SharedPreferences i() {
        return f649b.getSharedPreferences("mobclick_agent_online_setting_" + c, 0);
    }

    private String k() {
        return "mobclick_agent_header_" + c;
    }

    private String l() {
        return "mobclick_agent_cached_" + c + ao.a(f649b);
    }

    /* compiled from: StoreHelper.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final int f650a;

        /* renamed from: b, reason: collision with root package name */
        private File f651b;
        private FilenameFilter c;

        public a(Context context) {
            this(context, ".um");
        }

        public a(Context context, String str) {
            this.f650a = 10;
            this.c = new FilenameFilter() { // from class: com.b.a.k.a.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str2) {
                    return str2.startsWith("um");
                }
            };
            this.f651b = new File(context.getFilesDir(), str);
            if (!this.f651b.exists() || !this.f651b.isDirectory()) {
                this.f651b.mkdir();
            }
        }

        public boolean a() {
            File[] listFiles = this.f651b.listFiles();
            return listFiles != null && listFiles.length > 0;
        }

        public void a(b bVar) {
            File[] listFiles = this.f651b.listFiles(this.c);
            if (listFiles != null && listFiles.length > 0) {
                bVar.a(this.f651b);
                int length = listFiles.length;
                for (int i = 0; i < length; i++) {
                    try {
                        if (bVar.b(listFiles[i])) {
                            listFiles[i].delete();
                        }
                    } catch (Throwable th) {
                        listFiles[i].delete();
                    }
                }
                bVar.c(this.f651b);
            }
        }

        public void a(byte[] bArr) {
            if (bArr != null && bArr.length != 0) {
                try {
                    av.a(new File(this.f651b, String.format(Locale.US, "um_cache_%d.env", Long.valueOf(System.currentTimeMillis()))), bArr);
                } catch (Exception e) {
                }
                File[] listFiles = this.f651b.listFiles(this.c);
                if (listFiles != null && listFiles.length >= 10) {
                    Arrays.sort(listFiles);
                    int length = listFiles.length - 10;
                    for (int i = 0; i < length; i++) {
                        listFiles[i].delete();
                    }
                }
            }
        }
    }
}
