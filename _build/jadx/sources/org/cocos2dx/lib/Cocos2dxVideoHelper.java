package org.cocos2dx.lib;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import org.cocos2dx.lib.Cocos2dxVideoView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxVideoHelper {
    static final int KeyEventBack = 1000;
    private static final int VideoTaskCreate = 0;
    private static final int VideoTaskFullScreen = 12;
    private static final int VideoTaskKeepRatio = 11;
    private static final int VideoTaskPause = 5;
    private static final int VideoTaskRemove = 1;
    private static final int VideoTaskRestart = 10;
    private static final int VideoTaskResume = 6;
    private static final int VideoTaskSeek = 8;
    private static final int VideoTaskSetRect = 3;
    private static final int VideoTaskSetSource = 2;
    private static final int VideoTaskSetVisible = 9;
    private static final int VideoTaskStart = 4;
    private static final int VideoTaskStop = 7;
    static VideoHandler mVideoHandler = null;
    private static int videoTag = 0;
    private Cocos2dxActivity mActivity;
    private FrameLayout mLayout;
    private SparseArray<Cocos2dxVideoView> sVideoViews;
    Cocos2dxVideoView.OnVideoEventListener videoEventListener = new Cocos2dxVideoView.OnVideoEventListener() { // from class: org.cocos2dx.lib.Cocos2dxVideoHelper.1
        @Override // org.cocos2dx.lib.Cocos2dxVideoView.OnVideoEventListener
        public void onVideoEvent(int tag, int event) {
            Cocos2dxVideoHelper.this.mActivity.runOnGLThread(Cocos2dxVideoHelper.this.new VideoEventRunnable(tag, event));
        }
    };

    public static native void nativeExecuteVideoCallback(int i, int i2);

    Cocos2dxVideoHelper(Cocos2dxActivity activity, FrameLayout layout) {
        this.mLayout = null;
        this.mActivity = null;
        this.sVideoViews = null;
        this.mActivity = activity;
        this.mLayout = layout;
        mVideoHandler = new VideoHandler(this);
        this.sVideoViews = new SparseArray<>();
    }

    static class VideoHandler extends Handler {
        WeakReference<Cocos2dxVideoHelper> mReference;

        VideoHandler(Cocos2dxVideoHelper helper) {
            this.mReference = new WeakReference<>(helper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    this.mReference.get()._createVideoView(msg.arg1);
                    break;
                case 1:
                    this.mReference.get()._removeVideoView(msg.arg1);
                    break;
                case 2:
                    this.mReference.get()._setVideoURL(msg.arg1, msg.arg2, (String) msg.obj);
                    break;
                case 3:
                    Cocos2dxVideoHelper cocos2dxVideoHelper = this.mReference.get();
                    Rect rect = (Rect) msg.obj;
                    cocos2dxVideoHelper._setVideoRect(msg.arg1, rect.left, rect.top, rect.right, rect.bottom);
                    break;
                case 4:
                    this.mReference.get()._startVideo(msg.arg1);
                    break;
                case 5:
                    this.mReference.get()._pauseVideo(msg.arg1);
                    break;
                case 6:
                    this.mReference.get()._resumeVideo(msg.arg1);
                    break;
                case 7:
                    this.mReference.get()._stopVideo(msg.arg1);
                    break;
                case 8:
                    this.mReference.get()._seekVideoTo(msg.arg1, msg.arg2);
                    break;
                case 9:
                    Cocos2dxVideoHelper cocos2dxVideoHelper2 = this.mReference.get();
                    if (msg.arg2 == 1) {
                        cocos2dxVideoHelper2._setVideoVisible(msg.arg1, true);
                        break;
                    } else {
                        cocos2dxVideoHelper2._setVideoVisible(msg.arg1, false);
                        break;
                    }
                case 10:
                    this.mReference.get()._restartVideo(msg.arg1);
                    break;
                case 11:
                    Cocos2dxVideoHelper cocos2dxVideoHelper3 = this.mReference.get();
                    if (msg.arg2 == 1) {
                        cocos2dxVideoHelper3._setVideoKeepRatio(msg.arg1, true);
                        break;
                    } else {
                        cocos2dxVideoHelper3._setVideoKeepRatio(msg.arg1, false);
                        break;
                    }
                case 12:
                    Cocos2dxVideoHelper cocos2dxVideoHelper4 = this.mReference.get();
                    Rect rect2 = (Rect) msg.obj;
                    if (msg.arg2 == 1) {
                        cocos2dxVideoHelper4._setFullScreenEnabled(msg.arg1, true, rect2.right, rect2.bottom);
                        break;
                    } else {
                        cocos2dxVideoHelper4._setFullScreenEnabled(msg.arg1, false, rect2.right, rect2.bottom);
                        break;
                    }
                case 1000:
                    this.mReference.get().onBackKeyEvent();
                    break;
            }
            super.handleMessage(msg);
        }
    }

    private class VideoEventRunnable implements Runnable {
        private int mVideoEvent;
        private int mVideoTag;

        public VideoEventRunnable(int tag, int event) {
            this.mVideoTag = tag;
            this.mVideoEvent = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cocos2dxVideoHelper.nativeExecuteVideoCallback(this.mVideoTag, this.mVideoEvent);
        }
    }

    public static int createVideoWidget() {
        Message message = new Message();
        message.what = 0;
        message.arg1 = videoTag;
        mVideoHandler.sendMessage(message);
        int i = videoTag;
        videoTag = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _createVideoView(int index) {
        Cocos2dxVideoView cocos2dxVideoView = new Cocos2dxVideoView(this.mActivity, index);
        this.sVideoViews.put(index, cocos2dxVideoView);
        this.mLayout.addView(cocos2dxVideoView, new FrameLayout.LayoutParams(-2, -2));
        cocos2dxVideoView.setZOrderOnTop(true);
        cocos2dxVideoView.setOnCompletionListener(this.videoEventListener);
    }

    public static void removeVideoWidget(int index) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = index;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _removeVideoView(int index) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stopPlayback();
            this.sVideoViews.remove(index);
            this.mLayout.removeView(cocos2dxVideoView);
        }
    }

    public static void setVideoUrl(int index, int videoSource, String videoUrl) {
        Message message = new Message();
        message.what = 2;
        message.arg1 = index;
        message.arg2 = videoSource;
        message.obj = videoUrl;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoURL(int index, int videoSource, String videoUrl) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            switch (videoSource) {
                case 0:
                    cocos2dxVideoView.setVideoFileName(videoUrl);
                    break;
                case 1:
                    cocos2dxVideoView.setVideoURL(videoUrl);
                    break;
            }
        }
    }

    public static void setVideoRect(int index, int left, int top, int maxWidth, int maxHeight) {
        Message message = new Message();
        message.what = 3;
        message.arg1 = index;
        message.obj = new Rect(left, top, maxWidth, maxHeight);
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoRect(int index, int left, int top, int maxWidth, int maxHeight) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setVideoRect(left, top, maxWidth, maxHeight);
        }
    }

    public static void setFullScreenEnabled(int index, boolean enabled, int width, int height) {
        Message message = new Message();
        message.what = 12;
        message.arg1 = index;
        if (enabled) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        message.obj = new Rect(0, 0, width, height);
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setFullScreenEnabled(int index, boolean enabled, int width, int height) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setFullScreenEnabled(enabled, width, height);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackKeyEvent() {
        int size = this.sVideoViews.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.sVideoViews.keyAt(i);
            Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(keyAt);
            if (cocos2dxVideoView != null) {
                cocos2dxVideoView.setFullScreenEnabled(false, 0, 0);
                this.mActivity.runOnGLThread(new VideoEventRunnable(keyAt, 1000));
            }
        }
    }

    public static void startVideo(int index) {
        Message message = new Message();
        message.what = 4;
        message.arg1 = index;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _startVideo(int index) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.start();
        }
    }

    public static void pauseVideo(int index) {
        Message message = new Message();
        message.what = 5;
        message.arg1 = index;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _pauseVideo(int index) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.pause();
        }
    }

    public static void resumeVideo(int index) {
        Message message = new Message();
        message.what = 6;
        message.arg1 = index;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _resumeVideo(int index) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.resume();
        }
    }

    public static void stopVideo(int index) {
        Message message = new Message();
        message.what = 7;
        message.arg1 = index;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _stopVideo(int index) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.stop();
        }
    }

    public static void restartVideo(int index) {
        Message message = new Message();
        message.what = 10;
        message.arg1 = index;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _restartVideo(int index) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.restart();
        }
    }

    public static void seekVideoTo(int index, int msec) {
        Message message = new Message();
        message.what = 8;
        message.arg1 = index;
        message.arg2 = msec;
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _seekVideoTo(int index, int msec) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.seekTo(msec);
        }
    }

    public static void setVideoVisible(int index, boolean visible) {
        Message message = new Message();
        message.what = 9;
        message.arg1 = index;
        if (visible) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoVisible(int index, boolean visible) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            if (visible) {
                cocos2dxVideoView.fixSize();
                cocos2dxVideoView.setVisibility(0);
            } else {
                cocos2dxVideoView.setVisibility(4);
            }
        }
    }

    public static void setVideoKeepRatioEnabled(int index, boolean enable) {
        Message message = new Message();
        message.what = 11;
        message.arg1 = index;
        if (enable) {
            message.arg2 = 1;
        } else {
            message.arg2 = 0;
        }
        mVideoHandler.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _setVideoKeepRatio(int index, boolean enable) {
        Cocos2dxVideoView cocos2dxVideoView = this.sVideoViews.get(index);
        if (cocos2dxVideoView != null) {
            cocos2dxVideoView.setKeepRatio(enable);
        }
    }
}
