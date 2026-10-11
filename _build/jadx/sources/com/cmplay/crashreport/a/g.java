package com.cmplay.crashreport.a;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {
    public static f a() {
        return a(Environment.getDataDirectory());
    }

    public static f a(File file) {
        f fVar = null;
        if (file != null) {
            try {
                StatFs statFs = new StatFs(file.getPath());
                long a2 = b.a(statFs);
                long b2 = b.b(statFs);
                long c = b.c(statFs);
                fVar = new f();
                fVar.f1291a = b2 * c;
                fVar.f1292b = a2 * c;
                if (fVar.f1291a < fVar.f1292b) {
                    fVar.f1292b = fVar.f1291a;
                }
            } catch (Exception e) {
            }
        }
        return fVar;
    }
}
