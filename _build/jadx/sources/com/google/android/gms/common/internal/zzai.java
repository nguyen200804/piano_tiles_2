package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzai {
    private final Resources zo;
    private final String zp;

    public zzai(Context context) {
        zzab.zzy(context);
        this.zo = context.getResources();
        this.zp = this.zo.getResourcePackageName(R.string.common_google_play_services_unknown_issue);
    }

    public String getString(String str) {
        int identifier = this.zo.getIdentifier(str, "string", this.zp);
        if (identifier == 0) {
            return null;
        }
        return this.zo.getString(identifier);
    }
}
