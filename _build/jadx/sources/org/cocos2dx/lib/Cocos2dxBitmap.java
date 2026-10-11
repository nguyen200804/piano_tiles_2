package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxBitmap {
    private static final int HORIZONTALALIGN_CENTER = 3;
    private static final int HORIZONTALALIGN_LEFT = 1;
    private static final int HORIZONTALALIGN_RIGHT = 2;
    private static final int VERTICALALIGN_BOTTOM = 2;
    private static final int VERTICALALIGN_CENTER = 3;
    private static final int VERTICALALIGN_TOP = 1;
    private static Context sContext;

    private static native void nativeInitBitmapDC(int i, int i2, byte[] bArr);

    public static void setContext(Context context) {
        sContext = context.getApplicationContext();
    }

    public static void createTextBitmap(String string, String fontName, int fontSize, int alignment, int width, int height) {
        createTextBitmapShadowStroke(string, fontName, fontSize, 255, 255, 255, 255, alignment, width, height, false, 0.0f, 0.0f, 0.0f, 0.0f, false, 255, 255, 255, 255, 0.0f);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:493)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:496)
        */
    public static boolean createTextBitmapShadowStroke(java.lang.String r20, java.lang.String r21, int r22, int r23, int r24, int r25, int r26, int r27, int r28, int r29, boolean r30, float r31, float r32, float r33, float r34, boolean r35, int r36, int r37, int r38, int r39, float r40) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.cocos2dx.lib.Cocos2dxBitmap.createTextBitmapShadowStroke(java.lang.String, java.lang.String, int, int, int, int, int, int, int, int, boolean, float, float, float, float, boolean, int, int, int, int, float):boolean");
    }

    private static Paint newPaint(String fontName, int fontSize, int horizontalAlignment) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setTextSize(fontSize);
        paint.setAntiAlias(true);
        if (fontName.endsWith(".ttf")) {
            try {
                paint.setTypeface(Cocos2dxTypefaces.get(sContext, fontName));
            } catch (Exception e) {
                Log.e("Cocos2dxBitmap", "error to create ttf type face: " + fontName);
                paint.setTypeface(Typeface.create(fontName, 0));
            }
        } else {
            paint.setTypeface(Typeface.create(fontName, 0));
        }
        switch (horizontalAlignment) {
            case 2:
                paint.setTextAlign(Paint.Align.RIGHT);
                return paint;
            case 3:
                paint.setTextAlign(Paint.Align.CENTER);
                return paint;
            default:
                paint.setTextAlign(Paint.Align.LEFT);
                return paint;
        }
    }

    private static TextProperty computeTextProperty(String string, int width, int height, Paint paint) {
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int ceil = (int) Math.ceil(fontMetricsInt.bottom - fontMetricsInt.top);
        String[] splitString = splitString(string, width, height, paint);
        if (width == 0) {
            int length = splitString.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                String str = splitString[i];
                int ceil2 = (int) Math.ceil(paint.measureText(str, 0, str.length()));
                if (ceil2 <= i2) {
                    ceil2 = i2;
                }
                i++;
                i2 = ceil2;
            }
            width = i2;
        }
        return new TextProperty(width, ceil, splitString);
    }

    private static int computeX(String text, int maxWidth, int horizontalAlignment) {
        switch (horizontalAlignment) {
            case 2:
                return maxWidth;
            case 3:
                return maxWidth / 2;
            default:
                return 0;
        }
    }

    private static int computeY(Paint.FontMetricsInt fontMetricsInt, int constrainHeight, int totalHeight, int verticalAlignment) {
        int i = -fontMetricsInt.top;
        if (constrainHeight > totalHeight) {
            switch (verticalAlignment) {
            }
            return i;
        }
        return i;
    }

    private static String[] splitString(String string, int maxWidth, int maxHeight, Paint paint) {
        int i = 0;
        String[] split = string.split("\\n");
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int ceil = maxHeight / ((int) Math.ceil(fontMetricsInt.bottom - fontMetricsInt.top));
        if (maxWidth != 0) {
            LinkedList linkedList = new LinkedList();
            int length = split.length;
            while (i < length) {
                String str = split[i];
                if (((int) Math.ceil(paint.measureText(str))) > maxWidth) {
                    linkedList.addAll(divideStringWithMaxWidth(str, maxWidth, paint));
                } else {
                    linkedList.add(str);
                }
                if (ceil > 0 && linkedList.size() >= ceil) {
                    break;
                }
                i++;
            }
            if (ceil > 0 && linkedList.size() > ceil) {
                while (linkedList.size() > ceil) {
                    linkedList.removeLast();
                }
            }
            String[] strArr = new String[linkedList.size()];
            linkedList.toArray(strArr);
            return strArr;
        }
        if (maxHeight != 0 && split.length > ceil) {
            LinkedList linkedList2 = new LinkedList();
            while (i < ceil) {
                linkedList2.add(split[i]);
                i++;
            }
            String[] strArr2 = new String[linkedList2.size()];
            linkedList2.toArray(strArr2);
            return strArr2;
        }
        return split;
    }

    private static LinkedList<String> divideStringWithMaxWidth(String string, int maxWidth, Paint paint) {
        int length = string.length();
        LinkedList<String> linkedList = new LinkedList<>();
        int i = 1;
        int i2 = 0;
        while (i <= length) {
            int ceil = (int) Math.ceil(paint.measureText(string, i2, i));
            if (ceil >= maxWidth) {
                int lastIndexOf = string.substring(0, i).lastIndexOf(" ");
                if (lastIndexOf != -1 && lastIndexOf > i2) {
                    linkedList.add(string.substring(i2, lastIndexOf));
                    i = lastIndexOf + 1;
                } else if (ceil > maxWidth && i != i2 + 1) {
                    linkedList.add(string.substring(i2, i - 1));
                    i--;
                } else {
                    linkedList.add(string.substring(i2, i));
                }
                while (i < length && string.charAt(i) == ' ') {
                    i++;
                }
                i2 = i;
            }
            i++;
        }
        if (i2 < length) {
            linkedList.add(string.substring(i2));
        }
        return linkedList;
    }

    private static String refactorString(String string) {
        if (string.compareTo("") == 0) {
            return " ";
        }
        StringBuilder sb = new StringBuilder(string);
        int i = 0;
        for (int indexOf = sb.indexOf(IOUtils.LINE_SEPARATOR_UNIX); indexOf != -1; indexOf = sb.indexOf(IOUtils.LINE_SEPARATOR_UNIX, i)) {
            if (indexOf == 0 || sb.charAt(indexOf - 1) == '\n') {
                sb.insert(i, " ");
                i = indexOf + 2;
            } else {
                i = indexOf + 1;
            }
            if (i > sb.length() || indexOf == sb.length()) {
                break;
            }
        }
        return sb.toString();
    }

    private static void initNativeObject(Bitmap bitmap) {
        byte[] pixels = getPixels(bitmap);
        if (pixels != null) {
            nativeInitBitmapDC(bitmap.getWidth(), bitmap.getHeight(), pixels);
        }
    }

    private static byte[] getPixels(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        byte[] bArr = new byte[bitmap.getWidth() * bitmap.getHeight() * 4];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(ByteOrder.nativeOrder());
        bitmap.copyPixelsToBuffer(wrap);
        return bArr;
    }

    private static int getFontSizeAccordingHeight(int height) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTypeface(Typeface.DEFAULT);
        boolean z = false;
        int i = 1;
        while (!z) {
            paint.setTextSize(i);
            paint.getTextBounds("SghMNy", 0, "SghMNy".length(), rect);
            i++;
            if (height - rect.height() <= 2) {
                z = true;
            }
            Log.d("font size", "incr size:" + i);
        }
        return i;
    }

    private static String getStringWithEllipsis(String string, float width, float fontSize) {
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTypeface(Typeface.DEFAULT);
        textPaint.setTextSize(fontSize);
        return TextUtils.ellipsize(string, textPaint, width, TextUtils.TruncateAt.END).toString();
    }

    private static class TextProperty {
        private final int mHeightPerLine;
        private final String[] mLines;
        private final int mMaxWidth;
        private final int mTotalHeight;

        TextProperty(int maxWidth, int heightPerLine, String[] lines) {
            this.mMaxWidth = maxWidth;
            this.mHeightPerLine = heightPerLine;
            this.mTotalHeight = lines.length * heightPerLine;
            this.mLines = lines;
        }
    }
}
