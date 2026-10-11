package com.unity3d.ads.broadcast;

import android.content.IntentFilter;
import com.unity3d.ads.properties.ClientProperties;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BroadcastMonitor {
    private static Map<String, BroadcastEventReceiver> _eventReceivers;

    public static void addBroadcastListener(String name, String dataScheme, String[] actions) {
        removeBroadcastListener(name);
        IntentFilter intentFilter = new IntentFilter();
        for (String str : actions) {
            intentFilter.addAction(str);
        }
        if (dataScheme != null) {
            intentFilter.addDataScheme(dataScheme);
        }
        if (_eventReceivers == null) {
            _eventReceivers = new HashMap();
        }
        BroadcastEventReceiver broadcastEventReceiver = new BroadcastEventReceiver(name);
        _eventReceivers.put(name, broadcastEventReceiver);
        ClientProperties.getApplicationContext().registerReceiver(broadcastEventReceiver, intentFilter);
    }

    public static void removeBroadcastListener(String name) {
        if (_eventReceivers != null && _eventReceivers.containsKey(name)) {
            ClientProperties.getApplicationContext().unregisterReceiver(_eventReceivers.get(name));
            _eventReceivers.remove(name);
        }
    }

    public static void removeAllBroadcastListeners() {
        if (_eventReceivers != null) {
            Iterator<String> it = _eventReceivers.keySet().iterator();
            while (it.hasNext()) {
                ClientProperties.getApplicationContext().unregisterReceiver(_eventReceivers.get(it.next()));
            }
            _eventReceivers = null;
        }
    }
}
