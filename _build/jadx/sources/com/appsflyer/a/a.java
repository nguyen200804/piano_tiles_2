package com.appsflyer.a;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f585a = new a();

    public static a a() {
        return f585a;
    }

    private a() {
    }

    private File c(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }

    public void a(Context context) {
        try {
            if (!c(context).exists()) {
                c(context).mkdir();
            }
        } catch (Exception e) {
            Log.i("AppsFlyer_3.0", "Could not create cache directory");
        }
    }

    public void a(b bVar, Context context) {
        try {
            File c = c(context);
            if (!c.exists()) {
                c.mkdir();
            } else if (c.listFiles().length > 20) {
                Log.i("AppsFlyer_3.0", "reached cache limit, not caching request");
            } else {
                Log.i("AppsFlyer_3.0", "caching request...");
                File file = new File(c(context), Long.toString(System.currentTimeMillis()));
                file.createNewFile();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file.getPath(), true));
                outputStreamWriter.write("version=");
                outputStreamWriter.write(bVar.a());
                outputStreamWriter.write(10);
                outputStreamWriter.write("url=");
                outputStreamWriter.write(bVar.c());
                outputStreamWriter.write(10);
                outputStreamWriter.write("data=");
                outputStreamWriter.write(bVar.b());
                outputStreamWriter.write(10);
                outputStreamWriter.flush();
                outputStreamWriter.close();
            }
        } catch (Exception e) {
            Log.i("AppsFlyer_3.0", "Could not cache request");
        }
    }

    public List<b> b(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            File c = c(context);
            if (!c.exists()) {
                c.mkdir();
            } else {
                File[] listFiles = c.listFiles();
                for (File file : listFiles) {
                    Log.i("AppsFlyer_3.0", "Found cached request" + file.getName());
                    arrayList.add(a(file));
                }
            }
        } catch (Exception e) {
            Log.i("AppsFlyer_3.0", "Could not cache request");
        }
        return arrayList;
    }

    private b a(File file) {
        try {
            FileReader fileReader = new FileReader(file);
            char[] cArr = new char[(int) file.length()];
            fileReader.read(cArr);
            b bVar = new b(cArr);
            bVar.a(file.getName());
            fileReader.close();
            return bVar;
        } catch (Exception e) {
            return null;
        }
    }

    public void a(String str, Context context) {
        File file = new File(c(context), str);
        Log.i("AppsFlyer_3.0", "Deleting " + str + " from cache");
        if (file.exists()) {
            try {
                file.delete();
            } catch (Exception e) {
                Log.i("AppsFlyer_3.0", "Could not delete " + str + " from cache", e);
            }
        }
    }
}
