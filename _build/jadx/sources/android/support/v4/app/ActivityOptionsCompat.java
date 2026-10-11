package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.util.Pair;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ActivityOptionsCompat {
    public static ActivityOptionsCompat makeCustomAnimation(Context context, int enterResId, int exitResId) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeCustomAnimation(context, enterResId, exitResId)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeScaleUpAnimation(View source, int startX, int startY, int startWidth, int startHeight) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeScaleUpAnimation(source, startX, startY, startWidth, startHeight)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(View source, Bitmap thumbnail, int startX, int startY) {
        return Build.VERSION.SDK_INT >= 16 ? new ActivityOptionsImplJB(ActivityOptionsCompatJB.makeThumbnailScaleUpAnimation(source, thumbnail, startX, startY)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, View sharedElement, String sharedElementName) {
        return Build.VERSION.SDK_INT >= 21 ? new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, sharedElement, sharedElementName)) : new ActivityOptionsCompat();
    }

    public static ActivityOptionsCompat makeSceneTransitionAnimation(Activity activity, Pair<View, String>... sharedElements) {
        View[] viewArr;
        String[] strArr = null;
        if (Build.VERSION.SDK_INT < 21) {
            return new ActivityOptionsCompat();
        }
        if (sharedElements != null) {
            View[] viewArr2 = new View[sharedElements.length];
            String[] strArr2 = new String[sharedElements.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= sharedElements.length) {
                    break;
                }
                viewArr2[i2] = sharedElements[i2].first;
                strArr2[i2] = sharedElements[i2].second;
                i = i2 + 1;
            }
            strArr = strArr2;
            viewArr = viewArr2;
        } else {
            viewArr = null;
        }
        return new ActivityOptionsImpl21(ActivityOptionsCompat21.makeSceneTransitionAnimation(activity, viewArr, strArr));
    }

    private static class ActivityOptionsImplJB extends ActivityOptionsCompat {
        private final ActivityOptionsCompatJB mImpl;

        ActivityOptionsImplJB(ActivityOptionsCompatJB impl) {
            this.mImpl = impl;
        }

        @Override // android.support.v4.app.ActivityOptionsCompat
        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        @Override // android.support.v4.app.ActivityOptionsCompat
        public void update(ActivityOptionsCompat otherOptions) {
            if (otherOptions instanceof ActivityOptionsImplJB) {
                this.mImpl.update(((ActivityOptionsImplJB) otherOptions).mImpl);
            }
        }
    }

    private static class ActivityOptionsImpl21 extends ActivityOptionsCompat {
        private final ActivityOptionsCompat21 mImpl;

        ActivityOptionsImpl21(ActivityOptionsCompat21 impl) {
            this.mImpl = impl;
        }

        @Override // android.support.v4.app.ActivityOptionsCompat
        public Bundle toBundle() {
            return this.mImpl.toBundle();
        }

        @Override // android.support.v4.app.ActivityOptionsCompat
        public void update(ActivityOptionsCompat otherOptions) {
            if (otherOptions instanceof ActivityOptionsImpl21) {
                this.mImpl.update(((ActivityOptionsImpl21) otherOptions).mImpl);
            }
        }
    }

    protected ActivityOptionsCompat() {
    }

    public Bundle toBundle() {
        return null;
    }

    public void update(ActivityOptionsCompat otherOptions) {
    }
}
