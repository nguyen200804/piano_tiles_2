package b.a;

import android.content.Context;
import java.util.Arrays;
import java.util.List;

/* compiled from: Defcon.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private int f157a = 0;

    /* renamed from: b, reason: collision with root package name */
    private final long f158b = 60000;

    public am a(Context context, am amVar) {
        if (amVar == null) {
            return null;
        }
        if (this.f157a == 1) {
            amVar.a((List<ab>) null);
            return amVar;
        }
        if (this.f157a == 2) {
            amVar.b(Arrays.asList(a(context)));
            amVar.a((List<ab>) null);
            return amVar;
        }
        if (this.f157a == 3) {
            amVar.b((List<ak>) null);
            amVar.a((List<ab>) null);
            return amVar;
        }
        return amVar;
    }

    public ak a(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        ak akVar = new ak();
        akVar.a(db.e(context));
        akVar.a(currentTimeMillis);
        akVar.b(currentTimeMillis + 60000);
        akVar.c(60000L);
        return akVar;
    }

    public long a() {
        switch (this.f157a) {
            case 1:
                return 14400000L;
            case 2:
                return 28800000L;
            case 3:
                return 86400000L;
            default:
                return 0L;
        }
    }

    public void a(int i) {
        if (i >= 0 && i <= 3) {
            this.f157a = i;
        }
    }

    public boolean b() {
        return this.f157a != 0;
    }
}
