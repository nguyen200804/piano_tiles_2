package com.google.android.gms.gcm;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GcmPubSub {
    private static GcmPubSub Ze;
    private static final Pattern Zg = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    private InstanceID Zf;

    private GcmPubSub(Context context) {
        this.Zf = InstanceID.getInstance(context);
    }

    public static synchronized GcmPubSub getInstance(Context context) {
        GcmPubSub gcmPubSub;
        synchronized (GcmPubSub.class) {
            if (Ze == null) {
                Ze = new GcmPubSub(context);
            }
            gcmPubSub = Ze;
        }
        return gcmPubSub;
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void subscribe(String str, String str2, Bundle bundle) throws IOException {
        if (str == null || str.isEmpty()) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid appInstanceToken: ".concat(valueOf) : new String("Invalid appInstanceToken: "));
        }
        if (str2 == null || !Zg.matcher(str2).matches()) {
            String valueOf2 = String.valueOf(str2);
            throw new IllegalArgumentException(valueOf2.length() != 0 ? "Invalid topic name: ".concat(valueOf2) : new String("Invalid topic name: "));
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("gcm.topic", str2);
        this.Zf.getToken(str, str2, bundle);
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void unsubscribe(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", str2);
        this.Zf.zzb(str, str2, bundle);
    }
}
