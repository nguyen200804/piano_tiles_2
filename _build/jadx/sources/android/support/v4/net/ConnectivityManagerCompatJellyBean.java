package android.support.v4.net;

import android.net.ConnectivityManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ConnectivityManagerCompatJellyBean {
    ConnectivityManagerCompatJellyBean() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager cm) {
        return cm.isActiveNetworkMetered();
    }
}
