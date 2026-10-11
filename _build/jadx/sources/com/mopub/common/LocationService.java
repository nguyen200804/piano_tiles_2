package com.mopub.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import java.math.BigDecimal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LocationService {
    private static volatile LocationService c;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Location f4154a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    long f4155b;

    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED;

        @Deprecated
        public MoPub.LocationAwareness getNewLocationAwareness() {
            if (this == TRUNCATED) {
                return MoPub.LocationAwareness.TRUNCATED;
            }
            if (this == DISABLED) {
                return MoPub.LocationAwareness.DISABLED;
            }
            return MoPub.LocationAwareness.NORMAL;
        }

        @Deprecated
        public static LocationAwareness fromMoPubLocationAwareness(MoPub.LocationAwareness awareness) {
            if (awareness == MoPub.LocationAwareness.DISABLED) {
                return DISABLED;
            }
            if (awareness == MoPub.LocationAwareness.TRUNCATED) {
                return TRUNCATED;
            }
            return NORMAL;
        }
    }

    private LocationService() {
    }

    @NonNull
    @VisibleForTesting
    static LocationService a() {
        LocationService locationService = c;
        if (locationService == null) {
            synchronized (LocationService.class) {
                locationService = c;
                if (locationService == null) {
                    locationService = new LocationService();
                    c = locationService;
                }
            }
        }
        return locationService;
    }

    public enum ValidLocationProvider {
        NETWORK("network"),
        GPS("gps");


        /* renamed from: a, reason: collision with root package name */
        @NonNull
        final String f4159a;

        ValidLocationProvider(String name) {
            this.f4159a = name;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4159a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(@NonNull Context context) {
            switch (this) {
                case NETWORK:
                    if (DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_FINE_LOCATION") || DeviceUtils.isPermissionGranted(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                    }
                    break;
            }
            return false;
        }
    }

    @Nullable
    public static Location getLastKnownLocation(@NonNull Context context, int locationPrecision, @NonNull MoPub.LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(locationAwareness);
        if (locationAwareness == MoPub.LocationAwareness.DISABLED) {
            return null;
        }
        LocationService a2 = a();
        if (b()) {
            return a2.f4154a;
        }
        Location a3 = a(a(context, ValidLocationProvider.GPS), a(context, ValidLocationProvider.NETWORK));
        if (locationAwareness == MoPub.LocationAwareness.TRUNCATED) {
            a(a3, locationPrecision);
        }
        a2.f4154a = a3;
        a2.f4155b = SystemClock.elapsedRealtime();
        return a3;
    }

    @Nullable
    @VisibleForTesting
    static Location a(@NonNull Context context, @NonNull ValidLocationProvider validLocationProvider) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(validLocationProvider);
        if (!validLocationProvider.a(context)) {
            return null;
        }
        try {
            return ((LocationManager) context.getSystemService("location")).getLastKnownLocation(validLocationProvider.toString());
        } catch (IllegalArgumentException e) {
            MoPubLog.d("Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
            return null;
        } catch (NullPointerException e2) {
            MoPubLog.d("Failed to retrieve location: device has no " + validLocationProvider.toString() + " location provider.");
            return null;
        } catch (SecurityException e3) {
            MoPubLog.d("Failed to retrieve location from " + validLocationProvider.toString() + " provider: access appears to be disabled.");
            return null;
        }
    }

    @Nullable
    @VisibleForTesting
    static Location a(@Nullable Location location, @Nullable Location location2) {
        return location == null ? location2 : (location2 == null || location.getTime() > location2.getTime()) ? location : location2;
    }

    @VisibleForTesting
    static void a(@Nullable Location location, int i) {
        if (location != null && i >= 0) {
            location.setLatitude(BigDecimal.valueOf(location.getLatitude()).setScale(i, 5).doubleValue());
            location.setLongitude(BigDecimal.valueOf(location.getLongitude()).setScale(i, 5).doubleValue());
        }
    }

    private static boolean b() {
        LocationService a2 = a();
        return a2.f4154a != null && SystemClock.elapsedRealtime() - a2.f4155b <= MoPub.getMinimumLocationRefreshTimeMillis();
    }

    @VisibleForTesting
    @Deprecated
    public static void clearLastKnownLocation() {
        a().f4154a = null;
    }
}
