package b.a;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: UTDIdTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cl extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final Pattern f128a = Pattern.compile("UTDID\">([^<]+)");

    /* renamed from: b, reason: collision with root package name */
    private Context f129b;

    public cl(Context context) {
        super("utdid");
        this.f129b = context;
    }

    @Override // b.a.a
    public String f() {
        return g();
    }

    private String g() {
        File h = h();
        if (h == null || !h.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(h);
            try {
                return b(av.a(fileInputStream));
            } finally {
                av.c(fileInputStream);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private String b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f128a.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private File h() {
        if (!ao.a(this.f129b, "android.permission.WRITE_EXTERNAL_STORAGE") || !Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        try {
            return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
        } catch (Exception e) {
            return null;
        }
    }
}
