package com.cmplay.base.util.gif;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LibraryLoader {
    static final String BASE_LIBRARY_NAME = "com_cmplay_base_util_gif";
    static final String SURFACE_LIBRARY_NAME = "com_cmplay_base_util_gif_surface";

    @SuppressLint({"StaticFieldLeak"})
    private static Context sAppContext;

    private LibraryLoader() {
    }

    public static void initialize(@NonNull Context context) {
        sAppContext = context.getApplicationContext();
    }

    private static Context getContext() {
        if (sAppContext == null) {
            try {
                sAppContext = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
                throw new IllegalStateException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e);
            }
        }
        return sAppContext;
    }

    static void loadLibrary(Context context) {
        try {
            Log.e("loadLibrary", "loadLibrary");
            System.loadLibrary(BASE_LIBRARY_NAME);
        } catch (UnsatisfiedLinkError e) {
            Log.e("loadLibrary", "UnsatisfiedLinkError loadLibrary");
            if (context == null) {
                context = getContext();
            }
            ReLinker.loadLibrary(context);
        }
    }
}
