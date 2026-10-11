package android.support.v4.util;

import com.applovin.sdk.AppLovinTargetingData;
import java.io.PrintWriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private static int accumField(int amt, int suffix, boolean always, int zeropad) {
        if (amt > 99 || (always && zeropad >= 3)) {
            return suffix + 3;
        }
        if (amt > 9 || (always && zeropad >= 2)) {
            return suffix + 2;
        }
        if (always || amt > 0) {
            return suffix + 1;
        }
        return 0;
    }

    private static int printField(char[] formatStr, int amt, char suffix, int pos, boolean always, int zeropad) {
        int pos2;
        int pos3;
        if (always || amt > 0) {
            if ((!always || zeropad < 3) && amt <= 99) {
                pos2 = pos;
            } else {
                int i = amt / 100;
                formatStr[pos] = (char) (i + 48);
                pos2 = pos + 1;
                amt -= i * 100;
            }
            if ((!always || zeropad < 2) && amt <= 9 && pos == pos2) {
                pos3 = pos2;
            } else {
                int i2 = amt / 10;
                formatStr[pos2] = (char) (i2 + 48);
                pos3 = pos2 + 1;
                amt -= i2 * 10;
            }
            formatStr[pos3] = (char) (amt + 48);
            int pos4 = pos3 + 1;
            formatStr[pos4] = suffix;
            return pos4 + 1;
        }
        return pos;
    }

    private static int formatDurationLocked(long duration, int fieldLen) {
        char c;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        if (sFormatStr.length < fieldLen) {
            sFormatStr = new char[fieldLen];
        }
        char[] cArr = sFormatStr;
        if (duration == 0) {
            int fieldLen2 = fieldLen - 1;
            while (0 < fieldLen2) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (duration > 0) {
            c = '+';
        } else {
            duration = -duration;
            c = '-';
        }
        int i6 = (int) (duration % 1000);
        int floor = (int) Math.floor(duration / 1000);
        int i7 = 0;
        if (floor > SECONDS_PER_DAY) {
            i7 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i7;
        }
        if (floor > SECONDS_PER_HOUR) {
            int i8 = floor / SECONDS_PER_HOUR;
            i = i8;
            i2 = floor - (i8 * SECONDS_PER_HOUR);
        } else {
            i = 0;
            i2 = floor;
        }
        if (i2 > SECONDS_PER_MINUTE) {
            int i9 = i2 / SECONDS_PER_MINUTE;
            i3 = i9;
            i4 = i2 - (i9 * SECONDS_PER_MINUTE);
        } else {
            i3 = 0;
            i4 = i2;
        }
        if (fieldLen == 0) {
            i5 = 0;
        } else {
            int accumField = accumField(i7, 1, false, 0);
            int accumField2 = accumField + accumField(i, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i3, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i4, 1, accumField3 > 0, 2);
            i5 = 0;
            int accumField5 = accumField(i6, 2, true, accumField4 > 0 ? 3 : 0) + 1 + accumField4;
            while (accumField5 < fieldLen) {
                cArr[i5] = ' ';
                accumField5++;
                i5++;
            }
        }
        cArr[i5] = c;
        int i10 = i5 + 1;
        boolean z = fieldLen != 0;
        int printField = printField(cArr, i7, 'd', i10, false, 0);
        int printField2 = printField(cArr, i, 'h', printField, printField != i10, z ? 2 : 0);
        int printField3 = printField(cArr, i3, AppLovinTargetingData.GENDER_MALE, printField2, printField2 != i10, z ? 2 : 0);
        int printField4 = printField(cArr, i4, 's', printField3, printField3 != i10, z ? 2 : 0);
        int printField5 = printField(cArr, i6, AppLovinTargetingData.GENDER_MALE, printField4, true, (!z || printField4 == i10) ? 0 : 3);
        cArr[printField5] = 's';
        return printField5 + 1;
    }

    public static void formatDuration(long duration, StringBuilder builder) {
        synchronized (sFormatSync) {
            builder.append(sFormatStr, 0, formatDurationLocked(duration, 0));
        }
    }

    public static void formatDuration(long duration, PrintWriter pw, int fieldLen) {
        synchronized (sFormatSync) {
            pw.print(new String(sFormatStr, 0, formatDurationLocked(duration, fieldLen)));
        }
    }

    public static void formatDuration(long duration, PrintWriter pw) {
        formatDuration(duration, pw, 0);
    }

    public static void formatDuration(long time, long now, PrintWriter pw) {
        if (time == 0) {
            pw.print("--");
        } else {
            formatDuration(time - now, pw, 0);
        }
    }

    private TimeUtils() {
    }
}
