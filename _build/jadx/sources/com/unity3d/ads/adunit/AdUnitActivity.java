package com.unity3d.ads.adunit;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.mopub.mobileads.VastIconXmlManager;
import com.unity3d.ads.api.AdUnit;
import com.unity3d.ads.api.VideoPlayer;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.ViewUtilities;
import com.unity3d.ads.video.VideoPlayerView;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdUnitActivity extends Activity {
    public static final String EXTRA_ACTIVITY_ID = "activityId";
    public static final String EXTRA_KEEP_SCREEN_ON = "keepScreenOn";
    public static final String EXTRA_KEY_EVENT_LIST = "keyEvents";
    public static final String EXTRA_ORIENTATION = "orientation";
    public static final String EXTRA_SYSTEM_UI_VISIBILITY = "systemUiVisibility";
    public static final String EXTRA_VIEWS = "views";
    private int _activityId;
    boolean _keepScreenOn;
    private ArrayList<Integer> _keyEventList;
    protected RelativeLayout _layout;
    private int _orientation = -1;
    private int _systemUiVisibility;
    private RelativeLayout _videoContainer;
    private String[] _views;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        AdUnitEvent adUnitEvent;
        super.onCreate(savedInstanceState);
        if (WebViewApp.getCurrentApp() == null) {
            DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onCreate");
            finish();
            return;
        }
        AdUnit.setAdUnitActivity(this);
        createLayout();
        ViewUtilities.removeViewFromParent(this._layout);
        addContentView(this._layout, this._layout.getLayoutParams());
        if (savedInstanceState == null) {
            this._views = getIntent().getStringArrayExtra(EXTRA_VIEWS);
            this._keyEventList = getIntent().getIntegerArrayListExtra(EXTRA_KEY_EVENT_LIST);
            if (getIntent().hasExtra(EXTRA_ORIENTATION)) {
                this._orientation = getIntent().getIntExtra(EXTRA_ORIENTATION, -1);
            }
            if (getIntent().hasExtra(EXTRA_SYSTEM_UI_VISIBILITY)) {
                this._systemUiVisibility = getIntent().getIntExtra(EXTRA_SYSTEM_UI_VISIBILITY, 0);
            }
            if (getIntent().hasExtra(EXTRA_ACTIVITY_ID)) {
                this._activityId = getIntent().getIntExtra(EXTRA_ACTIVITY_ID, -1);
            }
            adUnitEvent = AdUnitEvent.ON_CREATE;
        } else {
            this._views = savedInstanceState.getStringArray(EXTRA_VIEWS);
            this._orientation = savedInstanceState.getInt(EXTRA_ORIENTATION, -1);
            this._systemUiVisibility = savedInstanceState.getInt(EXTRA_SYSTEM_UI_VISIBILITY, 0);
            this._keyEventList = savedInstanceState.getIntegerArrayList(EXTRA_KEY_EVENT_LIST);
            this._keepScreenOn = savedInstanceState.getBoolean(EXTRA_KEEP_SCREEN_ON);
            this._activityId = savedInstanceState.getInt(EXTRA_ACTIVITY_ID, -1);
            setKeepScreenOn(this._keepScreenOn);
            adUnitEvent = AdUnitEvent.ON_RESTORE;
        }
        setOrientation(this._orientation);
        setSystemUiVisibility(this._systemUiVisibility);
        if (this._views != null && Arrays.asList(this._views).contains("videoplayer")) {
            createVideoPlayer();
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, adUnitEvent, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onStart");
                finish();
                return;
            }
            return;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_START, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onStop");
                finish();
                return;
            }
            return;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_STOP, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onResume");
                finish();
                return;
            }
            return;
        }
        setViews(this._views);
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_RESUME, Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onPause");
                finish();
                return;
            }
            return;
        }
        if (isFinishing()) {
            ViewUtilities.removeViewFromParent(WebViewApp.getCurrentApp().getWebView());
        }
        destroyVideoPlayer();
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_PAUSE, Boolean.valueOf(isFinishing()), Integer.valueOf(this._activityId));
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt(EXTRA_ORIENTATION, this._orientation);
        outState.putInt(EXTRA_SYSTEM_UI_VISIBILITY, this._systemUiVisibility);
        outState.putIntegerArrayList(EXTRA_KEY_EVENT_LIST, this._keyEventList);
        outState.putBoolean(EXTRA_KEEP_SCREEN_ON, this._keepScreenOn);
        outState.putStringArray(EXTRA_VIEWS, this._views);
        outState.putInt(EXTRA_ACTIVITY_ID, this._activityId);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (WebViewApp.getCurrentApp() == null) {
            if (!isFinishing()) {
                DeviceLog.error("Unity Ads web app is null, closing Unity Ads activity from onDestroy");
                finish();
                return;
            }
            return;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.ON_DESTROY, Boolean.valueOf(isFinishing()), Integer.valueOf(this._activityId));
        if (AdUnit.getCurrentAdUnitActivityId() == this._activityId) {
            AdUnit.setAdUnitActivity(null);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (this._keyEventList == null || !this._keyEventList.contains(Integer.valueOf(keyCode))) {
            return false;
        }
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.ADUNIT, AdUnitEvent.KEY_DOWN, Integer.valueOf(keyCode), Long.valueOf(event.getEventTime()), Long.valueOf(event.getDownTime()), Integer.valueOf(event.getRepeatCount()), Integer.valueOf(this._activityId));
        return true;
    }

    public void setViewFrame(String view, int x, int y, int width, int height) {
        ViewGroup viewGroup = null;
        if (view.equals("adunit")) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, height);
            layoutParams.setMargins(x, y, 0, 0);
            this._layout.setLayoutParams(layoutParams);
        } else if (view.equals("videoplayer")) {
            viewGroup = this._videoContainer;
        } else if (view.equals("webview")) {
            viewGroup = WebViewApp.getCurrentApp().getWebView();
        }
        if (viewGroup != null) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(width, height);
            layoutParams2.setMargins(x, y, 0, 0);
            viewGroup.setLayoutParams(layoutParams2);
        }
    }

    public Map<String, Integer> getViewFrame(String view) {
        View webView;
        if (view.equals("adunit")) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this._layout.getLayoutParams();
            HashMap hashMap = new HashMap();
            hashMap.put("x", Integer.valueOf(layoutParams.leftMargin));
            hashMap.put("y", Integer.valueOf(layoutParams.topMargin));
            hashMap.put(VastIconXmlManager.WIDTH, Integer.valueOf(this._layout.getWidth()));
            hashMap.put(VastIconXmlManager.HEIGHT, Integer.valueOf(this._layout.getHeight()));
            return hashMap;
        }
        if (view.equals("videoplayer")) {
            webView = this._videoContainer;
        } else {
            webView = view.equals("webview") ? WebViewApp.getCurrentApp().getWebView() : null;
        }
        if (webView == null) {
            return null;
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) webView.getLayoutParams();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("x", Integer.valueOf(layoutParams2.leftMargin));
        hashMap2.put("y", Integer.valueOf(layoutParams2.topMargin));
        hashMap2.put(VastIconXmlManager.WIDTH, Integer.valueOf(webView.getWidth()));
        hashMap2.put(VastIconXmlManager.HEIGHT, Integer.valueOf(webView.getHeight()));
        return hashMap2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void setViews(String[] views) {
        boolean z;
        if (views == null) {
            views = new String[0];
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(views));
        if (this._views == null) {
            this._views = new String[0];
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(this._views));
        arrayList2.removeAll(arrayList);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            switch (str.hashCode()) {
                case 1224424441:
                    if (str.equals("webview")) {
                        z = true;
                        break;
                    }
                    z = -1;
                    break;
                case 1865295644:
                    if (str.equals("videoplayer")) {
                        z = false;
                        break;
                    }
                    z = -1;
                    break;
                default:
                    z = -1;
                    break;
            }
            switch (z) {
                case false:
                    destroyVideoPlayer();
                    break;
                case true:
                    ViewUtilities.removeViewFromParent(WebViewApp.getCurrentApp().getWebView());
                    break;
            }
        }
        this._views = views;
        for (String str2 : views) {
            if (str2 != null) {
                if (str2.equals("videoplayer")) {
                    createVideoPlayer();
                    handleViewPlacement(this._videoContainer);
                } else if (!str2.equals("webview")) {
                    continue;
                } else if (WebViewApp.getCurrentApp() != null) {
                    handleViewPlacement(WebViewApp.getCurrentApp().getWebView());
                } else {
                    DeviceLog.error("WebApp IS NULL!");
                    throw new NullPointerException();
                }
            }
        }
    }

    private void handleViewPlacement(View view) {
        if (view.getParent() != null && view.getParent().equals(this._layout)) {
            this._layout.bringChildToFront(view);
            return;
        }
        ViewUtilities.removeViewFromParent(view);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        layoutParams.setMargins(0, 0, 0, 0);
        view.setPadding(0, 0, 0, 0);
        this._layout.addView(view, layoutParams);
    }

    public String[] getViews() {
        return this._views;
    }

    public void setOrientation(int orientation) {
        this._orientation = orientation;
        setRequestedOrientation(orientation);
    }

    public boolean setKeepScreenOn(boolean keepScreenOn) {
        this._keepScreenOn = keepScreenOn;
        if (getWindow() == null) {
            return false;
        }
        if (keepScreenOn) {
            getWindow().addFlags(128);
        } else {
            getWindow().clearFlags(128);
        }
        return true;
    }

    public boolean setSystemUiVisibility(int flags) {
        this._systemUiVisibility = flags;
        if (Build.VERSION.SDK_INT < 11) {
            return false;
        }
        try {
            getWindow().getDecorView().setSystemUiVisibility(flags);
            return true;
        } catch (Exception e) {
            DeviceLog.exception("Error while setting SystemUIVisibility", e);
            return false;
        }
    }

    public void setKeyEventList(ArrayList<Integer> keyevents) {
        this._keyEventList = keyevents;
    }

    protected void createLayout() {
        if (this._layout == null) {
            this._layout = new RelativeLayout(this);
            this._layout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            ViewUtilities.setBackground(this._layout, new ColorDrawable(-16777216));
        }
    }

    private void createVideoPlayer() {
        if (this._videoContainer == null) {
            this._videoContainer = new RelativeLayout(this);
        }
        if (VideoPlayer.getVideoPlayerView() == null) {
            VideoPlayer.setVideoPlayerView(new VideoPlayerView(this));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            VideoPlayer.getVideoPlayerView().setLayoutParams(layoutParams);
            this._videoContainer.addView(VideoPlayer.getVideoPlayerView());
        }
    }

    private void destroyVideoPlayer() {
        if (VideoPlayer.getVideoPlayerView() != null) {
            VideoPlayer.getVideoPlayerView().stopVideoProgressTimer();
            VideoPlayer.getVideoPlayerView().stopPlayback();
            ViewUtilities.removeViewFromParent(VideoPlayer.getVideoPlayerView());
        }
        VideoPlayer.setVideoPlayerView(null);
        if (this._videoContainer != null) {
            ViewUtilities.removeViewFromParent(this._videoContainer);
            this._videoContainer = null;
        }
    }
}
