package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.widget.ShareActionProvider;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ShareCompatICS {
    private static final String HISTORY_FILENAME_PREFIX = ".sharecompat_";

    ShareCompatICS() {
    }

    public static void configureMenuItem(MenuItem item, Activity callingActivity, Intent intent) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = item.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(callingActivity);
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(HISTORY_FILENAME_PREFIX + callingActivity.getClass().getName());
        shareActionProvider.setShareIntent(intent);
        item.setActionProvider(shareActionProvider);
    }
}
