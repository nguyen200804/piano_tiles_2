package com.unity3d.ads.misc;

import android.text.TextUtils;
import com.unity3d.ads.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class JsonStorage {
    private JSONObject _data;

    public synchronized boolean initData() {
        boolean z;
        if (this._data == null) {
            this._data = new JSONObject();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public synchronized void setData(JSONObject data) {
        this._data = data;
    }

    public synchronized JSONObject getData() {
        return this._data;
    }

    public synchronized boolean hasData() {
        boolean z;
        if (this._data != null) {
            z = this._data.length() > 0;
        }
        return z;
    }

    public synchronized void clearData() {
        this._data = null;
    }

    public synchronized boolean set(String key, Object value) {
        boolean z;
        if (this._data == null || key == null || key.length() == 0 || value == null) {
            DeviceLog.error("Storage not properly initialized or incorrect parameters:" + this._data + ", " + key + ", " + value);
            z = false;
        } else {
            createObjectTree(getParentObjectTreeFor(key));
            if (findObject(getParentObjectTreeFor(key)) instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) findObject(getParentObjectTreeFor(key));
                String[] split = key.split("\\.");
                if (jSONObject != null) {
                    try {
                        jSONObject.put(split[split.length - 1], value);
                    } catch (JSONException e) {
                        DeviceLog.exception("Couldn't set value", e);
                        z = false;
                    }
                }
                z = true;
            } else {
                DeviceLog.debug("Cannot set subvalue to an object that is not JSONObject");
                z = false;
            }
        }
        return z;
    }

    public synchronized Object get(String key) {
        JSONObject jSONObject;
        Object obj;
        Object obj2 = null;
        synchronized (this) {
            if (this._data == null) {
                DeviceLog.error("Data is NULL, readStorage probably not called");
            } else {
                String[] split = key.split("\\.");
                if ((findObject(getParentObjectTreeFor(key)) instanceof JSONObject) && (jSONObject = (JSONObject) findObject(getParentObjectTreeFor(key))) != null) {
                    try {
                    } catch (Exception e) {
                        DeviceLog.exception("Error getting data", e);
                    }
                    if (jSONObject.has(split[split.length - 1])) {
                        obj = jSONObject.get(split[split.length - 1]);
                        obj2 = obj;
                    }
                    obj = null;
                    obj2 = obj;
                }
            }
        }
        return obj2;
    }

    public synchronized List<String> getKeys(String key, boolean recursive) {
        ArrayList arrayList;
        if (get(key) instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) get(key);
            ArrayList arrayList2 = new ArrayList();
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    List<String> keys2 = recursive ? getKeys(key + "." + next, recursive) : null;
                    arrayList2.add(next);
                    if (keys2 != null) {
                        Iterator<String> it = keys2.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(next + "." + it.next());
                        }
                    }
                }
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    public synchronized boolean delete(String key) {
        boolean z;
        JSONObject jSONObject;
        if (this._data == null) {
            DeviceLog.error("Data is NULL, readStorage probably not called");
            z = false;
        } else {
            String[] split = key.split("\\.");
            z = (!(findObject(getParentObjectTreeFor(key)) instanceof JSONObject) || (jSONObject = (JSONObject) findObject(getParentObjectTreeFor(key))) == null || jSONObject.remove(split[split.length + (-1)]) == null) ? false : true;
        }
        return z;
    }

    private synchronized Object findObject(String key) {
        JSONObject jSONObject;
        String[] split = key.split("\\.");
        jSONObject = this._data;
        if (key.length() != 0) {
            int i = 0;
            while (true) {
                if (i < split.length) {
                    if (!jSONObject.has(split[i])) {
                        jSONObject = null;
                        break;
                    }
                    try {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(split[i]);
                        i++;
                        jSONObject = jSONObject2;
                    } catch (Exception e) {
                        DeviceLog.exception("Couldn't read JSONObject: " + split[i], e);
                        jSONObject = null;
                    }
                } else {
                    break;
                }
            }
        }
        return jSONObject;
    }

    private synchronized void createObjectTree(String tree) {
        String[] split = tree.split("\\.");
        JSONObject jSONObject = this._data;
        if (tree.length() != 0) {
            JSONObject jSONObject2 = jSONObject;
            for (int i = 0; i < split.length; i++) {
                if (!jSONObject2.has(split[i])) {
                    try {
                        JSONObject put = jSONObject2.put(split[i], new JSONObject());
                        try {
                            jSONObject2 = put.getJSONObject(split[i]);
                        } catch (Exception e) {
                            jSONObject2 = put;
                            e = e;
                            DeviceLog.exception("Couldn't create new JSONObject", e);
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                } else {
                    try {
                        jSONObject2 = jSONObject2.getJSONObject(split[i]);
                    } catch (Exception e3) {
                        DeviceLog.exception("Couldn't get existing JSONObject", e3);
                    }
                }
            }
        }
    }

    private synchronized String getParentObjectTreeFor(String tree) {
        ArrayList arrayList;
        arrayList = new ArrayList(Arrays.asList(tree.split("\\.")));
        arrayList.remove(arrayList.size() - 1);
        return TextUtils.join(".", arrayList.toArray());
    }
}
