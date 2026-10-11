package android.support.v4.graphics;

import android.graphics.Color;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal<>();
    private static final double XYZ_EPSILON = 0.008856d;
    private static final double XYZ_KAPPA = 903.3d;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

    private ColorUtils() {
    }

    public static int compositeColors(@ColorInt int foreground, @ColorInt int background) {
        int alpha = Color.alpha(background);
        int alpha2 = Color.alpha(foreground);
        int compositeAlpha = compositeAlpha(alpha2, alpha);
        return Color.argb(compositeAlpha, compositeComponent(Color.red(foreground), alpha2, Color.red(background), alpha, compositeAlpha), compositeComponent(Color.green(foreground), alpha2, Color.green(background), alpha, compositeAlpha), compositeComponent(Color.blue(foreground), alpha2, Color.blue(background), alpha, compositeAlpha));
    }

    private static int compositeAlpha(int foregroundAlpha, int backgroundAlpha) {
        return 255 - (((255 - backgroundAlpha) * (255 - foregroundAlpha)) / 255);
    }

    private static int compositeComponent(int fgC, int fgA, int bgC, int bgA, int a2) {
        if (a2 == 0) {
            return 0;
        }
        return (((fgC * 255) * fgA) + ((bgC * bgA) * (255 - fgA))) / (a2 * 255);
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public static double calculateLuminance(@ColorInt int color) {
        double[] tempDouble3Array = getTempDouble3Array();
        colorToXYZ(color, tempDouble3Array);
        return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
    }

    public static double calculateContrast(@ColorInt int foreground, @ColorInt int background) {
        if (Color.alpha(background) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(background));
        }
        if (Color.alpha(foreground) < 255) {
            foreground = compositeColors(foreground, background);
        }
        double calculateLuminance = calculateLuminance(foreground) + 0.05d;
        double calculateLuminance2 = calculateLuminance(background) + 0.05d;
        return Math.max(calculateLuminance, calculateLuminance2) / Math.min(calculateLuminance, calculateLuminance2);
    }

    public static int calculateMinimumAlpha(@ColorInt int foreground, @ColorInt int background, float minContrastRatio) {
        int i = 0;
        int i2 = 255;
        if (Color.alpha(background) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(background));
        }
        if (calculateContrast(setAlphaComponent(foreground, 255), background) < minContrastRatio) {
            return -1;
        }
        int i3 = 0;
        while (i3 <= 10 && i2 - i > 1) {
            int i4 = (i + i2) / 2;
            if (calculateContrast(setAlphaComponent(foreground, i4), background) >= minContrastRatio) {
                i2 = i4;
                i4 = i;
            }
            i3++;
            i = i4;
        }
        return i2;
    }

    public static void RGBToHSL(@IntRange(from = 0, to = 255) int r, @IntRange(from = 0, to = 255) int g, @IntRange(from = 0, to = 255) int b2, @NonNull float[] outHsl) {
        float f;
        float abs;
        float f2 = r / 255.0f;
        float f3 = g / 255.0f;
        float f4 = b2 / 255.0f;
        float max = Math.max(f2, Math.max(f3, f4));
        float min = Math.min(f2, Math.min(f3, f4));
        float f5 = max - min;
        float f6 = (max + min) / 2.0f;
        if (max == min) {
            abs = 0.0f;
            f = 0.0f;
        } else {
            if (max == f2) {
                f = ((f3 - f4) / f5) % 6.0f;
            } else if (max == f3) {
                f = ((f4 - f2) / f5) + 2.0f;
            } else {
                f = ((f2 - f3) / f5) + 4.0f;
            }
            abs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < 0.0f) {
            f7 += 360.0f;
        }
        outHsl[0] = constrain(f7, 0.0f, 360.0f);
        outHsl[1] = constrain(abs, 0.0f, 1.0f);
        outHsl[2] = constrain(f6, 0.0f, 1.0f);
    }

    public static void colorToHSL(@ColorInt int color, @NonNull float[] outHsl) {
        RGBToHSL(Color.red(color), Color.green(color), Color.blue(color), outHsl);
    }

    @ColorInt
    public static int HSLToColor(@NonNull float[] hsl) {
        int round;
        int round2;
        int round3;
        float f = hsl[0];
        float f2 = hsl[1];
        float f3 = hsl[2];
        float abs = (1.0f - Math.abs((2.0f * f3) - 1.0f)) * f2;
        float f4 = f3 - (0.5f * abs);
        float abs2 = abs * (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f));
        switch (((int) f) / 60) {
            case 0:
                round = Math.round((abs + f4) * 255.0f);
                round2 = Math.round((abs2 + f4) * 255.0f);
                round3 = Math.round(255.0f * f4);
                break;
            case 1:
                round = Math.round((abs2 + f4) * 255.0f);
                round2 = Math.round((abs + f4) * 255.0f);
                round3 = Math.round(255.0f * f4);
                break;
            case 2:
                round = Math.round(255.0f * f4);
                round2 = Math.round((abs + f4) * 255.0f);
                round3 = Math.round((abs2 + f4) * 255.0f);
                break;
            case 3:
                round = Math.round(255.0f * f4);
                round2 = Math.round((abs2 + f4) * 255.0f);
                round3 = Math.round((abs + f4) * 255.0f);
                break;
            case 4:
                round = Math.round((abs2 + f4) * 255.0f);
                round2 = Math.round(255.0f * f4);
                round3 = Math.round((abs + f4) * 255.0f);
                break;
            case 5:
            case 6:
                round = Math.round((abs + f4) * 255.0f);
                round2 = Math.round(255.0f * f4);
                round3 = Math.round((abs2 + f4) * 255.0f);
                break;
            default:
                round3 = 0;
                round2 = 0;
                round = 0;
                break;
        }
        return Color.rgb(constrain(round, 0, 255), constrain(round2, 0, 255), constrain(round3, 0, 255));
    }

    @ColorInt
    public static int setAlphaComponent(@ColorInt int color, @IntRange(from = 0, to = 255) int alpha) {
        if (alpha < 0 || alpha > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (16777215 & color) | (alpha << 24);
    }

    public static void colorToLAB(@ColorInt int color, @NonNull double[] outLab) {
        RGBToLAB(Color.red(color), Color.green(color), Color.blue(color), outLab);
    }

    public static void RGBToLAB(@IntRange(from = 0, to = 255) int r, @IntRange(from = 0, to = 255) int g, @IntRange(from = 0, to = 255) int b2, @NonNull double[] outLab) {
        RGBToXYZ(r, g, b2, outLab);
        XYZToLAB(outLab[0], outLab[1], outLab[2], outLab);
    }

    public static void colorToXYZ(@ColorInt int color, @NonNull double[] outXyz) {
        RGBToXYZ(Color.red(color), Color.green(color), Color.blue(color), outXyz);
    }

    public static void RGBToXYZ(@IntRange(from = 0, to = 255) int r, @IntRange(from = 0, to = 255) int g, @IntRange(from = 0, to = 255) int b2, @NonNull double[] outXyz) {
        if (outXyz.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d = r / 255.0d;
        double pow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = g / 255.0d;
        double pow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = b2 / 255.0d;
        double pow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        outXyz[0] = XYZ_WHITE_REFERENCE_Y * ((0.4124d * pow) + (0.3576d * pow2) + (0.1805d * pow3));
        outXyz[1] = XYZ_WHITE_REFERENCE_Y * ((0.2126d * pow) + (0.7152d * pow2) + (0.0722d * pow3));
        outXyz[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * XYZ_WHITE_REFERENCE_Y;
    }

    public static void XYZToLAB(@FloatRange(from = 0.0d, to = 95.047d) double x, @FloatRange(from = 0.0d, to = 100.0d) double y, @FloatRange(from = 0.0d, to = 108.883d) double z, @NonNull double[] outLab) {
        if (outLab.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        double x2 = pivotXyzComponent(x / XYZ_WHITE_REFERENCE_X);
        double y2 = pivotXyzComponent(y / XYZ_WHITE_REFERENCE_Y);
        double z2 = pivotXyzComponent(z / XYZ_WHITE_REFERENCE_Z);
        outLab[0] = Math.max(0.0d, (116.0d * y2) - 16.0d);
        outLab[1] = 500.0d * (x2 - y2);
        outLab[2] = 200.0d * (y2 - z2);
    }

    public static void LABToXYZ(@FloatRange(from = 0.0d, to = 100.0d) double l, @FloatRange(from = -128.0d, to = 127.0d) double a2, @FloatRange(from = -128.0d, to = 127.0d) double b2, @NonNull double[] outXyz) {
        double d = (16.0d + l) / 116.0d;
        double d2 = (a2 / 500.0d) + d;
        double d3 = d - (b2 / 200.0d);
        double pow = Math.pow(d2, 3.0d);
        double d4 = pow > XYZ_EPSILON ? pow : ((116.0d * d2) - 16.0d) / XYZ_KAPPA;
        double pow2 = l > 7.9996247999999985d ? Math.pow(d, 3.0d) : l / XYZ_KAPPA;
        double pow3 = Math.pow(d3, 3.0d);
        if (pow3 <= XYZ_EPSILON) {
            pow3 = ((116.0d * d3) - 16.0d) / XYZ_KAPPA;
        }
        outXyz[0] = d4 * XYZ_WHITE_REFERENCE_X;
        outXyz[1] = pow2 * XYZ_WHITE_REFERENCE_Y;
        outXyz[2] = pow3 * XYZ_WHITE_REFERENCE_Z;
    }

    @ColorInt
    public static int XYZToColor(@FloatRange(from = 0.0d, to = 95.047d) double x, @FloatRange(from = 0.0d, to = 100.0d) double y, @FloatRange(from = 0.0d, to = 108.883d) double z) {
        double d = (((3.2406d * x) + ((-1.5372d) * y)) + ((-0.4986d) * z)) / XYZ_WHITE_REFERENCE_Y;
        double d2 = ((((-0.9689d) * x) + (1.8758d * y)) + (0.0415d * z)) / XYZ_WHITE_REFERENCE_Y;
        double d3 = (((0.0557d * x) + ((-0.204d) * y)) + (1.057d * z)) / XYZ_WHITE_REFERENCE_Y;
        return Color.rgb(constrain((int) Math.round((d > 0.0031308d ? (Math.pow(d, 0.4166666666666667d) * 1.055d) - 0.055d : d * 12.92d) * 255.0d), 0, 255), constrain((int) Math.round((d2 > 0.0031308d ? (1.055d * Math.pow(d2, 0.4166666666666667d)) - 0.055d : 12.92d * d2) * 255.0d), 0, 255), constrain((int) Math.round((d3 > 0.0031308d ? (1.055d * Math.pow(d3, 0.4166666666666667d)) - 0.055d : 12.92d * d3) * 255.0d), 0, 255));
    }

    @ColorInt
    public static int LABToColor(@FloatRange(from = 0.0d, to = 100.0d) double l, @FloatRange(from = -128.0d, to = 127.0d) double a2, @FloatRange(from = -128.0d, to = 127.0d) double b2) {
        double[] tempDouble3Array = getTempDouble3Array();
        LABToXYZ(l, a2, b2, tempDouble3Array);
        return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static double distanceEuclidean(@NonNull double[] labX, @NonNull double[] labY) {
        return Math.sqrt(Math.pow(labX[0] - labY[0], 2.0d) + Math.pow(labX[1] - labY[1], 2.0d) + Math.pow(labX[2] - labY[2], 2.0d));
    }

    private static float constrain(float amount, float low, float high) {
        return amount < low ? low : amount > high ? high : amount;
    }

    private static int constrain(int amount, int low, int high) {
        return amount < low ? low : amount > high ? high : amount;
    }

    private static double pivotXyzComponent(double component) {
        return component > XYZ_EPSILON ? Math.pow(component, 0.3333333333333333d) : ((XYZ_KAPPA * component) + 16.0d) / 116.0d;
    }

    @ColorInt
    public static int blendARGB(@ColorInt int color1, @ColorInt int color2, @FloatRange(from = 0.0d, to = 1.0d) float ratio) {
        float f = 1.0f - ratio;
        return Color.argb((int) ((Color.alpha(color1) * f) + (Color.alpha(color2) * ratio)), (int) ((Color.red(color1) * f) + (Color.red(color2) * ratio)), (int) ((Color.green(color1) * f) + (Color.green(color2) * ratio)), (int) ((f * Color.blue(color1)) + (Color.blue(color2) * ratio)));
    }

    public static void blendHSL(@NonNull float[] hsl1, @NonNull float[] hsl2, @FloatRange(from = 0.0d, to = 1.0d) float ratio, @NonNull float[] outResult) {
        if (outResult.length != 3) {
            throw new IllegalArgumentException("result must have a length of 3.");
        }
        float f = 1.0f - ratio;
        outResult[0] = circularInterpolate(hsl1[0], hsl2[0], ratio);
        outResult[1] = (hsl1[1] * f) + (hsl2[1] * ratio);
        outResult[2] = (f * hsl1[2]) + (hsl2[2] * ratio);
    }

    public static void blendLAB(@NonNull double[] lab1, @NonNull double[] lab2, @FloatRange(from = 0.0d, to = 1.0d) double ratio, @NonNull double[] outResult) {
        if (outResult.length != 3) {
            throw new IllegalArgumentException("outResult must have a length of 3.");
        }
        double d = 1.0d - ratio;
        outResult[0] = (lab1[0] * d) + (lab2[0] * ratio);
        outResult[1] = (lab1[1] * d) + (lab2[1] * ratio);
        outResult[2] = (d * lab1[2]) + (lab2[2] * ratio);
    }

    @VisibleForTesting
    static float circularInterpolate(float a2, float b2, float f) {
        if (Math.abs(b2 - a2) > 180.0f) {
            if (b2 > a2) {
                a2 += 360.0f;
            } else {
                b2 += 360.0f;
            }
        }
        return (((b2 - a2) * f) + a2) % 360.0f;
    }

    private static double[] getTempDouble3Array() {
        double[] dArr = TEMP_ARRAY.get();
        if (dArr == null) {
            double[] dArr2 = new double[3];
            TEMP_ARRAY.set(dArr2);
            return dArr2;
        }
        return dArr;
    }
}
