package b.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: ViewPageTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, Long> f155a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final ArrayList<c> f156b = new ArrayList<>();

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f155a) {
                this.f155a.put(str, Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    public void b(String str) {
        Long remove;
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f155a) {
                remove = this.f155a.remove(str);
            }
            if (remove == null) {
                ap.d("MobclickAgent", String.format("please call 'onPageStart(%s)' before onPageEnd", str));
                return;
            }
            long currentTimeMillis = System.currentTimeMillis() - remove.longValue();
            synchronized (this.f156b) {
                this.f156b.add(new c(str, currentTimeMillis));
            }
        }
    }

    public void a() {
        long j;
        String str;
        String str2 = null;
        long j2 = 0;
        synchronized (this.f155a) {
            for (Map.Entry<String, Long> entry : this.f155a.entrySet()) {
                if (entry.getValue().longValue() > j2) {
                    long longValue = entry.getValue().longValue();
                    str = entry.getKey();
                    j = longValue;
                } else {
                    j = j2;
                    str = str2;
                }
                str2 = str;
                j2 = j;
            }
        }
        if (str2 != null) {
            b(str2);
        }
    }

    public void a(Context context) {
        SharedPreferences a2 = cz.a(context);
        SharedPreferences.Editor edit = a2.edit();
        if (this.f156b.size() > 0) {
            String string = a2.getString("activities", "");
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(string)) {
                sb.append(string);
                sb.append(";");
            }
            synchronized (this.f156b) {
                Iterator<c> it = this.f156b.iterator();
                while (it.hasNext()) {
                    c next = it.next();
                    sb.append(String.format("[\"%s\",%d]", next.f116a, Long.valueOf(next.f117b)));
                    sb.append(";");
                }
                this.f156b.clear();
            }
            sb.deleteCharAt(sb.length() - 1);
            edit.remove("activities");
            edit.putString("activities", sb.toString());
        }
        edit.commit();
    }

    public static List<af> a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("activities", "");
        if ("".equals(string)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            String[] split = string.split(";");
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(new i(str));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }
}
