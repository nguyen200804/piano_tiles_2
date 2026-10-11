package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class BundleUtil {
    BundleUtil() {
    }

    public static Bundle[] getBundleArrayFromBundle(Bundle bundle, String key) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(key);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(key, bundleArr);
        return bundleArr;
    }
}
