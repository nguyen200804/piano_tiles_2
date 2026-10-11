package com.google.android.gms.internal;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaeo {
    static HashMap<String, String> aLK;
    private static Object aLL;
    public static final Uri CONTENT_URI = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri aLH = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern aLI = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern aLJ = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    static HashSet<String> aLM = new HashSet<>();

    public static long getLong(ContentResolver contentResolver, String str, long j) {
        String string = getString(contentResolver, str);
        if (string == null) {
            return j;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return j;
        }
    }

    public static String getString(ContentResolver contentResolver, String str) {
        return zza(contentResolver, str, null);
    }

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzaeo.class) {
            zza(contentResolver);
            Object obj = aLL;
            if (aLK.containsKey(str)) {
                String str3 = aLK.get(str);
                if (str3 != null) {
                    str2 = str3;
                }
            } else {
                Iterator<String> it = aLM.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        Cursor query = contentResolver.query(CONTENT_URI, null, null, new String[]{str}, null);
                        if (query != null) {
                            try {
                                if (query.moveToFirst()) {
                                    String string = query.getString(1);
                                    synchronized (zzaeo.class) {
                                        if (obj == aLL) {
                                            aLK.put(str, string);
                                        }
                                    }
                                    if (string != null) {
                                        str2 = string;
                                    }
                                    if (query != null) {
                                        query.close();
                                    }
                                }
                            } catch (Throwable th) {
                                if (query != null) {
                                    query.close();
                                }
                                throw th;
                            }
                        }
                        aLK.put(str, null);
                        if (query != null) {
                            query.close();
                        }
                    } else if (str.startsWith(it.next())) {
                        break;
                    }
                }
            }
        }
        return str2;
    }

    public static Map<String, String> zza(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(aLH, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    treeMap.put(query.getString(0), query.getString(1));
                } finally {
                    query.close();
                }
            }
        }
        return treeMap;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.zzaeo$1] */
    private static void zza(final ContentResolver contentResolver) {
        if (aLK == null) {
            aLK = new HashMap<>();
            aLL = new Object();
            new Thread("Gservices") { // from class: com.google.android.gms.internal.zzaeo.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Looper.prepare();
                    contentResolver.registerContentObserver(zzaeo.CONTENT_URI, true, new ContentObserver(new Handler(Looper.myLooper())) { // from class: com.google.android.gms.internal.zzaeo.1.1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z) {
                            synchronized (zzaeo.class) {
                                zzaeo.aLK.clear();
                                Object unused = zzaeo.aLL = new Object();
                                if (!zzaeo.aLM.isEmpty()) {
                                    zzaeo.zzb(contentResolver, (String[]) zzaeo.aLM.toArray(new String[zzaeo.aLM.size()]));
                                }
                            }
                        }
                    });
                    Looper.loop();
                }
            }.start();
        }
    }

    public static void zzb(ContentResolver contentResolver, String... strArr) {
        Map<String, String> zza = zza(contentResolver, strArr);
        synchronized (zzaeo.class) {
            zza(contentResolver);
            aLM.addAll(Arrays.asList(strArr));
            for (Map.Entry<String, String> entry : zza.entrySet()) {
                aLK.put(entry.getKey(), entry.getValue());
            }
        }
    }
}
