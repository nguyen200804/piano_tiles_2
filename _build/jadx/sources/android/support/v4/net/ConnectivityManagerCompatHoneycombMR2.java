package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ConnectivityManagerCompatHoneycombMR2 {
    ConnectivityManagerCompatHoneycombMR2() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager cm) {
        NetworkInfo activeNetworkInfo = cm.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return true;
        }
        switch (activeNetworkInfo.getType()) {
        }
        return true;
    }
}
