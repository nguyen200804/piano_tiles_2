package com.mopub.common.logging;

import android.support.annotation.NonNull;
import android.util.Log;
import com.mopub.common.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubLog {
    public static final String LOGGER_NAMESPACE = "com.mopub";

    /* renamed from: a, reason: collision with root package name */
    private static final Logger f4224a = Logger.getLogger(LOGGER_NAMESPACE);

    /* renamed from: b, reason: collision with root package name */
    private static final a f4225b = new a();

    static {
        f4224a.setUseParentHandlers(false);
        f4224a.setLevel(Level.ALL);
        f4225b.setLevel(Level.FINE);
        LogManager.getLogManager().addLogger(f4224a);
        a(f4224a, f4225b);
    }

    private MoPubLog() {
    }

    public static void c(String message) {
        c(message, null);
    }

    public static void v(String message) {
        v(message, null);
    }

    public static void d(String message) {
        d(message, null);
    }

    public static void i(String message) {
        i(message, null);
    }

    public static void w(String message) {
        w(message, null);
    }

    public static void e(String message) {
        e(message, null);
    }

    public static void c(String message, Throwable throwable) {
        f4224a.log(Level.FINEST, message, throwable);
    }

    public static void v(String message, Throwable throwable) {
        f4224a.log(Level.FINE, message, throwable);
    }

    public static void d(String message, Throwable throwable) {
        f4224a.log(Level.CONFIG, message, throwable);
    }

    public static void i(String message, Throwable throwable) {
        f4224a.log(Level.INFO, message, throwable);
    }

    public static void w(String message, Throwable throwable) {
        f4224a.log(Level.WARNING, message, throwable);
    }

    public static void e(String message, Throwable throwable) {
        f4224a.log(Level.SEVERE, message, throwable);
    }

    @VisibleForTesting
    public static void setSdkHandlerLevel(@NonNull Level level) {
        f4225b.setLevel(level);
    }

    private static void a(@NonNull Logger logger, @NonNull Handler handler) {
        for (Handler handler2 : logger.getHandlers()) {
            if (handler2.equals(handler)) {
                return;
            }
        }
        logger.addHandler(handler);
    }

    private static final class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private static final Map<Level, Integer> f4226a = new HashMap(7);

        private a() {
        }

        static {
            f4226a.put(Level.FINEST, 2);
            f4226a.put(Level.FINER, 2);
            f4226a.put(Level.FINE, 2);
            f4226a.put(Level.CONFIG, 3);
            f4226a.put(Level.INFO, 4);
            f4226a.put(Level.WARNING, 5);
            f4226a.put(Level.SEVERE, 6);
        }

        @Override // java.util.logging.Handler
        public void publish(LogRecord logRecord) {
            int i;
            if (isLoggable(logRecord)) {
                if (f4226a.containsKey(logRecord.getLevel())) {
                    i = f4226a.get(logRecord.getLevel()).intValue();
                } else {
                    i = 2;
                }
                String str = logRecord.getMessage() + IOUtils.LINE_SEPARATOR_UNIX;
                Throwable thrown = logRecord.getThrown();
                if (thrown != null) {
                    str = str + Log.getStackTraceString(thrown);
                }
                Log.println(i, "MoPub", str);
            }
        }

        @Override // java.util.logging.Handler
        public void close() {
        }

        @Override // java.util.logging.Handler
        public void flush() {
        }
    }
}
