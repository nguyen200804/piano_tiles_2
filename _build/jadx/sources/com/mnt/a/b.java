package com.mnt.a;

import android.content.SharedPreferences;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b implements SharedPreferences.OnSharedPreferenceChangeListener {
    b() {
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        String str2;
        str2 = a.j;
        if (str.equals(str2)) {
            String unused = a.n = sharedPreferences.getString(str, "");
        }
    }
}
