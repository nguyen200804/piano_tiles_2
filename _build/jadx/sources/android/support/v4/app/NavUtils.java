package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.v4.content.IntentCompat;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class NavUtils {
    private static final NavUtilsImpl IMPL;
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final String TAG = "NavUtils";

    interface NavUtilsImpl {
        Intent getParentActivityIntent(Activity activity);

        String getParentActivityName(Context context, ActivityInfo activityInfo);

        void navigateUpTo(Activity activity, Intent intent);

        boolean shouldUpRecreateTask(Activity activity, Intent intent);
    }

    static class NavUtilsImplBase implements NavUtilsImpl {
        NavUtilsImplBase() {
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImpl
        public Intent getParentActivityIntent(Activity activity) {
            Intent intent = null;
            String parentActivityName = NavUtils.getParentActivityName(activity);
            if (parentActivityName != null) {
                ComponentName componentName = new ComponentName(activity, parentActivityName);
                try {
                    intent = NavUtils.getParentActivityName(activity, componentName) == null ? IntentCompat.makeMainActivity(componentName) : new Intent().setComponent(componentName);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(NavUtils.TAG, "getParentActivityIntent: bad parentActivityName '" + parentActivityName + "' in manifest");
                }
            }
            return intent;
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImpl
        public boolean shouldUpRecreateTask(Activity activity, Intent targetIntent) {
            String action = activity.getIntent().getAction();
            return (action == null || action.equals("android.intent.action.MAIN")) ? false : true;
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImpl
        public void navigateUpTo(Activity activity, Intent upIntent) {
            upIntent.addFlags(67108864);
            activity.startActivity(upIntent);
            activity.finish();
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImpl
        public String getParentActivityName(Context context, ActivityInfo info) {
            String string;
            if (info.metaData != null && (string = info.metaData.getString(NavUtils.PARENT_ACTIVITY)) != null) {
                if (string.charAt(0) == '.') {
                    return context.getPackageName() + string;
                }
                return string;
            }
            return null;
        }
    }

    static class NavUtilsImplJB extends NavUtilsImplBase {
        NavUtilsImplJB() {
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImplBase, android.support.v4.app.NavUtils.NavUtilsImpl
        public Intent getParentActivityIntent(Activity activity) {
            Intent parentActivityIntent = NavUtilsJB.getParentActivityIntent(activity);
            if (parentActivityIntent == null) {
                return superGetParentActivityIntent(activity);
            }
            return parentActivityIntent;
        }

        Intent superGetParentActivityIntent(Activity activity) {
            return super.getParentActivityIntent(activity);
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImplBase, android.support.v4.app.NavUtils.NavUtilsImpl
        public boolean shouldUpRecreateTask(Activity activity, Intent targetIntent) {
            return NavUtilsJB.shouldUpRecreateTask(activity, targetIntent);
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImplBase, android.support.v4.app.NavUtils.NavUtilsImpl
        public void navigateUpTo(Activity activity, Intent upIntent) {
            NavUtilsJB.navigateUpTo(activity, upIntent);
        }

        @Override // android.support.v4.app.NavUtils.NavUtilsImplBase, android.support.v4.app.NavUtils.NavUtilsImpl
        public String getParentActivityName(Context context, ActivityInfo info) {
            String parentActivityName = NavUtilsJB.getParentActivityName(info);
            if (parentActivityName == null) {
                return super.getParentActivityName(context, info);
            }
            return parentActivityName;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new NavUtilsImplJB();
        } else {
            IMPL = new NavUtilsImplBase();
        }
    }

    public static boolean shouldUpRecreateTask(Activity sourceActivity, Intent targetIntent) {
        return IMPL.shouldUpRecreateTask(sourceActivity, targetIntent);
    }

    public static void navigateUpFromSameTask(Activity sourceActivity) {
        Intent parentActivityIntent = getParentActivityIntent(sourceActivity);
        if (parentActivityIntent == null) {
            throw new IllegalArgumentException("Activity " + sourceActivity.getClass().getSimpleName() + " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)");
        }
        navigateUpTo(sourceActivity, parentActivityIntent);
    }

    public static void navigateUpTo(Activity sourceActivity, Intent upIntent) {
        IMPL.navigateUpTo(sourceActivity, upIntent);
    }

    public static Intent getParentActivityIntent(Activity sourceActivity) {
        return IMPL.getParentActivityIntent(sourceActivity);
    }

    public static Intent getParentActivityIntent(Context context, Class<?> sourceActivityClass) throws PackageManager.NameNotFoundException {
        String parentActivityName = getParentActivityName(context, new ComponentName(context, sourceActivityClass));
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(context, parentActivityName);
        return getParentActivityName(context, componentName) == null ? IntentCompat.makeMainActivity(componentName) : new Intent().setComponent(componentName);
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        String parentActivityName = getParentActivityName(context, componentName);
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), parentActivityName);
        return getParentActivityName(context, componentName2) == null ? IntentCompat.makeMainActivity(componentName2) : new Intent().setComponent(componentName2);
    }

    @Nullable
    public static String getParentActivityName(Activity sourceActivity) {
        try {
            return getParentActivityName(sourceActivity, sourceActivity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Nullable
    public static String getParentActivityName(Context context, ComponentName componentName) throws PackageManager.NameNotFoundException {
        return IMPL.getParentActivityName(context, context.getPackageManager().getActivityInfo(componentName, 128));
    }

    private NavUtils() {
    }
}
