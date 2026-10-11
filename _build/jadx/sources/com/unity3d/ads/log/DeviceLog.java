package com.unity3d.ads.log;

import android.util.Log;
import java.io.File;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DeviceLog {
    private static boolean FORCE_DEBUG_LOG = false;
    public static final int LOGLEVEL_DEBUG = 8;
    private static final int LOGLEVEL_ERROR = 1;
    public static final int LOGLEVEL_INFO = 4;
    private static final int LOGLEVEL_WARNING = 2;
    private static boolean LOG_ERROR = true;
    private static boolean LOG_WARNING = true;
    private static boolean LOG_INFO = true;
    private static boolean LOG_DEBUG = true;
    private static final HashMap<UnityAdsLogLevel, DeviceLogLevel> _deviceLogLevel = new HashMap<>();

    public enum UnityAdsLogLevel {
        INFO,
        DEBUG,
        WARNING,
        ERROR
    }

    static {
        FORCE_DEBUG_LOG = false;
        if (_deviceLogLevel.size() == 0) {
            _deviceLogLevel.put(UnityAdsLogLevel.INFO, new DeviceLogLevel("i"));
            _deviceLogLevel.put(UnityAdsLogLevel.DEBUG, new DeviceLogLevel("d"));
            _deviceLogLevel.put(UnityAdsLogLevel.WARNING, new DeviceLogLevel("w"));
            _deviceLogLevel.put(UnityAdsLogLevel.ERROR, new DeviceLogLevel("e"));
        }
        if (new File("/data/local/tmp/UnityAdsForceDebugMode").exists()) {
            FORCE_DEBUG_LOG = true;
        }
    }

    public static void setLogLevel(int newLevel) {
        if (newLevel >= 8) {
            LOG_ERROR = true;
            LOG_WARNING = true;
            LOG_INFO = true;
            LOG_DEBUG = true;
            return;
        }
        if (newLevel >= 4) {
            LOG_ERROR = true;
            LOG_WARNING = true;
            LOG_INFO = true;
            LOG_DEBUG = false;
            return;
        }
        if (newLevel >= 2) {
            LOG_ERROR = true;
            LOG_WARNING = true;
            LOG_INFO = false;
            LOG_DEBUG = false;
            return;
        }
        if (newLevel >= 1) {
            LOG_ERROR = true;
            LOG_WARNING = false;
            LOG_INFO = false;
            LOG_DEBUG = false;
            return;
        }
        LOG_ERROR = false;
        LOG_WARNING = false;
        LOG_INFO = false;
        LOG_DEBUG = false;
    }

    public static void entered() {
        debug("ENTERED METHOD");
    }

    public static void info(String message) {
        write(UnityAdsLogLevel.INFO, checkMessage(message));
    }

    public static void info(String format, Object... args) {
        info(String.format(format, args));
    }

    public static void debug(String message) {
        if (message.length() > 3072) {
            debug(message.substring(0, 3072));
            if (message.length() < 30720) {
                debug(message.substring(3072));
                return;
            }
            return;
        }
        write(UnityAdsLogLevel.DEBUG, checkMessage(message));
    }

    public static void debug(String format, Object... args) {
        debug(String.format(format, args));
    }

    public static void warning(String message) {
        write(UnityAdsLogLevel.WARNING, checkMessage(message));
    }

    public static void warning(String format, Object... args) {
        warning(String.format(format, args));
    }

    public static void error(String message) {
        write(UnityAdsLogLevel.ERROR, checkMessage(message));
    }

    public static void exception(String message, Exception exception) {
        String str = message != null ? "" + message : "";
        if (exception != null) {
            str = str + ": " + exception.getMessage();
        }
        if (exception != null && exception.getCause() != null) {
            str = str + ": " + exception.getCause().getMessage();
        }
        write(UnityAdsLogLevel.ERROR, str);
    }

    public static void error(String format, Object... args) {
        error(String.format(format, args));
    }

    private static void write(UnityAdsLogLevel level, String message) {
        boolean z;
        switch (level) {
            case INFO:
                z = LOG_INFO;
                break;
            case DEBUG:
                z = LOG_DEBUG;
                break;
            case WARNING:
                z = LOG_WARNING;
                break;
            case ERROR:
                z = LOG_ERROR;
                break;
            default:
                z = true;
                break;
        }
        if (FORCE_DEBUG_LOG ? true : z) {
            writeToLog(createLogEntry(level, message));
        }
    }

    private static String checkMessage(String message) {
        if (message == null || message.length() == 0) {
            return "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead";
        }
        return message;
    }

    private static DeviceLogLevel getLogLevel(UnityAdsLogLevel logLevel) {
        return _deviceLogLevel.get(logLevel);
    }

    private static DeviceLogEntry createLogEntry(UnityAdsLogLevel level, String message) {
        boolean z = false;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        DeviceLogLevel logLevel = getLogLevel(level);
        if (logLevel != null) {
            int i = 0;
            while (i < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                if (stackTraceElement.getClassName().equals(DeviceLog.class.getName())) {
                    z = true;
                }
                if (!stackTraceElement.getClassName().equals(DeviceLog.class.getName()) && z) {
                    break;
                }
                i++;
            }
            StackTraceElement stackTraceElement2 = i < stackTrace.length ? stackTrace[i] : null;
            if (stackTraceElement2 != null) {
                return new DeviceLogEntry(logLevel, message, stackTraceElement2);
            }
        }
        return null;
    }

    private static void writeToLog(DeviceLogEntry logEntry) {
        Method method;
        if (logEntry != null && logEntry.getLogLevel() != null) {
            try {
                method = Log.class.getMethod(logEntry.getLogLevel().getReceivingMethodName(), String.class, String.class);
            } catch (Exception e) {
                Log.e("UnityAds", "Writing to log failed!", e);
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(null, logEntry.getLogLevel().getLogTag(), logEntry.getParsedMessage());
                } catch (Exception e2) {
                    Log.e("UnityAds", "Writing to log failed!", e2);
                }
            }
        }
    }
}
