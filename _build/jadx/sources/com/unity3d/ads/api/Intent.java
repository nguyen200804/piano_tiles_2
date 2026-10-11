package com.unity3d.ads.api;

import android.app.Activity;
import android.net.Uri;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Intent {

    public enum IntentError {
        COULDNT_PARSE_EXTRAS,
        COULDNT_PARSE_CATEGORIES,
        INTENT_WAS_NULL,
        ACTIVITY_WAS_NULL
    }

    @WebViewExposed
    public static void launch(JSONObject intentData, WebViewCallback callback) {
        android.content.Intent intent;
        String str = (String) intentData.opt("className");
        String str2 = (String) intentData.opt("packageName");
        String str3 = (String) intentData.opt("action");
        String str4 = (String) intentData.opt("uri");
        String str5 = (String) intentData.opt("mimeType");
        JSONArray jSONArray = (JSONArray) intentData.opt("categories");
        Integer num = (Integer) intentData.opt("flags");
        JSONArray jSONArray2 = (JSONArray) intentData.opt("extras");
        if (str2 != null && str == null && str3 == null && str5 == null) {
            intent = ClientProperties.getApplicationContext().getPackageManager().getLaunchIntentForPackage(str2);
            if (intent != null && num.intValue() > -1) {
                intent.addFlags(num.intValue());
            }
        } else {
            android.content.Intent intent2 = new android.content.Intent();
            if (str != null && str2 != null) {
                intent2.setClassName(str2, str);
            }
            if (str3 != null) {
                intent2.setAction(str3);
            }
            if (str4 != null) {
                intent2.setData(Uri.parse(str4));
            }
            if (str5 != null) {
                intent2.setType(str5);
            }
            if (num != null && num.intValue() > -1) {
                intent2.setFlags(num.intValue());
            }
            if (!setCategories(intent2, jSONArray)) {
                callback.error(IntentError.COULDNT_PARSE_CATEGORIES, jSONArray);
            }
            if (!setExtras(intent2, jSONArray2)) {
                callback.error(IntentError.COULDNT_PARSE_EXTRAS, jSONArray2);
            }
            intent = intent2;
        }
        if (intent != null) {
            if (getStartingActivity() != null) {
                getStartingActivity().startActivity(intent);
                callback.invoke(new Object[0]);
                return;
            } else {
                callback.error(IntentError.ACTIVITY_WAS_NULL, new Object[0]);
                return;
            }
        }
        callback.error(IntentError.INTENT_WAS_NULL, new Object[0]);
    }

    private static boolean setCategories(android.content.Intent intent, JSONArray categories) {
        if (categories != null && categories.length() > 0) {
            for (int i = 0; i < categories.length(); i++) {
                try {
                    intent.addCategory(categories.getString(i));
                } catch (Exception e) {
                    DeviceLog.exception("Couldn't parse categories for intent", e);
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean setExtras(android.content.Intent intent, JSONArray extras) {
        if (extras != null) {
            for (int i = 0; i < extras.length(); i++) {
                try {
                    JSONObject jSONObject = extras.getJSONObject(i);
                    if (!setExtra(intent, jSONObject.getString("key"), jSONObject.get("value"))) {
                        return false;
                    }
                } catch (Exception e) {
                    DeviceLog.exception("Couldn't parse extras", e);
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean setExtra(android.content.Intent intent, String key, Object value) {
        if (value instanceof String) {
            intent.putExtra(key, (String) value);
        } else if (value instanceof Integer) {
            intent.putExtra(key, ((Integer) value).intValue());
        } else if (value instanceof Double) {
            intent.putExtra(key, ((Double) value).doubleValue());
        } else if (value instanceof Boolean) {
            intent.putExtra(key, ((Boolean) value).booleanValue());
        } else {
            DeviceLog.error("Unable to parse launch intent extra " + key);
            return false;
        }
        return true;
    }

    private static Activity getStartingActivity() {
        if (AdUnit.getAdUnitActivity() != null) {
            return AdUnit.getAdUnitActivity();
        }
        if (ClientProperties.getActivity() == null) {
            return null;
        }
        return ClientProperties.getActivity();
    }
}
