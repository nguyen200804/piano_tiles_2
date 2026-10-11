package com.unity3d.ads.api;

import com.mopub.mobileads.VastIconXmlManager;
import com.unity3d.ads.adunit.AdUnitActivity;
import com.unity3d.ads.adunit.AdUnitError;
import com.unity3d.ads.adunit.AdUnitSoftwareActivity;
import com.unity3d.ads.adunit.AdUnitTransparentActivity;
import com.unity3d.ads.adunit.AdUnitTransparentSoftwareActivity;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdUnit {
    private static AdUnitActivity _adUnitActivity;
    private static int _currentActivityId = -1;

    private AdUnit() {
    }

    public static void setAdUnitActivity(AdUnitActivity activity) {
        _adUnitActivity = activity;
    }

    public static AdUnitActivity getAdUnitActivity() {
        return _adUnitActivity;
    }

    public static int getCurrentAdUnitActivityId() {
        return _currentActivityId;
    }

    public static void setCurrentAdUnitActivityId(int activityId) {
        _currentActivityId = activityId;
    }

    @WebViewExposed
    public static void open(Integer activityId, JSONArray views, Integer orientation, WebViewCallback callback) {
        open(activityId, views, orientation, null, callback);
    }

    @WebViewExposed
    public static void open(Integer activityId, JSONArray views, Integer orientation, JSONArray keyevents, WebViewCallback callback) {
        open(activityId, views, orientation, keyevents, 0, true, callback);
    }

    @WebViewExposed
    public static void open(Integer activityId, JSONArray views, Integer orientation, JSONArray keyevents, Integer systemUiVisibility, Boolean hardwareAcceleration, WebViewCallback callback) {
        open(activityId, views, orientation, keyevents, systemUiVisibility, hardwareAcceleration, false, callback);
    }

    @WebViewExposed
    public static void open(Integer activityId, JSONArray views, Integer orientation, JSONArray keyevents, Integer systemUiVisibility, Boolean hardwareAcceleration, Boolean isTransparent, WebViewCallback callback) {
        android.content.Intent intent;
        if (!hardwareAcceleration.booleanValue() && isTransparent.booleanValue()) {
            DeviceLog.debug("Unity Ads opening new transparent ad unit activity, hardware acceleration disabled");
            intent = new android.content.Intent(ClientProperties.getActivity(), (Class<?>) AdUnitTransparentSoftwareActivity.class);
        } else if (hardwareAcceleration.booleanValue() && !isTransparent.booleanValue()) {
            DeviceLog.debug("Unity Ads opening new hardware accelerated ad unit activity");
            intent = new android.content.Intent(ClientProperties.getActivity(), (Class<?>) AdUnitActivity.class);
        } else if (hardwareAcceleration.booleanValue() && isTransparent.booleanValue()) {
            DeviceLog.debug("Unity Ads opening new hardware accelerated transparent ad unit activity");
            intent = new android.content.Intent(ClientProperties.getActivity(), (Class<?>) AdUnitTransparentActivity.class);
        } else {
            DeviceLog.debug("Unity Ads opening new ad unit activity, hardware acceleration disabled");
            intent = new android.content.Intent(ClientProperties.getActivity(), (Class<?>) AdUnitSoftwareActivity.class);
        }
        intent.addFlags(268500992);
        if (activityId != null) {
            try {
                intent.putExtra(AdUnitActivity.EXTRA_ACTIVITY_ID, activityId.intValue());
                setCurrentAdUnitActivityId(activityId.intValue());
                try {
                    intent.putExtra(AdUnitActivity.EXTRA_VIEWS, getViewList(views));
                    if (keyevents != null) {
                        try {
                            intent.putExtra(AdUnitActivity.EXTRA_KEY_EVENT_LIST, getKeyEventList(keyevents));
                        } catch (Exception e) {
                            DeviceLog.exception("Error parsing views from viewList", e);
                            callback.error(AdUnitError.CORRUPTED_KEYEVENTLIST, keyevents, e.getMessage());
                            return;
                        }
                    }
                    intent.putExtra(AdUnitActivity.EXTRA_SYSTEM_UI_VISIBILITY, systemUiVisibility);
                    intent.putExtra(AdUnitActivity.EXTRA_ORIENTATION, orientation);
                    ClientProperties.getActivity().startActivity(intent);
                    DeviceLog.debug("Opened AdUnitActivity with: " + views.toString());
                    callback.invoke(new Object[0]);
                    return;
                } catch (Exception e2) {
                    DeviceLog.exception("Error parsing views from viewList", e2);
                    callback.error(AdUnitError.CORRUPTED_VIEWLIST, views, e2.getMessage());
                    return;
                }
            } catch (Exception e3) {
                DeviceLog.exception("Could not set activityId for intent", e3);
                callback.error(AdUnitError.ACTIVITY_ID, Integer.valueOf(activityId.intValue()), e3.getMessage());
                return;
            }
        }
        DeviceLog.error("Activity ID is NULL");
        callback.error(AdUnitError.ACTIVITY_ID, "Activity ID NULL");
    }

    @WebViewExposed
    public static void close(WebViewCallback callback) {
        if (getAdUnitActivity() != null) {
            getAdUnitActivity().finish();
            callback.invoke(new Object[0]);
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void setViews(final JSONArray views, WebViewCallback callback) {
        boolean z;
        try {
            getViewList(views);
            z = false;
        } catch (JSONException e) {
            callback.error(AdUnitError.CORRUPTED_VIEWLIST, views);
            z = true;
        }
        if (!z) {
            Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AdUnit.getAdUnitActivity() != null) {
                        try {
                            AdUnit.getAdUnitActivity().setViews(AdUnit.getViewList(views));
                        } catch (Exception e2) {
                            DeviceLog.exception("Corrupted viewlist", e2);
                        }
                    }
                }
            });
        }
        if (getAdUnitActivity() != null) {
            callback.invoke(views);
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getViews(WebViewCallback callback) {
        if (getAdUnitActivity() != null) {
            callback.invoke(new JSONArray((Collection) Arrays.asList(getAdUnitActivity().getViews())));
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void setOrientation(final Integer orientation, WebViewCallback callback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setOrientation(orientation.intValue());
                }
            }
        });
        if (getAdUnitActivity() != null) {
            callback.invoke(orientation);
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getOrientation(WebViewCallback callback) {
        if (getAdUnitActivity() != null) {
            callback.invoke(Integer.valueOf(getAdUnitActivity().getRequestedOrientation()));
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void setKeepScreenOn(final Boolean screenOn, WebViewCallback callback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.3
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setKeepScreenOn(screenOn.booleanValue());
                }
            }
        });
        if (getAdUnitActivity() != null) {
            callback.invoke(new Object[0]);
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void setSystemUiVisibility(final Integer systemUiVisibility, WebViewCallback callback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.4
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setSystemUiVisibility(systemUiVisibility.intValue());
                }
            }
        });
        if (getAdUnitActivity() != null) {
            callback.invoke(systemUiVisibility);
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void setKeyEventList(JSONArray keyevents, WebViewCallback callback) {
        if (getAdUnitActivity() != null) {
            try {
                getAdUnitActivity().setKeyEventList(getKeyEventList(keyevents));
                callback.invoke(keyevents);
                return;
            } catch (Exception e) {
                DeviceLog.exception("Error parsing views from viewList", e);
                callback.error(AdUnitError.CORRUPTED_KEYEVENTLIST, keyevents, e.getMessage());
                return;
            }
        }
        callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void setViewFrame(final String view, final Integer x, final Integer y, final Integer width, final Integer height, WebViewCallback callback) {
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.api.AdUnit.5
            @Override // java.lang.Runnable
            public void run() {
                if (AdUnit.getAdUnitActivity() != null) {
                    AdUnit.getAdUnitActivity().setViewFrame(view, x.intValue(), y.intValue(), width.intValue(), height.intValue());
                }
            }
        });
        if (getAdUnitActivity() != null) {
            callback.invoke(new Object[0]);
        } else {
            callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getViewFrame(String view, WebViewCallback callback) {
        if (getAdUnitActivity() != null) {
            if (getAdUnitActivity().getViewFrame(view) != null) {
                Map<String, Integer> viewFrame = getAdUnitActivity().getViewFrame(view);
                callback.invoke(viewFrame.get("x"), viewFrame.get("y"), viewFrame.get(VastIconXmlManager.WIDTH), viewFrame.get(VastIconXmlManager.HEIGHT));
                return;
            } else {
                callback.error(AdUnitError.UNKNOWN_VIEW, new Object[0]);
                return;
            }
        }
        callback.error(AdUnitError.ADUNIT_NULL, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String[] getViewList(JSONArray views) throws JSONException {
        String[] strArr = new String[views.length()];
        for (int i = 0; i < views.length(); i++) {
            strArr[i] = views.getString(i);
        }
        return strArr;
    }

    private static ArrayList<Integer> getKeyEventList(JSONArray keyevents) throws JSONException {
        ArrayList<Integer> arrayList = new ArrayList<>();
        for (Integer num = 0; num.intValue() < keyevents.length(); num = Integer.valueOf(num.intValue() + 1)) {
            arrayList.add(Integer.valueOf(keyevents.getInt(num.intValue())));
        }
        return arrayList;
    }
}
