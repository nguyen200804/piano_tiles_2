package android.support.v4.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ActivityOptionsCompat21 {
    private final ActivityOptions mActivityOptions;

    public static ActivityOptionsCompat21 makeSceneTransitionAnimation(Activity activity, View sharedElement, String sharedElementName) {
        return new ActivityOptionsCompat21(ActivityOptions.makeSceneTransitionAnimation(activity, sharedElement, sharedElementName));
    }

    public static ActivityOptionsCompat21 makeSceneTransitionAnimation(Activity activity, View[] sharedElements, String[] sharedElementNames) {
        Pair[] pairArr = null;
        if (sharedElements != null) {
            Pair[] pairArr2 = new Pair[sharedElements.length];
            for (int i = 0; i < pairArr2.length; i++) {
                pairArr2[i] = Pair.create(sharedElements[i], sharedElementNames[i]);
            }
            pairArr = pairArr2;
        }
        return new ActivityOptionsCompat21(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
    }

    private ActivityOptionsCompat21(ActivityOptions activityOptions) {
        this.mActivityOptions = activityOptions;
    }

    public Bundle toBundle() {
        return this.mActivityOptions.toBundle();
    }

    public void update(ActivityOptionsCompat21 otherOptions) {
        this.mActivityOptions.update(otherOptions.mActivityOptions);
    }
}
