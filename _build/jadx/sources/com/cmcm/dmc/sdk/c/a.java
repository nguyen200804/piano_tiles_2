package com.cmcm.dmc.sdk.c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cmcm.dmc.sdk.c.a.a;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import org.json.JSONArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a<T extends com.cmcm.dmc.sdk.c.a.a> {

    /* renamed from: a, reason: collision with root package name */
    private final String f703a;

    /* renamed from: b, reason: collision with root package name */
    private final File f704b;

    public a(Context context, String str) {
        this.f703a = str;
        this.f704b = new File(context.getFilesDir() + File.separator + "media.txt");
    }

    private String a(Properties properties) {
        try {
            FileReader fileReader = new FileReader(this.f704b);
            properties.load(fileReader);
            fileReader.close();
            return properties.getProperty(this.f703a);
        } catch (Exception e) {
            return "";
        }
    }

    private void a(Properties properties, JSONArray jSONArray, List<T> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().a());
        }
        properties.setProperty(this.f703a, jSONArray.toString());
        try {
            Log.i("forTest", "saveId:" + jSONArray.toString());
            FileWriter fileWriter = new FileWriter(this.f704b);
            properties.store(fileWriter, (String) null);
            fileWriter.close();
        } catch (Exception e) {
        }
    }

    private void a(JSONArray jSONArray, List<T> list) {
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    long optLong = jSONArray.optLong(i);
                    long a2 = list.get(i2).a();
                    if (a2 == optLong && a2 != 0) {
                        list.remove(i2);
                        break;
                    }
                    i2++;
                }
            }
        }
    }

    private void b(List<T> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return;
            }
            T t = list.get(i2);
            int i3 = i2 + 1;
            while (true) {
                int i4 = i3;
                if (i4 < list.size()) {
                    if (list.get(i4).a() == t.a()) {
                        list.remove(i4);
                        i4--;
                    }
                    i3 = i4 + 1;
                }
            }
            i = i2 + 1;
        }
    }

    public void a(List<T> list) {
        JSONArray jSONArray;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            if (!this.f704b.exists()) {
                if (this.f704b.createNewFile()) {
                    b(list);
                    a(new Properties(), new JSONArray(), list);
                    return;
                }
                return;
            }
            Properties properties = new Properties();
            String a2 = a(properties);
            Log.i("forTest", "findIds:" + a2);
            if (TextUtils.isEmpty(a2)) {
                jSONArray = new JSONArray();
                b(list);
            } else {
                jSONArray = new JSONArray(a2);
                a(jSONArray, list);
            }
            if (list.isEmpty()) {
                return;
            }
            a(properties, jSONArray, list);
        } catch (Exception e) {
        }
    }
}
