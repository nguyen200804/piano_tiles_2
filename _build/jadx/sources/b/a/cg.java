package b.a;

import android.content.Context;
import android.telephony.TelephonyManager;

/* compiled from: ImeiTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cg extends a {

    /* renamed from: a, reason: collision with root package name */
    private Context f123a;

    public cg(Context context) {
        super("imei");
        this.f123a = context;
    }

    @Override // b.a.a
    public String f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f123a.getSystemService("phone");
        if (telephonyManager == null) {
        }
        try {
            if (!ao.a(this.f123a, "android.permission.READ_PHONE_STATE")) {
                return null;
            }
            return telephonyManager.getDeviceId();
        } catch (Exception e) {
            return null;
        }
    }
}
