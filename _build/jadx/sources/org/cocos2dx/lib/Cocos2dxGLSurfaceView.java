package org.cocos2dx.lib;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxGLSurfaceView extends GLSurfaceView {
    private static final int HANDLER_CLOSE_IME_KEYBOARD = 3;
    private static final int HANDLER_OPEN_IME_KEYBOARD = 2;
    private static Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
    private static Cocos2dxTextInputWraper sCocos2dxTextInputWraper;
    private static Handler sHandler;
    private Cocos2dxEditText mCocos2dxEditText;
    private Cocos2dxRenderer mCocos2dxRenderer;
    private static final String TAG = Cocos2dxGLSurfaceView.class.getSimpleName();
    public static float mPositionX = 0.0f;
    public static float mPositionY = 0.0f;

    public Cocos2dxGLSurfaceView(Context context) {
        super(context);
        initView();
    }

    public Cocos2dxGLSurfaceView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView();
    }

    protected void initView() {
        setEGLContextClientVersion(2);
        setFocusableInTouchMode(true);
        mCocos2dxGLSurfaceView = this;
        sCocos2dxTextInputWraper = new Cocos2dxTextInputWraper(this);
        sHandler = new Handler() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 2:
                        if (Cocos2dxGLSurfaceView.this.mCocos2dxEditText != null && Cocos2dxGLSurfaceView.this.mCocos2dxEditText.requestFocus()) {
                            Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                            Cocos2dxGLSurfaceView.this.mCocos2dxEditText.setText("");
                            String str = (String) msg.obj;
                            Cocos2dxGLSurfaceView.this.mCocos2dxEditText.append(str);
                            Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper.setOriginText(str);
                            Cocos2dxGLSurfaceView.this.mCocos2dxEditText.addTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                            ((InputMethodManager) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).showSoftInput(Cocos2dxGLSurfaceView.this.mCocos2dxEditText, 0);
                            Log.d("GLSurfaceView", "showSoftInput");
                            break;
                        }
                        break;
                    case 3:
                        if (Cocos2dxGLSurfaceView.this.mCocos2dxEditText != null) {
                            Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                            ((InputMethodManager) Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(Cocos2dxGLSurfaceView.this.mCocos2dxEditText.getWindowToken(), 0);
                            Cocos2dxGLSurfaceView.this.requestFocus();
                            Log.d("GLSurfaceView", "HideSoftInput");
                            break;
                        }
                        break;
                }
            }
        };
    }

    public static Cocos2dxGLSurfaceView getInstance() {
        return mCocos2dxGLSurfaceView;
    }

    public static void queueAccelerometer(final float x, final float y, final float z, final long timestamp) {
        mCocos2dxGLSurfaceView.queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxAccelerometer.onSensorChanged(x, y, z, timestamp);
            }
        });
    }

    public void setCocos2dxRenderer(Cocos2dxRenderer renderer) {
        this.mCocos2dxRenderer = renderer;
        setRenderer(this.mCocos2dxRenderer);
    }

    public Cocos2dxRenderer getCocos2dxRenderer() {
        return this.mCocos2dxRenderer;
    }

    private String getContentText() {
        return this.mCocos2dxRenderer.getContentText();
    }

    public Cocos2dxEditText getCocos2dxEditText() {
        return this.mCocos2dxEditText;
    }

    public void setCocos2dxEditText(Cocos2dxEditText pCocos2dxEditText) {
        this.mCocos2dxEditText = pCocos2dxEditText;
        if (this.mCocos2dxEditText != null && sCocos2dxTextInputWraper != null) {
            this.mCocos2dxEditText.setOnEditorActionListener(sCocos2dxTextInputWraper);
            this.mCocos2dxEditText.setCocos2dxGLSurfaceView(this);
            requestFocus();
        }
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        setRenderMode(1);
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.3
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnResume();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnPause();
            }
        });
        setRenderMode(0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent pMotionEvent) {
        final int pointerCount = pMotionEvent.getPointerCount();
        final int[] iArr = new int[pointerCount];
        final float[] fArr = new float[pointerCount];
        final float[] fArr2 = new float[pointerCount];
        for (int i = 0; i < pointerCount; i++) {
            iArr[i] = pMotionEvent.getPointerId(i);
            fArr[i] = pMotionEvent.getX(i);
            fArr2[i] = pMotionEvent.getY(i);
        }
        switch (pMotionEvent.getAction() & 255) {
            case 0:
                final int pointerId = pMotionEvent.getPointerId(0);
                final float f = fArr[0];
                final float f2 = fArr2[0];
                mPositionX = f;
                mPositionY = f2;
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        String str = (((((("java:ACTION_DOWN id:") + pointerId) + " x:") + f) + " y:") + f2) + ";\n";
                        Cocos2dxRenderer unused = Cocos2dxGLSurfaceView.this.mCocos2dxRenderer;
                        Cocos2dxRenderer.touchLog(str);
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(pointerId, f, f2);
                    }
                });
                break;
            case 1:
                final int pointerId2 = pMotionEvent.getPointerId(0);
                final float f3 = fArr[0];
                final float f4 = fArr2[0];
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.9
                    @Override // java.lang.Runnable
                    public void run() {
                        String str = (((((("java:ACTION_UP id:") + pointerId2) + " x:") + f3) + " y:") + f4) + ";\n";
                        Cocos2dxRenderer unused = Cocos2dxGLSurfaceView.this.mCocos2dxRenderer;
                        Cocos2dxRenderer.touchLog(str);
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(pointerId2, f3, f4);
                    }
                });
                break;
            case 2:
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.7
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i2 = 0; i2 < pointerCount; i2++) {
                            String str = (((((("java:ACTION_MOVE id:") + iArr[i2]) + " x:") + fArr[i2]) + " y:") + fArr2[i2]) + ";\n";
                            Cocos2dxRenderer unused = Cocos2dxGLSurfaceView.this.mCocos2dxRenderer;
                            Cocos2dxRenderer.touchLog(str);
                        }
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionMove(iArr, fArr, fArr2);
                    }
                });
                break;
            case 3:
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i2 = 0; i2 < pointerCount; i2++) {
                            String str = (((((("java:ACTION_CANCEL id:") + iArr[i2]) + " x:") + fArr[i2]) + " y:") + fArr2[i2]) + ";\n";
                            Cocos2dxRenderer unused = Cocos2dxGLSurfaceView.this.mCocos2dxRenderer;
                            Cocos2dxRenderer.touchLog(str);
                        }
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionCancel(iArr, fArr, fArr2);
                    }
                });
                break;
            case 5:
                int action = pMotionEvent.getAction() >> 8;
                final int pointerId3 = pMotionEvent.getPointerId(action);
                final float x = pMotionEvent.getX(action);
                final float y = pMotionEvent.getY(action);
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.5
                    @Override // java.lang.Runnable
                    public void run() {
                        String str = (((((("java:ACTION_POINTER_DOWN id:") + pointerId3) + " x:") + x) + " y:") + y) + IOUtils.LINE_SEPARATOR_UNIX;
                        Cocos2dxRenderer unused = Cocos2dxGLSurfaceView.this.mCocos2dxRenderer;
                        Cocos2dxRenderer.touchLog(str);
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(pointerId3, x, y);
                    }
                });
                break;
            case 6:
                int action2 = pMotionEvent.getAction() >> 8;
                final int pointerId4 = pMotionEvent.getPointerId(action2);
                final float x2 = pMotionEvent.getX(action2);
                final float y2 = pMotionEvent.getY(action2);
                queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.8
                    @Override // java.lang.Runnable
                    public void run() {
                        String str = (((((("java:ACTION_POINTER_UP id:") + pointerId4) + " x:") + x2) + " y:") + y2) + IOUtils.LINE_SEPARATOR_UNIX;
                        Cocos2dxRenderer unused = Cocos2dxGLSurfaceView.this.mCocos2dxRenderer;
                        Cocos2dxRenderer.touchLog(str);
                        Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(pointerId4, x2, y2);
                    }
                });
                break;
        }
        return true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int pNewSurfaceWidth, int pNewSurfaceHeight, int pOldSurfaceWidth, int pOldSurfaceHeight) {
        if (!isInEditMode()) {
            this.mCocos2dxRenderer.setScreenWidthAndHeight(pNewSurfaceWidth, pNewSurfaceHeight);
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(final int pKeyCode, KeyEvent pKeyEvent) {
        switch (pKeyCode) {
            case 4:
                Cocos2dxVideoHelper.mVideoHandler.sendEmptyMessage(1000);
                break;
            case 19:
            case 20:
            case MotionEventCompat.AXIS_WHEEL /* 21 */:
            case MotionEventCompat.AXIS_GAS /* 22 */:
            case MotionEventCompat.AXIS_BRAKE /* 23 */:
            case 66:
            case 82:
            case 85:
                break;
            default:
                return super.onKeyDown(pKeyCode, pKeyEvent);
        }
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.11
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleKeyDown(pKeyCode);
            }
        });
        return true;
    }

    public static void openIMEKeyboard() {
        Message message = new Message();
        message.what = 2;
        message.obj = mCocos2dxGLSurfaceView.getContentText();
        sHandler.sendMessage(message);
    }

    public static void closeIMEKeyboard() {
        Message message = new Message();
        message.what = 3;
        sHandler.sendMessage(message);
    }

    public void insertText(final String pText) {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.12
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleInsertText(pText);
            }
        });
    }

    public void deleteBackward() {
        queueEvent(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxGLSurfaceView.13
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleDeleteBackward();
            }
        });
    }

    private static void dumpMotionEvent(MotionEvent event) {
        StringBuilder sb = new StringBuilder();
        int action = event.getAction();
        int i = action & 255;
        sb.append("event ACTION_").append(new String[]{"DOWN", "UP", "MOVE", "CANCEL", "OUTSIDE", "POINTER_DOWN", "POINTER_UP", "7?", "8?", "9?"}[i]);
        if (i == 5 || i == 6) {
            sb.append("(pid ").append(action >> 8);
            sb.append(")");
        }
        sb.append("[");
        for (int i2 = 0; i2 < event.getPointerCount(); i2++) {
            sb.append("#").append(i2);
            sb.append("(pid ").append(event.getPointerId(i2));
            sb.append(")=").append((int) event.getX(i2));
            sb.append(",").append((int) event.getY(i2));
            if (i2 + 1 < event.getPointerCount()) {
                sb.append(";");
            }
        }
        sb.append("]");
        Log.d(TAG, sb.toString());
    }
}
