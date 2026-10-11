package org.cocos2dx.lib;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.widget.FrameLayout;
import com.chukong.cocosplay.client.CocosPlayClient;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxWebViewHelper {
    private static Cocos2dxActivity sCocos2dxActivity;
    private static Handler sHandler;
    private static FrameLayout sLayout;
    private static SparseArray<Cocos2dxWebView> webViews;
    private static final String TAG = Cocos2dxWebViewHelper.class.getSimpleName();
    private static int viewTag = 0;

    private static native void didFailLoading(int i, String str);

    private static native void didFinishLoading(int i, String str);

    private static native void onJsCallback(int i, String str);

    private static native boolean shouldStartLoading(int i, String str);

    public Cocos2dxWebViewHelper(FrameLayout layout) {
        sLayout = layout;
        sHandler = new Handler(Looper.myLooper());
        sCocos2dxActivity = (Cocos2dxActivity) Cocos2dxActivity.getContext();
        webViews = new SparseArray<>();
    }

    public static boolean _shouldStartLoading(int index, String message) {
        return !shouldStartLoading(index, message);
    }

    public static void _didFinishLoading(int index, String message) {
        didFinishLoading(index, message);
    }

    public static void _didFailLoading(int index, String message) {
        didFailLoading(index, message);
    }

    public static void _onJsCallback(int index, String message) {
        onJsCallback(index, message);
    }

    public static int createWebView() {
        final int i = viewTag;
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.1
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = new Cocos2dxWebView(Cocos2dxWebViewHelper.sCocos2dxActivity, i);
                Cocos2dxWebViewHelper.sLayout.addView(cocos2dxWebView, new FrameLayout.LayoutParams(-2, -2));
                Cocos2dxWebViewHelper.webViews.put(i, cocos2dxWebView);
            }
        });
        int i2 = viewTag;
        viewTag = i2 + 1;
        return i2;
    }

    public static void removeWebView(final int index) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.2
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    Cocos2dxWebViewHelper.webViews.remove(index);
                    Cocos2dxWebViewHelper.sLayout.removeView(cocos2dxWebView);
                }
            }
        });
    }

    public static void setVisible(final int index, final boolean visible) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.3
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setVisibility(visible ? 0 : 8);
                }
            }
        });
    }

    public static void setWebViewRect(final int index, final int left, final int top, final int maxWidth, final int maxHeight) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.4
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setWebViewRect(left, top, maxWidth, maxHeight);
                }
            }
        });
    }

    public static void setJavascriptInterfaceScheme(final int index, final String scheme) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.5
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setJavascriptInterfaceScheme(scheme);
                }
            }
        });
    }

    public static void loadData(final int index, final String data, final String mimeType, final String encoding, final String baseURL) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.6
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadDataWithBaseURL(baseURL, data, mimeType, encoding, null);
                }
            }
        });
    }

    public static void loadHTMLString(final int index, final String data, final String baseUrl) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.7
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadDataWithBaseURL(baseUrl, data, null, null, null);
                }
            }
        });
    }

    public static void loadUrl(final int index, final String url) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.8
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl(url);
                }
            }
        });
    }

    public static void loadFile(final int index, final String filePath) {
        if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
            CocosPlayClient.updateAssets(filePath);
        }
        CocosPlayClient.notifyFileLoaded(filePath);
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.9
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl(filePath);
                }
            }
        });
    }

    public static void stopLoading(final int index) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.10
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.stopLoading();
                }
            }
        });
    }

    public static void reload(final int index) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.11
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.reload();
                }
            }
        });
    }

    public static <T> T callInMainThread(Callable<T> callable) throws ExecutionException, InterruptedException {
        FutureTask futureTask = new FutureTask(callable);
        sHandler.post(futureTask);
        return (T) futureTask.get();
    }

    public static boolean canGoBack(final int index) {
        try {
            return ((Boolean) callInMainThread(new Callable<Boolean>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.12
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Exception {
                    Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                    return Boolean.valueOf(cocos2dxWebView != null && cocos2dxWebView.canGoBack());
                }
            })).booleanValue();
        } catch (InterruptedException e) {
            return false;
        } catch (ExecutionException e2) {
            return false;
        }
    }

    public static boolean canGoForward(final int index) {
        try {
            return ((Boolean) callInMainThread(new Callable<Boolean>() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.13
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() throws Exception {
                    Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                    return Boolean.valueOf(cocos2dxWebView != null && cocos2dxWebView.canGoForward());
                }
            })).booleanValue();
        } catch (InterruptedException e) {
            return false;
        } catch (ExecutionException e2) {
            return false;
        }
    }

    public static void goBack(final int index) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.14
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.goBack();
                }
            }
        });
    }

    public static void goForward(final int index) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.15
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.goForward();
                }
            }
        });
    }

    public static void evaluateJS(final int index, final String js) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.16
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.loadUrl("javascript:" + js);
                }
            }
        });
    }

    public static void setScalesPageToFit(final int index, final boolean scalesPageToFit) {
        sCocos2dxActivity.runOnUiThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxWebViewHelper.17
            @Override // java.lang.Runnable
            public void run() {
                Cocos2dxWebView cocos2dxWebView = (Cocos2dxWebView) Cocos2dxWebViewHelper.webViews.get(index);
                if (cocos2dxWebView != null) {
                    cocos2dxWebView.setScalesPageToFit(scalesPageToFit);
                }
            }
        });
    }
}
