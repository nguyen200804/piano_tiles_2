package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.support.v4.os.EnvironmentCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.mopub.common.Constants;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: Utility.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class aa {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f3157a = {"supports_implicit_sdk_logging", "gdpv4_nux_content", "gdpv4_nux_enabled", "android_dialog_configs", "android_sdk_error_categories"};

    /* renamed from: b, reason: collision with root package name */
    private static Map<String, b> f3158b = new ConcurrentHashMap();
    private static AtomicBoolean c = new AtomicBoolean(false);
    private static int d = 0;
    private static long e = -1;
    private static long f = -1;
    private static long g = -1;
    private static String h = "";
    private static String i = "";
    private static String j = "NoCarrier";

    /* compiled from: Utility.java */
    public interface c {
        void a(com.facebook.i iVar);

        void a(JSONObject jSONObject);
    }

    /* compiled from: Utility.java */
    public interface d<T, K> {
        K a(T t);
    }

    /* compiled from: Utility.java */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private boolean f3165a;

        /* renamed from: b, reason: collision with root package name */
        private String f3166b;
        private boolean c;
        private Map<String, Map<String, a>> d;
        private i e;

        private b(boolean z, String str, boolean z2, Map<String, Map<String, a>> map, i iVar) {
            this.f3165a = z;
            this.f3166b = str;
            this.c = z2;
            this.d = map;
            this.e = iVar;
        }

        public boolean a() {
            return this.f3165a;
        }

        public String b() {
            return this.f3166b;
        }

        public boolean c() {
            return this.c;
        }

        public Map<String, Map<String, a>> d() {
            return this.d;
        }

        public i e() {
            return this.e;
        }
    }

    /* compiled from: Utility.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f3163a;

        /* renamed from: b, reason: collision with root package name */
        private String f3164b;
        private Uri c;
        private int[] d;

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(JSONObject jSONObject) {
            String optString = jSONObject.optString(MediationMetaData.KEY_NAME);
            if (aa.a(optString)) {
                return null;
            }
            String[] split = optString.split("\\|");
            if (split.length != 2) {
                return null;
            }
            String str = split[0];
            String str2 = split[1];
            if (aa.a(str) || aa.a(str2)) {
                return null;
            }
            String optString2 = jSONObject.optString("url");
            return new a(str, str2, aa.a(optString2) ? null : Uri.parse(optString2), a(jSONObject.optJSONArray("versions")));
        }

        private static int[] a(JSONArray jSONArray) {
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                int optInt = jSONArray.optInt(i, -1);
                if (optInt == -1) {
                    String optString = jSONArray.optString(i);
                    if (!aa.a(optString)) {
                        try {
                            optInt = Integer.parseInt(optString);
                        } catch (NumberFormatException e) {
                            aa.a("FacebookSDK", (Exception) e);
                            optInt = -1;
                        }
                    }
                }
                iArr[i] = optInt;
            }
            return iArr;
        }

        private a(String str, String str2, Uri uri, int[] iArr) {
            this.f3163a = str;
            this.f3164b = str2;
            this.c = uri;
            this.d = iArr;
        }

        public String a() {
            return this.f3163a;
        }

        public String b() {
            return this.f3164b;
        }

        public Uri c() {
            return this.c;
        }

        public int[] d() {
            return this.d;
        }
    }

    public static <T> boolean a(Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }

    public static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    public static <T> Collection<T> a(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    public static String b(String str) {
        return b("MD5", str);
    }

    public static String a(byte[] bArr) {
        return a("SHA-1", bArr);
    }

    private static String b(String str, String str2) {
        return a(str, str2.getBytes());
    }

    private static String a(String str, byte[] bArr) {
        try {
            return a(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException e2) {
            return null;
        }
    }

    private static String a(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b2 : digest) {
            sb.append(Integer.toHexString((b2 >> 4) & 15));
            sb.append(Integer.toHexString((b2 >> 0) & 15));
        }
        return sb.toString();
    }

    public static Uri a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(Constants.HTTPS);
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    public static Bundle c(String str) {
        Bundle bundle = new Bundle();
        if (!a(str)) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                try {
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
                    } else if (split.length == 1) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e2) {
                    a("FacebookSDK", (Exception) e2);
                }
            }
        }
        return bundle;
    }

    public static void a(Bundle bundle, String str, String str2) {
        if (!a(str2)) {
            bundle.putString(str, str2);
        }
    }

    public static void a(Bundle bundle, String str, List<String> list) {
        if (list != null) {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(",");
            }
            String str2 = "";
            if (sb.length() > 0) {
                str2 = sb.substring(0, sb.length() - 1);
            }
            bundle.putString(str, str2);
        }
    }

    public static void a(Bundle bundle, String str, Uri uri) {
        if (uri != null) {
            a(bundle, str, uri.toString());
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
            }
        }
    }

    public static void a(URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    public static String a(Context context) {
        ab.a(context, "context");
        com.facebook.l.a(context);
        return com.facebook.l.i();
    }

    public static Object a(JSONObject jSONObject, String str, String str2) throws JSONException {
        Object opt = jSONObject.opt(str);
        Object nextValue = (opt == null || !(opt instanceof String)) ? opt : new JSONTokener((String) opt).nextValue();
        if (nextValue == null || (nextValue instanceof JSONObject) || (nextValue instanceof JSONArray)) {
            return nextValue;
        }
        if (str2 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(str2, nextValue);
            return jSONObject2;
        }
        throw new com.facebook.i("Got an unexpected non-JSON object.");
    }

    public static String a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream2);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            String sb2 = sb.toString();
                            a((Closeable) bufferedInputStream2);
                            a(inputStreamReader);
                            return sb2;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    a((Closeable) bufferedInputStream);
                    a(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = null;
                bufferedInputStream = bufferedInputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }

    public static int a(InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        int i2 = 0;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i2 += read;
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                return i2;
            } catch (Throwable th) {
                th = th;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
    }

    private static void b(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie != null) {
            String[] split = cookie.split(";");
            for (String str2 : split) {
                String[] split2 = str2.split("=");
                if (split2.length > 0) {
                    cookieManager.setCookie(str, split2[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                }
            }
            cookieManager.removeExpiredCookie();
        }
    }

    public static void b(Context context) {
        b(context, "facebook.com");
        b(context, ".facebook.com");
        b(context, "https://facebook.com");
        b(context, "https://.facebook.com");
    }

    public static void a(String str, Exception exc) {
        if (com.facebook.l.b() && str != null && exc != null) {
            Log.d(str, exc.getClass().getSimpleName() + ": " + exc.getMessage());
        }
    }

    public static void a(String str, String str2) {
        if (com.facebook.l.b() && str != null && str2 != null) {
            Log.d(str, str2);
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (com.facebook.l.b() && !a(str)) {
            Log.d(str, str2, th);
        }
    }

    public static <T> boolean a(T t, T t2) {
        if (t == null) {
            return t2 == null;
        }
        return t.equals(t2);
    }

    public static void a(final Context context, final String str) {
        boolean compareAndSet = c.compareAndSet(false, true);
        if (!a(str) && !f3158b.containsKey(str) && compareAndSet) {
            final String format = String.format("com.facebook.internal.APP_SETTINGS.%s", str);
            com.facebook.l.d().execute(new Runnable() { // from class: com.facebook.internal.aa.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObject;
                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.internal.preferences.APP_SETTINGS", 0);
                    String string = sharedPreferences.getString(format, null);
                    if (!aa.a(string)) {
                        try {
                            jSONObject = new JSONObject(string);
                        } catch (JSONException e2) {
                            aa.a("FacebookSDK", (Exception) e2);
                            jSONObject = null;
                        }
                        if (jSONObject != null) {
                            aa.b(str, jSONObject);
                        }
                    }
                    JSONObject g2 = aa.g(str);
                    if (g2 != null) {
                        aa.b(str, g2);
                        sharedPreferences.edit().putString(format, g2.toString()).apply();
                    }
                    aa.c.set(false);
                }
            });
        }
    }

    public static b d(String str) {
        if (str != null) {
            return f3158b.get(str);
        }
        return null;
    }

    public static b a(String str, boolean z) {
        if (!z && f3158b.containsKey(str)) {
            return f3158b.get(str);
        }
        JSONObject g2 = g(str);
        if (g2 == null) {
            return null;
        }
        return b(str, g2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static b b(String str, JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("android_sdk_error_categories");
        b bVar = new b(jSONObject.optBoolean("supports_implicit_sdk_logging", false), jSONObject.optString("gdpv4_nux_content", ""), jSONObject.optBoolean("gdpv4_nux_enabled", false), b(jSONObject.optJSONObject("android_dialog_configs")), optJSONArray == null ? i.a() : i.a(optJSONArray));
        f3158b.put(str, bVar);
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject g(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", TextUtils.join(",", f3157a));
        GraphRequest a2 = GraphRequest.a((AccessToken) null, str, (GraphRequest.b) null);
        a2.a(true);
        a2.a(bundle);
        return a2.i().b();
    }

    public static a a(String str, String str2, String str3) {
        Map<String, a> map;
        if (a(str2) || a(str3)) {
            return null;
        }
        b bVar = f3158b.get(str);
        if (bVar == null || (map = bVar.d().get(str2)) == null) {
            return null;
        }
        return map.get(str3);
    }

    private static Map<String, Map<String, a>> b(JSONObject jSONObject) {
        JSONArray optJSONArray;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= optJSONArray.length()) {
                    break;
                }
                a b2 = a.b(optJSONArray.optJSONObject(i3));
                if (b2 != null) {
                    String a2 = b2.a();
                    Map map = (Map) hashMap.get(a2);
                    if (map == null) {
                        map = new HashMap();
                        hashMap.put(a2, map);
                    }
                    map.put(b2.b(), b2);
                }
                i2 = i3 + 1;
            }
        }
        return hashMap;
    }

    public static void a(File file) {
        File[] listFiles;
        if (file.exists()) {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    a(file2);
                }
            }
            file.delete();
        }
    }

    public static <T> List<T> b(T... tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static List<String> a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            arrayList.add(jSONArray.getString(i2));
        }
        return arrayList;
    }

    public static Set<String> b(JSONArray jSONArray) throws JSONException {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            hashSet.add(jSONArray.getString(i2));
        }
        return hashSet;
    }

    public static void a(JSONObject jSONObject, com.facebook.internal.c cVar, String str, boolean z) throws JSONException {
        if (cVar != null && cVar.a() != null) {
            jSONObject.put("attribution", cVar.a());
        }
        if (cVar != null && cVar.b() != null) {
            jSONObject.put("advertiser_id", cVar.b());
            jSONObject.put("advertiser_tracking_enabled", !cVar.d());
        }
        if (cVar != null && cVar.c() != null) {
            jSONObject.put("installer_package", cVar.c());
        }
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", z ? false : true);
    }

    public static void a(JSONObject jSONObject, Context context) throws JSONException {
        Locale locale;
        int i2;
        int i3;
        int i4;
        int i5;
        double d2;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        d(context);
        String packageName = context.getPackageName();
        int i6 = -1;
        String str = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            i6 = packageInfo.versionCode;
            str = packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e2) {
        }
        jSONArray.put(packageName);
        jSONArray.put(i6);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception e3) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + "_" + locale.getCountry());
        jSONArray.put(h);
        jSONArray.put(j);
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                d2 = 0.0d;
                i4 = 0;
                i5 = 0;
            } else {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getMetrics(displayMetrics);
                int i7 = displayMetrics.widthPixels;
                try {
                    int i8 = displayMetrics.heightPixels;
                    try {
                        d2 = displayMetrics.density;
                        i4 = i8;
                        i5 = i7;
                    } catch (Exception e4) {
                        i2 = i8;
                        i3 = i7;
                        i4 = i2;
                        i5 = i3;
                        d2 = 0.0d;
                        jSONArray.put(i5);
                        jSONArray.put(i4);
                        jSONArray.put(String.format("%.2f", Double.valueOf(d2)));
                        jSONArray.put(b());
                        jSONArray.put(f);
                        jSONArray.put(g);
                        jSONArray.put(i);
                        jSONObject.put("extinfo", jSONArray.toString());
                    }
                } catch (Exception e5) {
                    i2 = 0;
                    i3 = i7;
                }
            }
        } catch (Exception e6) {
            i2 = 0;
            i3 = 0;
        }
        jSONArray.put(i5);
        jSONArray.put(i4);
        jSONArray.put(String.format("%.2f", Double.valueOf(d2)));
        jSONArray.put(b());
        jSONArray.put(f);
        jSONArray.put(g);
        jSONArray.put(i);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            return null;
        }
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        try {
            return a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    public static Object a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            return null;
        } catch (InvocationTargetException e3) {
            return null;
        }
    }

    public static String c(Context context) {
        if (context == null) {
            return "null";
        }
        if (context == context.getApplicationContext()) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return context.getClass().getSimpleName();
    }

    public static <T, K> List<K> a(List<T> list, d<T, K> dVar) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            K a2 = dVar.a(it.next());
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        if (arrayList.size() != 0) {
            return arrayList;
        }
        return null;
    }

    public static String a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    public static boolean b(Uri uri) {
        return uri != null && (Constants.HTTP.equalsIgnoreCase(uri.getScheme()) || Constants.HTTPS.equalsIgnoreCase(uri.getScheme()));
    }

    public static boolean c(Uri uri) {
        return uri != null && AppLovinEventTypes.USER_VIEWED_CONTENT.equalsIgnoreCase(uri.getScheme());
    }

    public static boolean d(Uri uri) {
        return uri != null && "file".equalsIgnoreCase(uri.getScheme());
    }

    public static long e(Uri uri) {
        Cursor cursor;
        long j2;
        try {
            Cursor query = com.facebook.l.f().getContentResolver().query(uri, null, null, null, null);
            if (query != null) {
                try {
                    int columnIndex = query.getColumnIndex("_size");
                    query.moveToFirst();
                    j2 = query.getLong(columnIndex);
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                j2 = 0;
                if (query != null) {
                    query.close();
                }
            }
            return j2;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static Date a(Bundle bundle, String str, Date date) {
        long parseLong;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            parseLong = ((Long) obj).longValue();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            try {
                parseLong = Long.parseLong((String) obj);
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date((parseLong * 1000) + date.getTime());
    }

    public static void a(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    public static Map<String, String> a(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < readInt; i2++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    public static boolean a(AccessToken accessToken) {
        if (accessToken != null) {
            return accessToken.equals(AccessToken.a());
        }
        return false;
    }

    public static void a(final String str, final c cVar) {
        JSONObject a2 = x.a(str);
        if (a2 != null) {
            cVar.a(a2);
            return;
        }
        GraphRequest.b bVar = new GraphRequest.b() { // from class: com.facebook.internal.aa.2
            @Override // com.facebook.GraphRequest.b
            public void a(com.facebook.q qVar) {
                if (qVar.a() != null) {
                    c.this.a(qVar.a().e());
                } else {
                    x.a(str, qVar.b());
                    c.this.a(qVar.b());
                }
            }
        };
        GraphRequest h2 = h(str);
        h2.a(bVar);
        h2.j();
    }

    public static JSONObject e(String str) {
        JSONObject a2 = x.a(str);
        if (a2 == null) {
            com.facebook.q i2 = h(str).i();
            if (i2.a() != null) {
                return null;
            }
            return i2.b();
        }
        return a2;
    }

    private static GraphRequest h(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new GraphRequest(null, "me", bundle, com.facebook.s.GET, null);
    }

    private static int b() {
        if (d > 0) {
            return d;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.aa.3
                @Override // java.io.FilenameFilter
                public boolean accept(File dir, String fileName) {
                    return Pattern.matches("cpu[0-9]+", fileName);
                }
            });
            if (listFiles != null) {
                d = listFiles.length;
            }
        } catch (Exception e2) {
        }
        if (d <= 0) {
            d = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return d;
    }

    private static void d(Context context) {
        if (e == -1 || System.currentTimeMillis() - e >= 1800000) {
            e = System.currentTimeMillis();
            c();
            e(context);
            f();
            e();
        }
    }

    private static void c() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            h = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            i = timeZone.getID();
        } catch (Exception e2) {
        }
    }

    private static void e(Context context) {
        if (j.equals("NoCarrier")) {
            try {
                j = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e2) {
            }
        }
    }

    private static boolean d() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private static void e() {
        try {
            if (d()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                g = statFs.getBlockSize() * statFs.getAvailableBlocks();
            }
            g = a(g);
        } catch (Exception e2) {
        }
    }

    private static void f() {
        try {
            if (d()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f = statFs.getBlockSize() * statFs.getBlockCount();
            }
            f = a(f);
        } catch (Exception e2) {
        }
    }

    private static long a(double d2) {
        return Math.round(d2 / 1.073741824E9d);
    }

    /* compiled from: Utility.java */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        List<String> f3167a;

        /* renamed from: b, reason: collision with root package name */
        List<String> f3168b;

        public e(List<String> list, List<String> list2) {
            this.f3167a = list;
            this.f3168b = list2;
        }

        public List<String> a() {
            return this.f3167a;
        }

        public List<String> b() {
            return this.f3168b;
        }
    }

    public static e a(JSONObject jSONObject) throws JSONException {
        String optString;
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i2);
            String optString2 = optJSONObject.optString("permission");
            if (optString2 != null && !optString2.equals("installed") && (optString = optJSONObject.optString("status")) != null) {
                if (optString.equals("granted")) {
                    arrayList.add(optString2);
                } else if (optString.equals("declined")) {
                    arrayList2.add(optString2);
                }
            }
        }
        return new e(arrayList, arrayList2);
    }
}
