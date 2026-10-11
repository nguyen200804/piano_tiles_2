package com.mopub.network;

import android.support.annotation.Nullable;
import com.mopub.common.util.ResponseHeader;
import java.text.NumberFormat;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HeaderUtils {
    @Nullable
    public static String extractHeader(Map<String, String> headers, ResponseHeader responseHeader) {
        return headers.get(responseHeader.getKey());
    }

    public static Integer extractIntegerHeader(Map<String, String> headers, ResponseHeader responseHeader) {
        return a(extractHeader(headers, responseHeader));
    }

    public static boolean extractBooleanHeader(Map<String, String> headers, ResponseHeader responseHeader, boolean defaultValue) {
        return a(extractHeader(headers, responseHeader), defaultValue);
    }

    public static Integer extractPercentHeader(Map<String, String> headers, ResponseHeader responseHeader) {
        return b(extractHeader(headers, responseHeader));
    }

    @Nullable
    public static String extractPercentHeaderString(Map<String, String> headers, ResponseHeader responseHeader) {
        Integer extractPercentHeader = extractPercentHeader(headers, responseHeader);
        if (extractPercentHeader != null) {
            return extractPercentHeader.toString();
        }
        return null;
    }

    public static String extractHeader(HttpResponse response, ResponseHeader responseHeader) {
        Header firstHeader = response.getFirstHeader(responseHeader.getKey());
        if (firstHeader != null) {
            return firstHeader.getValue();
        }
        return null;
    }

    public static boolean extractBooleanHeader(HttpResponse response, ResponseHeader responseHeader, boolean defaultValue) {
        return a(extractHeader(response, responseHeader), defaultValue);
    }

    public static Integer extractIntegerHeader(HttpResponse response, ResponseHeader responseHeader) {
        return a(extractHeader(response, responseHeader));
    }

    public static int extractIntHeader(HttpResponse response, ResponseHeader responseHeader, int defaultValue) {
        Integer extractIntegerHeader = extractIntegerHeader(response, responseHeader);
        if (extractIntegerHeader == null) {
            return defaultValue;
        }
        int defaultValue2 = extractIntegerHeader.intValue();
        return defaultValue2;
    }

    private static boolean a(@Nullable String str, boolean z) {
        return str == null ? z : str.equals("1");
    }

    private static Integer a(String str) {
        try {
            return Integer.valueOf(Integer.parseInt(str));
        } catch (Exception e) {
            NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
            numberFormat.setParseIntegerOnly(true);
            try {
                return Integer.valueOf(numberFormat.parse(str.trim()).intValue());
            } catch (Exception e2) {
                return null;
            }
        }
    }

    @Nullable
    private static Integer b(@Nullable String str) {
        Integer a2;
        if (str != null && (a2 = a(str.replace("%", ""))) != null && a2.intValue() >= 0 && a2.intValue() <= 100) {
            return a2;
        }
        return null;
    }
}
