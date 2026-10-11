package com.jirbo.adcolony;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Handler;
import android.view.Display;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdColonyOverlay extends ADCVideo {
    Rect V = new Rect();
    int W = 0;

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration new_config) {
        super.onConfigurationChanged(new_config);
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        this.s = defaultDisplay.getWidth();
        this.t = defaultDisplay.getHeight();
        t.z = true;
        final View view = new View(this);
        view.setBackgroundColor(-16777216);
        if (d && this.E.P) {
            this.N.setLayoutParams(new FrameLayout.LayoutParams(this.s, this.t - this.E.m, 17));
            this.M.addView(view, new FrameLayout.LayoutParams(this.s, this.t, 17));
            new Handler().postDelayed(new Runnable() { // from class: com.jirbo.adcolony.AdColonyOverlay.1
                @Override // java.lang.Runnable
                public void run() {
                    AdColonyOverlay.this.M.removeView(view);
                }
            }, 1500L);
        }
        this.E.a();
    }
}
