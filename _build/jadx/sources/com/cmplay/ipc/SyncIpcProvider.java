package com.cmplay.ipc;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.e;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SyncIpcProvider {
    private static Context sContext = null;

    private SyncIpcProvider() {
    }

    public static void setDmcSdkEnabled(boolean enabled) {
        if (com.cmplay.i.c.a()) {
            com.cmcm.dmc.sdk.c.a().a(enabled);
        } else {
            b.b().a("setDmcSdkEnabled", new Class[]{Boolean.TYPE}, new Object[]{Boolean.valueOf(enabled)}, (Class<?>) null);
        }
    }

    public static void setLanguage(String languageCode, String countryCode) {
        if (com.cmplay.i.c.a()) {
            e.a(sContext, languageCode, countryCode);
            aa.a("key_language_selected", languageCode);
            aa.a("key_country_selected", countryCode);
            com.cmplay.d.b.a().a(sContext, languageCode, countryCode);
            return;
        }
        b.b().a("setLanguage", new Class[]{String.class, String.class}, new Object[]{languageCode, countryCode}, (Class<?>) null);
    }

    public static void notifyLevelingDataChanged() {
        if (com.cmplay.i.c.a()) {
            GameApp.g().a(new Runnable() { // from class: com.cmplay.ipc.SyncIpcProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    NativeUtil.onLevelingDataChanged();
                }
            });
        } else {
            b.b().a("notifyLevelingDataChanged", (Class<?>[]) null, (Object[]) null, (Class<?>) null);
        }
    }

    public static class a extends com.cmplay.ipc.a {
        @Override // com.cmplay.ipc.b
        public String a(ContentValues contentValues) {
            Context unused = SyncIpcProvider.sContext = a().getApplicationContext();
            String asString = contentValues.getAsString("method_name");
            if (TextUtils.isEmpty(asString)) {
                return null;
            }
            try {
                Method method = SyncIpcProvider.class.getMethod(asString, b(contentValues));
                method.setAccessible(true);
                Object invoke = method.invoke(null, c(contentValues));
                if (invoke != null) {
                    return invoke.toString();
                }
                return null;
            } catch (IllegalAccessException e) {
                e.printStackTrace();
                return null;
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
                return null;
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
                return null;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }

        private Class<?>[] b(ContentValues contentValues) {
            Integer asInteger = contentValues.getAsInteger("arg_count");
            if (asInteger == null || asInteger.intValue() < 1) {
                return null;
            }
            Class<?>[] clsArr = new Class[asInteger.intValue()];
            for (int i = 0; i < asInteger.intValue(); i++) {
                String asString = contentValues.getAsString("arg_type" + i);
                if (!TextUtils.isEmpty(asString)) {
                    try {
                        Class<?> a2 = a(asString);
                        if (a2 == null) {
                            a2 = Class.forName(asString);
                        }
                        clsArr[i] = a2;
                    } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            }
            return clsArr;
        }

        private Class<?> a(String str) {
            if (TextUtils.equals(str, Boolean.TYPE.getName())) {
                return Boolean.TYPE;
            }
            if (TextUtils.equals(str, Integer.TYPE.getName())) {
                return Integer.TYPE;
            }
            if (TextUtils.equals(str, Long.TYPE.getName())) {
                return Long.TYPE;
            }
            return null;
        }

        private Object[] c(ContentValues contentValues) {
            Integer asInteger = contentValues.getAsInteger("arg_count");
            if (asInteger == null || asInteger.intValue() < 1) {
                return null;
            }
            Object[] objArr = new Object[asInteger.intValue()];
            for (int i = 0; i < asInteger.intValue(); i++) {
                objArr[i] = contentValues.get(com.cmplay.base.util.ipc.a.PARAMS_TAG + i);
            }
            return objArr;
        }
    }

    private static class b implements c {

        /* renamed from: a, reason: collision with root package name */
        private static b f1550a = null;

        private b() {
        }

        public static synchronized b b() {
            b bVar;
            synchronized (b.class) {
                if (f1550a == null) {
                    f1550a = new b();
                }
                bVar = f1550a;
            }
            return bVar;
        }

        public Object a(String str, Class<?>[] clsArr, Object[] objArr, Class<?> cls) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("attempt to invoke illegal method");
            }
            int length = clsArr != null ? clsArr.length : 0;
            int length2 = objArr != null ? objArr.length : 0;
            if (length != length2) {
                throw new IllegalArgumentException("illegal arguments");
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("method_name", str);
            contentValues.put("arg_count", Integer.valueOf(length2));
            for (int i = 0; i < length2; i++) {
                a(contentValues, "arg_type" + i, (Class<?>) String.class, clsArr[i].getName());
                a(contentValues, com.cmplay.base.util.ipc.a.PARAMS_TAG + i, clsArr[i], objArr[i]);
            }
            return a(cls, IpcProvider.a(contentValues, this));
        }

        private static void a(ContentValues contentValues, String str, Class<?> cls, Object obj) {
            String name = cls.getName();
            if (TextUtils.equals(name, Boolean.TYPE.getName())) {
                contentValues.put(str, (Boolean) obj);
            }
            if (TextUtils.equals(name, Integer.TYPE.getName())) {
                contentValues.put(str, (Integer) obj);
            }
            if (TextUtils.equals(name, Long.TYPE.getName())) {
                contentValues.put(str, (Long) obj);
            }
            if (TextUtils.equals(name, String.class.getName())) {
                contentValues.put(str, (String) obj);
            }
        }

        private static Object a(Class<?> cls, String str) {
            if (TextUtils.isEmpty(str) || cls == null) {
                return null;
            }
            String name = cls.getName();
            if (TextUtils.equals(name, Boolean.TYPE.getName())) {
                return Boolean.valueOf(str);
            }
            if (TextUtils.equals(name, Integer.TYPE.getName())) {
                return Integer.valueOf(str);
            }
            if (TextUtils.equals(name, Long.TYPE.getName())) {
                return Long.valueOf(str);
            }
            if (TextUtils.equals(name, String.class.getName())) {
                return str;
            }
            return null;
        }

        @Override // com.cmplay.ipc.c
        public int a() {
            return 3;
        }
    }
}
