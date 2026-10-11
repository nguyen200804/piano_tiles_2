package com.cmplay.d;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.base.util.webview.util.WebUtils;
import com.cmplay.util.aa;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;

/* compiled from: LanguageManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f1321a = null;

    /* renamed from: b, reason: collision with root package name */
    private Locale f1322b;
    private Map<String, String> c = new HashMap();
    private boolean d = false;

    private b() {
        this.f1322b = null;
        String b2 = aa.b("key_language_selected", "");
        String b3 = aa.b("key_country_selected", "");
        if (TextUtils.isEmpty(b2) && TextUtils.isEmpty(b3)) {
            this.f1322b = Locale.getDefault();
        } else {
            this.f1322b = new Locale(b2, b3);
        }
    }

    public static synchronized b a() {
        b bVar;
        synchronized (b.class) {
            if (f1321a == null) {
                f1321a = new b();
            }
            bVar = f1321a;
        }
        return bVar;
    }

    public void a(Context context, String str, String str2) {
        Locale locale;
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            locale = Locale.getDefault();
        } else {
            locale = new Locale(str, str2);
        }
        synchronized (this) {
            if (!this.d || !locale.equals(this.f1322b)) {
                a(context, locale);
            }
        }
    }

    public String a(String str) {
        String str2;
        synchronized (this) {
            b();
            str2 = this.c.get(str);
        }
        return str2;
    }

    private void a(final Context context, Locale locale) {
        synchronized (this) {
            this.d = false;
            this.f1322b = locale;
        }
        new Thread(new Runnable() { // from class: com.cmplay.d.b.1
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                synchronized (b.this) {
                    b.this.c.clear();
                    b.this.a(context);
                    b.this.d = true;
                    b.this.notifyAll();
                }
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            AssetManager assets = context.getAssets();
            if (assets != null) {
                InputStream open = assets.open("res/DB/language.csv");
                try {
                    CSVParser cSVParser = new CSVParser(new InputStreamReader(open), CSVFormat.DEFAULT);
                    try {
                        a(cSVParser);
                    } finally {
                        cSVParser.close();
                    }
                } finally {
                    open.close();
                }
            }
        } catch (IOException e) {
            Log.d("mys", e.toString());
        } catch (RuntimeException e2) {
            Log.d("mys", e2.toString());
        }
    }

    private void a(CSVParser cSVParser) throws IOException, RuntimeException {
        int i;
        int i2;
        Iterator<CSVRecord> it = cSVParser.iterator();
        int i3 = -1;
        int i4 = -1;
        while (it.hasNext()) {
            CSVRecord next = it.next();
            if (next.getRecordNumber() == 1) {
                i2 = a(next, "TID");
                if (i2 < 0 || (i = a(next, a(this.f1322b.getLanguage(), this.f1322b.getCountry()))) < 0) {
                    return;
                }
            } else {
                this.c.put(next.get(i4), next.get(i3));
                i = i3;
                i2 = i4;
            }
            i4 = i2;
            i3 = i;
        }
    }

    private int a(CSVRecord cSVRecord, String str) {
        int size = cSVRecord.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(cSVRecord.get(i), str)) {
                return i;
            }
        }
        return -1;
    }

    private void b() {
        while (!this.d) {
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
    }

    private String a(String str, String str2) {
        if ("en".equalsIgnoreCase(str)) {
            return "EN";
        }
        if ("zh".equalsIgnoreCase(str)) {
            if ("tw".equalsIgnoreCase(str2) || "hk".equalsIgnoreCase(str2) || WebUtils.MO.equalsIgnoreCase(str2)) {
                return "TW";
            }
            return "CN";
        }
        if ("ar".equalsIgnoreCase(str)) {
            return "AR";
        }
        if ("de".equalsIgnoreCase(str)) {
            return "DE";
        }
        if ("fr".equalsIgnoreCase(str)) {
            return "FR";
        }
        if ("pt".equalsIgnoreCase(str)) {
            return "PO";
        }
        if ("es".equalsIgnoreCase(str)) {
            return "ES";
        }
        if ("ko".equalsIgnoreCase(str)) {
            return "KR";
        }
        if ("ja".equalsIgnoreCase(str)) {
            return "JP";
        }
        if ("ru".equalsIgnoreCase(str)) {
            return "RU";
        }
        if ("it".equalsIgnoreCase(str)) {
            return "IT";
        }
        if ("tr".equalsIgnoreCase(str)) {
            return "TR";
        }
        if ("in".equalsIgnoreCase(str)) {
            return "IN";
        }
        return "EN";
    }
}
