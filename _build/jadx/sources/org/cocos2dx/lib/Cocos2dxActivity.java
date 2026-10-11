package org.cocos2dx.lib;

import android.content.Context;
import android.content.Intent;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.util.Iterator;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.cocos2dx.lib.Cocos2dxHandler;
import org.cocos2dx.lib.Cocos2dxHelper;
import org.cocos2dx.lib.Cocos2dxRenderer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class Cocos2dxActivity extends FragmentActivity implements Cocos2dxHelper.Cocos2dxHelperListener, Cocos2dxRenderer.ReportGL {
    private static final String TAG = Cocos2dxActivity.class.getSimpleName();
    private static Cocos2dxActivity sContext = null;
    public Cocos2dxGLSurfaceView mGLSurfaceView = null;
    private int[] mGLContextAttrs = null;
    private Cocos2dxHandler mHandler = null;
    private Cocos2dxVideoHelper mVideoHelper = null;
    private Cocos2dxWebViewHelper mWebViewHelper = null;
    protected FrameLayout mFrameLayout = null;

    private static native int[] getGLContextAttrs();

    public class Cocos2dxEGLConfigChooser implements GLSurfaceView.EGLConfigChooser {
        protected int[] configAttribs;

        public Cocos2dxEGLConfigChooser(int redSize, int greenSize, int blueSize, int alphaSize, int depthSize, int stencilSize) {
            this.configAttribs = new int[]{redSize, greenSize, blueSize, alphaSize, depthSize, stencilSize};
        }

        public Cocos2dxEGLConfigChooser(int[] attribs) {
            this.configAttribs = attribs;
        }

        public EGLConfig selectConfig(EGL10 egl, EGLDisplay display, EGLConfig[] configs, int[] attribs) {
            for (EGLConfig eGLConfig : configs) {
                int findConfigAttrib = findConfigAttrib(egl, display, eGLConfig, 12325, 0);
                int findConfigAttrib2 = findConfigAttrib(egl, display, eGLConfig, 12326, 0);
                if (findConfigAttrib >= attribs[4] && findConfigAttrib2 >= attribs[5]) {
                    int findConfigAttrib3 = findConfigAttrib(egl, display, eGLConfig, 12324, 0);
                    int findConfigAttrib4 = findConfigAttrib(egl, display, eGLConfig, 12323, 0);
                    int findConfigAttrib5 = findConfigAttrib(egl, display, eGLConfig, 12322, 0);
                    int findConfigAttrib6 = findConfigAttrib(egl, display, eGLConfig, 12321, 0);
                    if (findConfigAttrib3 >= attribs[0] && findConfigAttrib4 >= attribs[1] && findConfigAttrib5 >= attribs[2] && findConfigAttrib6 >= attribs[3]) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        private int findConfigAttrib(EGL10 egl, EGLDisplay display, EGLConfig config, int attribute, int defaultValue) {
            int[] iArr = new int[1];
            if (egl.eglGetConfigAttrib(display, config, attribute, iArr)) {
                int defaultValue2 = iArr[0];
                return defaultValue2;
            }
            return defaultValue;
        }

        @Override // android.opengl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display) {
            int[] iArr;
            int[] iArr2 = new int[1];
            if (egl.eglGetConfigs(display, null, 0, iArr2)) {
                EGLConfig[] eGLConfigArr = new EGLConfig[iArr2[0]];
                int[] iArr3 = new int[1];
                egl.eglChooseConfig(display, new int[]{12324, this.configAttribs[0], 12323, this.configAttribs[1], 12322, this.configAttribs[2], 12321, this.configAttribs[3], 12325, this.configAttribs[4], 12326, this.configAttribs[5], 12352, 4, 12344}, eGLConfigArr, iArr2[0], iArr3);
                if (iArr3[0] > 0) {
                    return selectConfig(egl, display, eGLConfigArr, this.configAttribs);
                }
                int[] iArr4 = {12324, 5, 12323, 6, 12322, 5, 12321, 0, 12325, 0, 12326, 0, 12352, 4, 12344};
                int[] iArr5 = {12324, 4, 12323, 4, 12322, 4, 12321, 4, 12325, 0, 12326, 0, 12352, 4, 12344};
                if (this.configAttribs[3] == 0) {
                    egl.eglChooseConfig(display, iArr4, eGLConfigArr, iArr2[0], iArr3);
                    iArr = new int[]{5, 6, 5, 0, 0, 0};
                } else {
                    egl.eglChooseConfig(display, iArr5, eGLConfigArr, iArr2[0], iArr3);
                    iArr = new int[]{4, 4, 4, 4, 0, 0};
                }
                if (iArr3[0] > 0) {
                    return selectConfig(egl, display, eGLConfigArr, iArr);
                }
                Log.e("device_policy", "Can not select an EGLConfig for rendering.");
                return null;
            }
            Log.e("device_policy", "Can not select an EGLConfig for rendering.");
            return null;
        }
    }

    public static Context getContext() {
        return sContext;
    }

    public void setKeepScreenOn(final boolean value) {
        runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxActivity.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxActivity.this.mGLSurfaceView.setKeepScreenOn(value);
            }
        });
    }

    protected void onLoadNativeLibraries() {
        try {
            System.loadLibrary(getPackageManager().getApplicationInfo(getPackageName(), 128).metaData.getString("android.app.lib_name"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        CocosPlayClient.init(this, false);
        sContext = this;
        this.mHandler = new Cocos2dxHandler(this);
        Cocos2dxHelper.init(this);
        this.mGLContextAttrs = getGLContextAttrs();
        init();
        if (this.mVideoHelper == null) {
            this.mVideoHelper = new Cocos2dxVideoHelper(this, this.mFrameLayout);
        }
        if (this.mWebViewHelper == null) {
            this.mWebViewHelper = new Cocos2dxWebViewHelper(this.mFrameLayout);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Cocos2dxHelper.onResume();
        this.mGLSurfaceView.onResume();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Cocos2dxHelper.onPause();
        this.mGLSurfaceView.onPause();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showDialog(String pTitle, String pMessage) {
        Message message = new Message();
        message.what = 1;
        message.obj = new Cocos2dxHandler.DialogMessage(pTitle, pMessage);
        this.mHandler.sendMessage(message);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void showEditTextDialog(String pTitle, String pContent, int pInputMode, int pInputFlag, int pReturnType, int pMaxLength) {
        Message message = new Message();
        message.what = 2;
        message.obj = new Cocos2dxHandler.EditBoxMessage(pTitle, pContent, pInputMode, pInputFlag, pReturnType, pMaxLength);
        this.mHandler.sendMessage(message);
    }

    @Override // org.cocos2dx.lib.Cocos2dxHelper.Cocos2dxHelperListener
    public void runOnGLThread(Runnable pRunnable) {
        this.mGLSurfaceView.queueEvent(pRunnable);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        Iterator<PreferenceManager.OnActivityResultListener> it = Cocos2dxHelper.getOnActivityResultListeners().iterator();
        while (it.hasNext()) {
            it.next().onActivityResult(requestCode, resultCode, data);
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public void init() {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        this.mFrameLayout = new FrameLayout(this);
        this.mFrameLayout.setLayoutParams(layoutParams);
        ViewGroup.LayoutParams layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        Cocos2dxEditText cocos2dxEditText = new Cocos2dxEditText(this);
        cocos2dxEditText.setLayoutParams(layoutParams2);
        this.mFrameLayout.addView(cocos2dxEditText);
        this.mGLSurfaceView = onCreateView();
        this.mFrameLayout.addView(this.mGLSurfaceView);
        if (isAndroidEmulator()) {
            this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        }
        this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer(this));
        this.mGLSurfaceView.setCocos2dxEditText(cocos2dxEditText);
        setContentView(this.mFrameLayout);
    }

    public Cocos2dxGLSurfaceView onCreateView() {
        Cocos2dxGLSurfaceView cocos2dxGLSurfaceView = new Cocos2dxGLSurfaceView(this);
        if (this.mGLContextAttrs[3] > 0) {
            cocos2dxGLSurfaceView.getHolder().setFormat(-3);
        }
        cocos2dxGLSurfaceView.setEGLConfigChooser(new Cocos2dxEGLConfigChooser(this.mGLContextAttrs));
        return cocos2dxGLSurfaceView;
    }

    private static final boolean isAndroidEmulator() {
        boolean z = false;
        Log.d(TAG, "model=" + Build.MODEL);
        String str = Build.PRODUCT;
        Log.d(TAG, "product=" + str);
        if (str != null && (str.equals("sdk") || str.contains("_sdk") || str.contains("sdk_"))) {
            z = true;
        }
        Log.d(TAG, "isEmulator=" + z);
        return z;
    }
}
