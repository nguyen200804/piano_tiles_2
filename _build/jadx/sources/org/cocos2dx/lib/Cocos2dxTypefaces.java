package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxTypefaces {
    private static final HashMap<String, Typeface> sTypefaceCache = new HashMap<>();

    public static synchronized Typeface get(Context context, String assetName) {
        Typeface typeface;
        Typeface createFromAsset;
        synchronized (Cocos2dxTypefaces.class) {
            if (!sTypefaceCache.containsKey(assetName)) {
                if (assetName.startsWith("/")) {
                    createFromAsset = Typeface.createFromFile(assetName);
                } else {
                    createFromAsset = Typeface.createFromAsset(context.getAssets(), assetName);
                }
                sTypefaceCache.put(assetName, createFromAsset);
            }
            typeface = sTypefaceCache.get(assetName);
        }
        return typeface;
    }
}
