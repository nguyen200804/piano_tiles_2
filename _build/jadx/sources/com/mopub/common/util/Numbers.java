package com.mopub.common.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Numbers {
    private Numbers() {
    }

    public static Double parseDouble(Object value) throws ClassCastException {
        if (value instanceof Number) {
            return Double.valueOf(((Number) value).doubleValue());
        }
        if (value instanceof String) {
            try {
                return Double.valueOf((String) value);
            } catch (NumberFormatException e) {
                throw new ClassCastException("Unable to parse " + value + " as double.");
            }
        }
        throw new ClassCastException("Unable to parse " + value + " as double.");
    }

    public static long convertMillisecondsToSecondsRoundedUp(long millis) {
        return Math.round(Math.ceil(millis / 1000.0f));
    }
}
