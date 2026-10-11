package com.mopub.common;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPub {
    public static final String SDK_VERSION = "4.15.0";

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private static volatile LocationAwareness f4160a = LocationAwareness.NORMAL;

    /* renamed from: b, reason: collision with root package name */
    private static volatile int f4161b = 6;
    private static volatile long c = 60000;

    @NonNull
    private static volatile BrowserAgent d = BrowserAgent.IN_APP;
    private static volatile boolean e = false;
    private static boolean f = false;

    @Nullable
    private static Method g;

    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED
    }

    public enum BrowserAgent {
        IN_APP,
        NATIVE;

        @NonNull
        public static BrowserAgent fromHeader(@Nullable Integer browserAgent) {
            if (browserAgent == null) {
                return IN_APP;
            }
            return browserAgent.intValue() == 1 ? NATIVE : IN_APP;
        }
    }

    @NonNull
    public static LocationAwareness getLocationAwareness() {
        Preconditions.checkNotNull(f4160a);
        return f4160a;
    }

    public static void setLocationAwareness(@NonNull LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        f4160a = locationAwareness;
    }

    public static int getLocationPrecision() {
        return f4161b;
    }

    public static void setLocationPrecision(int precision) {
        f4161b = Math.min(Math.max(0, precision), 6);
    }

    public static void setMinimumLocationRefreshTimeMillis(long minimumLocationRefreshTimeMillis) {
        c = minimumLocationRefreshTimeMillis;
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return c;
    }

    public static void setBrowserAgent(@NonNull BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        d = browserAgent;
        e = true;
    }

    public static void setBrowserAgentFromAdServer(@NonNull BrowserAgent adServerBrowserAgent) {
        Preconditions.checkNotNull(adServerBrowserAgent);
        if (e) {
            MoPubLog.w("Browser agent already overridden by client with value " + d);
        } else {
            d = adServerBrowserAgent;
        }
    }

    @NonNull
    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(d);
        return d;
    }

    @VisibleForTesting
    @Deprecated
    public static void resetBrowserAgent() {
        d = BrowserAgent.IN_APP;
        e = false;
    }

    public static void onCreate(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        a(activity);
    }

    public static void onStart(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        a(activity);
    }

    public static void onPause(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onResume(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        a(activity);
    }

    public static void onRestart(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        a(activity);
    }

    public static void onStop(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    public static void onDestroy(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onBackPressed(@NonNull Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    @Deprecated
    public static void initializeRewardedVideo(@NonNull Activity activity, MediationSettings... mediationSettings) {
        try {
            new Reflection.MethodBuilder(null, "initializeRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(Activity.class, activity).addParam(MediationSettings[].class, mediationSettings).execute();
        } catch (ClassNotFoundException e2) {
            MoPubLog.w("initializeRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e3) {
            MoPubLog.w("initializeRewardedVideo was called without the rewarded video module");
        } catch (Exception e4) {
            MoPubLog.e("Error while initializing rewarded video", e4);
        }
    }

    @VisibleForTesting
    static void a(@NonNull Activity activity) {
        if (!f) {
            f = true;
            try {
                g = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException e2) {
            } catch (NoSuchMethodException e3) {
            }
        }
        if (g != null) {
            try {
                g.invoke(null, activity);
            } catch (IllegalAccessException e4) {
                MoPubLog.e("Error while attempting to access the update activity method - this should not have happened", e4);
            } catch (InvocationTargetException e5) {
                MoPubLog.e("Error while attempting to access the update activity method - this should not have happened", e5);
            }
        }
    }

    @Deprecated
    public static void setRewardedVideoListener(@Nullable Object listener) {
        try {
            new Reflection.MethodBuilder(null, "setRewardedVideoListener").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(Class.forName("com.mopub.mobileads.MoPubRewardedVideoListener"), listener).execute();
        } catch (ClassNotFoundException e2) {
            MoPubLog.w("setRewardedVideoListener was called without the rewarded video module");
        } catch (NoSuchMethodException e3) {
            MoPubLog.w("setRewardedVideoListener was called without the rewarded video module");
        } catch (Exception e4) {
            MoPubLog.e("Error while setting rewarded video listener", e4);
        }
    }

    @Deprecated
    public static void loadRewardedVideo(@NonNull String adUnitId, @Nullable MediationSettings... mediationSettings) {
        loadRewardedVideo(adUnitId, null, mediationSettings);
    }

    @Deprecated
    public static void loadRewardedVideo(@NonNull String adUnitId, @Nullable Object requestParameters, @Nullable MediationSettings... mediationSettings) {
        try {
            new Reflection.MethodBuilder(null, "loadRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(String.class, adUnitId).addParam(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager$RequestParameters"), requestParameters).addParam(MediationSettings[].class, mediationSettings).execute();
        } catch (ClassNotFoundException e2) {
            MoPubLog.w("loadRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e3) {
            MoPubLog.w("loadRewardedVideo was called without the rewarded video module");
        } catch (Exception e4) {
            MoPubLog.e("Error while loading rewarded video", e4);
        }
    }

    @Deprecated
    public static boolean hasRewardedVideo(@NonNull String adUnitId) {
        try {
            return ((Boolean) new Reflection.MethodBuilder(null, "hasRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(String.class, adUnitId).execute()).booleanValue();
        } catch (ClassNotFoundException e2) {
            MoPubLog.w("hasRewardedVideo was called without the rewarded video module");
            return false;
        } catch (NoSuchMethodException e3) {
            MoPubLog.w("hasRewardedVideo was called without the rewarded video module");
            return false;
        } catch (Exception e4) {
            MoPubLog.e("Error while checking rewarded video", e4);
            return false;
        }
    }

    @Deprecated
    public static void showRewardedVideo(@NonNull String adUnitId) {
        try {
            new Reflection.MethodBuilder(null, "showRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).addParam(String.class, adUnitId).execute();
        } catch (ClassNotFoundException e2) {
            MoPubLog.w("showRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e3) {
            MoPubLog.w("showRewardedVideo was called without the rewarded video module");
        } catch (Exception e4) {
            MoPubLog.e("Error while showing rewarded video", e4);
        }
    }
}
