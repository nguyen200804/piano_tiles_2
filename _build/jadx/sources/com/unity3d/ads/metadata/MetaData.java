package com.unity3d.ads.metadata;

import android.content.Context;
import com.unity3d.ads.device.Storage;
import com.unity3d.ads.device.StorageEvent;
import com.unity3d.ads.device.StorageManager;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.JsonStorage;
import com.unity3d.ads.misc.Utilities;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MetaData extends JsonStorage {
    private String _category;
    protected Context _context;

    public MetaData(Context context) {
        this._context = context.getApplicationContext();
    }

    public void setCategory(String category) {
        this._category = category;
    }

    public String getCategory() {
        return this._category;
    }

    @Override // com.unity3d.ads.misc.JsonStorage
    public synchronized boolean set(String key, Object value) {
        boolean z;
        initData();
        z = false;
        if (super.set(getActualKey(key) + ".value", value)) {
            if (super.set(getActualKey(key) + ".ts", Long.valueOf(System.currentTimeMillis()))) {
                z = true;
            }
        }
        return z;
    }

    protected synchronized boolean setRaw(String key, Object value) {
        boolean z;
        initData();
        z = false;
        if (super.set(getActualKey(key), value)) {
            z = true;
        }
        return z;
    }

    public void commit() {
        if (StorageManager.init(this._context)) {
            Storage storage = StorageManager.getStorage(StorageManager.StorageType.PUBLIC);
            if (getData() != null && storage != null) {
                Iterator<String> keys = getData().keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Object obj = get(next);
                    if (storage.get(next) != null && (storage.get(next) instanceof JSONObject) && (get(next) instanceof JSONObject)) {
                        try {
                            obj = Utilities.mergeJsonObjects((JSONObject) obj, (JSONObject) storage.get(next));
                        } catch (Exception e) {
                            DeviceLog.exception("Exception merging JSONs", e);
                        }
                    }
                    storage.set(next, obj);
                }
                storage.writeStorage();
                storage.sendEvent(StorageEvent.SET, getData());
                return;
            }
            return;
        }
        DeviceLog.error("Unity Ads could not commit metadata due to storage error");
    }

    private String getActualKey(String key) {
        if (getCategory() != null) {
            return getCategory() + "." + key;
        }
        return key;
    }
}
