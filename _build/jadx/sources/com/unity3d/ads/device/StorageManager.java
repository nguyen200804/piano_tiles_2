package com.unity3d.ads.device;

import android.content.Context;
import com.unity3d.ads.properties.SdkProperties;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class StorageManager {
    protected static final Map<StorageType, String> _storageFileMap = new HashMap();
    protected static final List<Storage> _storages = new ArrayList();

    public enum StorageType {
        PRIVATE,
        PUBLIC
    }

    public static boolean init(Context context) {
        File cacheDirectory;
        if (context == null || (cacheDirectory = SdkProperties.getCacheDirectory(context)) == null) {
            return false;
        }
        addStorageLocation(StorageType.PUBLIC, cacheDirectory + "/" + SdkProperties.getLocalStorageFilePrefix() + "public-data.json");
        if (!setupStorage(StorageType.PUBLIC)) {
            return false;
        }
        addStorageLocation(StorageType.PRIVATE, cacheDirectory + "/" + SdkProperties.getLocalStorageFilePrefix() + "private-data.json");
        return setupStorage(StorageType.PRIVATE);
    }

    public static void initStorage(StorageType type) {
        if (hasStorage(type)) {
            Storage storage = getStorage(type);
            if (storage != null) {
                storage.initStorage();
                return;
            }
            return;
        }
        if (_storageFileMap.containsKey(type)) {
            Storage storage2 = new Storage(_storageFileMap.get(type), type);
            storage2.initStorage();
            _storages.add(storage2);
        }
    }

    private static boolean setupStorage(StorageType type) {
        if (!hasStorage(type)) {
            initStorage(type);
            Storage storage = getStorage(type);
            if (storage != null && !storage.storageFileExists()) {
                storage.writeStorage();
            }
            if (storage == null) {
                return false;
            }
        }
        return true;
    }

    public static Storage getStorage(StorageType type) {
        if (_storages != null) {
            for (Storage storage : _storages) {
                if (storage.getType().equals(type)) {
                    return storage;
                }
            }
        }
        return null;
    }

    public static boolean hasStorage(StorageType type) {
        if (_storages != null) {
            Iterator<Storage> it = _storages.iterator();
            while (it.hasNext()) {
                if (it.next().getType().equals(type)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static synchronized void addStorageLocation(StorageType type, String filename) {
        synchronized (StorageManager.class) {
            if (!_storageFileMap.containsKey(type)) {
                _storageFileMap.put(type, filename);
            }
        }
    }

    public static synchronized void removeStorage(StorageType type) {
        synchronized (StorageManager.class) {
            if (getStorage(type) != null) {
                _storages.remove(getStorage(type));
            }
            if (_storageFileMap != null) {
                _storageFileMap.remove(type);
            }
        }
    }
}
