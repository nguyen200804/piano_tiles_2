package org.apache.commons.csv;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class Assertions {
    private Assertions() {
    }

    public static void notNull(Object parameter, String parameterName) {
        if (parameter == null) {
            throw new IllegalArgumentException("Parameter '" + parameterName + "' must not be null!");
        }
    }
}
