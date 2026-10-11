package com.mopub.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DateAndTime {

    /* renamed from: a, reason: collision with root package name */
    protected static DateAndTime f4228a = new DateAndTime();

    @Deprecated
    public static void setInstance(DateAndTime newInstance) {
        f4228a = newInstance;
    }

    public static TimeZone localTimeZone() {
        return f4228a.internalLocalTimeZone();
    }

    public static Date now() {
        return f4228a.internalNow();
    }

    public static String getTimeZoneOffsetString() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("Z", Locale.US);
        simpleDateFormat.setTimeZone(localTimeZone());
        return simpleDateFormat.format(now());
    }

    public TimeZone internalLocalTimeZone() {
        return TimeZone.getDefault();
    }

    public Date internalNow() {
        return new Date();
    }
}
