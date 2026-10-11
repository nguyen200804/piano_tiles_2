package org.cocos2dx.lib;

import android.opengl.GLSurfaceView;
import android.os.Process;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxRenderer implements GLSurfaceView.Renderer {
    private static final long NANOSECONDSPERMICROSECOND = 1000000;
    private static final long NANOSECONDSPERSECOND = 1000000000;
    private static long sAnimationInterval = 16666666;
    private long mLastTickInNanoSeconds;
    private boolean mNativeInitCompleted = false;
    private ReportGL mReporter;
    private int mScreenHeight;
    private int mScreenWidth;

    public interface ReportGL {
        void ReportGL(GL10 gl10);
    }

    private static native void nativeDeleteBackward();

    private static native String nativeGetContentText();

    private static native void nativeInit(int i, int i2);

    private static native void nativeInsertText(String str);

    private static native boolean nativeKeyDown(int i);

    private static native void nativeOnPause();

    private static native void nativeOnResume();

    private static native void nativeOnSurfaceChanged(int i, int i2);

    private static native void nativeRender();

    private static native void nativeTouchesBegin(int i, float f, float f2);

    private static native void nativeTouchesCancel(int[] iArr, float[] fArr, float[] fArr2);

    private static native void nativeTouchesEnd(int i, float f, float f2);

    private static native void nativeTouchesMove(int[] iArr, float[] fArr, float[] fArr2);

    public static native void touchLog(String str);

    public Cocos2dxRenderer(ReportGL reporter) {
        this.mReporter = reporter;
    }

    public static void setAnimationInterval(double animationInterval) {
        sAnimationInterval = (long) (1.0E9d * animationInterval);
    }

    public void setScreenWidthAndHeight(int surfaceWidth, int surfaceHeight) {
        this.mScreenWidth = surfaceWidth;
        this.mScreenHeight = surfaceHeight;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 GL10, EGLConfig EGLConfig) {
        this.mReporter.ReportGL(GL10);
        nativeInit(this.mScreenWidth, this.mScreenHeight);
        this.mLastTickInNanoSeconds = System.nanoTime();
        this.mNativeInitCompleted = true;
        Process.setThreadPriority(-2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 GL10, int width, int height) {
        nativeOnSurfaceChanged(width, height);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl) {
        if (sAnimationInterval <= 1.6666666666666666E7d) {
            nativeRender();
            return;
        }
        long nanoTime = System.nanoTime() - this.mLastTickInNanoSeconds;
        if (nanoTime < sAnimationInterval) {
            try {
                Thread.sleep((sAnimationInterval - nanoTime) / NANOSECONDSPERMICROSECOND);
            } catch (Exception e) {
            }
        }
        this.mLastTickInNanoSeconds = System.nanoTime();
        nativeRender();
    }

    public void handleActionDown(int id, float x, float y) {
        nativeTouchesBegin(id, x, y);
    }

    public void handleActionUp(int id, float x, float y) {
        nativeTouchesEnd(id, x, y);
    }

    public void handleActionCancel(int[] ids, float[] xs, float[] ys) {
        nativeTouchesCancel(ids, xs, ys);
    }

    public void handleActionMove(int[] ids, float[] xs, float[] ys) {
        nativeTouchesMove(ids, xs, ys);
    }

    public void handleKeyDown(int keyCode) {
        nativeKeyDown(keyCode);
    }

    public void handleOnPause() {
        if (this.mNativeInitCompleted) {
            Cocos2dxHelper.onEnterBackground();
            nativeOnPause();
        }
    }

    public void handleOnResume() {
        Cocos2dxHelper.onEnterForeground();
        nativeOnResume();
    }

    public void handleInsertText(String text) {
        nativeInsertText(text);
    }

    public void handleDeleteBackward() {
        nativeDeleteBackward();
    }

    public String getContentText() {
        return nativeGetContentText();
    }
}
