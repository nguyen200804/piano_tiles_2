package com.unity3d.ads.adunit;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import com.unity3d.ads.misc.ViewUtilities;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdUnitTransparentActivity extends AdUnitActivity {
    @Override // com.unity3d.ads.adunit.AdUnitActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ViewUtilities.setBackground(this._layout, new ColorDrawable(0));
    }

    @Override // com.unity3d.ads.adunit.AdUnitActivity
    protected void createLayout() {
        super.createLayout();
        ViewUtilities.setBackground(this._layout, new ColorDrawable(0));
    }
}
