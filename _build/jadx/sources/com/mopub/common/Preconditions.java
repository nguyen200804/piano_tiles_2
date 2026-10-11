package com.mopub.common;

import android.os.Looper;
import com.mopub.common.logging.MoPubLog;
import java.util.IllegalFormatException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    private Preconditions() {
    }

    public static void checkArgument(boolean expression) {
        c(expression, true, "Illegal argument.", "");
    }

    public static void checkArgument(boolean expression, String errorMessage) {
        c(expression, true, errorMessage, "");
    }

    public static void checkArgument(boolean expression, String errorMessageTemplate, Object... errorMessageArgs) {
        c(expression, true, errorMessageTemplate, errorMessageArgs);
    }

    public static void checkState(boolean expression) {
        d(expression, true, "Illegal state.", "");
    }

    public static void checkState(boolean expression, String errorMessage) {
        d(expression, true, errorMessage, "");
    }

    public static void checkState(boolean expression, String errorMessageTemplate, Object... errorMessageArgs) {
        d(expression, true, errorMessageTemplate, errorMessageArgs);
    }

    public static void checkNotNull(Object reference) {
        b(reference, true, "Object can not be null.", "");
    }

    public static void checkNotNull(Object reference, String errorMessage) {
        b(reference, true, errorMessage, "");
    }

    public static void checkNotNull(Object reference, String errorMessageTemplate, Object... errorMessageArgs) {
        b(reference, true, errorMessageTemplate, errorMessageArgs);
    }

    public static void checkUiThread() {
        b(true, "This method must be called from the UI thread.", "");
    }

    public static void checkUiThread(String errorMessage) {
        b(true, errorMessage, "");
    }

    public static void checkUiThread(String errorMessageTemplate, Object... errorMessageArgs) {
        b(true, errorMessageTemplate, errorMessageArgs);
    }

    public static final class NoThrow {

        /* renamed from: a, reason: collision with root package name */
        private static volatile boolean f4173a = false;

        public static void setStrictMode(boolean strictMode) {
            f4173a = strictMode;
        }

        public static boolean checkArgument(boolean expression) {
            return Preconditions.c(expression, f4173a, "Illegal argument", "");
        }

        public static boolean checkArgument(boolean expression, String errorMessage) {
            return Preconditions.c(expression, f4173a, errorMessage, "");
        }

        public static boolean checkArgument(boolean expression, String errorMessageTemplate, Object... errorMessageArgs) {
            return Preconditions.c(expression, f4173a, errorMessageTemplate, errorMessageArgs);
        }

        public static boolean checkState(boolean expression) {
            return Preconditions.d(expression, f4173a, "Illegal state.", "");
        }

        public static boolean checkState(boolean expression, String errorMessage) {
            return Preconditions.d(expression, f4173a, errorMessage, "");
        }

        public static boolean checkState(boolean expression, String errorMessageTemplate, Object... errorMessageArgs) {
            return Preconditions.d(expression, f4173a, errorMessageTemplate, errorMessageArgs);
        }

        public static boolean checkNotNull(Object reference) {
            return Preconditions.b(reference, f4173a, "Object can not be null.", "");
        }

        public static boolean checkNotNull(Object reference, String errorMessage) {
            return Preconditions.b(reference, f4173a, errorMessage, "");
        }

        public static boolean checkNotNull(Object reference, String errorMessageTemplate, Object... errorMessageArgs) {
            return Preconditions.b(reference, f4173a, errorMessageTemplate, errorMessageArgs);
        }

        public static boolean checkUiThread() {
            return Preconditions.b(f4173a, "This method must be called from the UI thread.", "");
        }

        public static boolean checkUiThread(String errorMessage) {
            return Preconditions.b(f4173a, errorMessage, "");
        }

        public static boolean checkUiThread(String errorMessageTemplate, Object... errorMessageArgs) {
            return Preconditions.b(false, errorMessageTemplate, errorMessageArgs);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a2 = a(str, objArr);
        if (z2) {
            throw new IllegalArgumentException(a2);
        }
        MoPubLog.e(a2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String a2 = a(str, objArr);
        if (z2) {
            throw new IllegalStateException(a2);
        }
        MoPubLog.e(a2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String a2 = a(str, objArr);
        if (z) {
            throw new NullPointerException(a2);
        }
        MoPubLog.e(a2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String a2 = a(str, objArr);
        if (z) {
            throw new IllegalStateException(a2);
        }
        MoPubLog.e(a2);
        return false;
    }

    private static String a(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e) {
            MoPubLog.e("MoPub preconditions had a format exception: " + e.getMessage());
            return valueOf;
        }
    }
}
