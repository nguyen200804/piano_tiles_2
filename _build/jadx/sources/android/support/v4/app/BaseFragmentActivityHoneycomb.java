package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class BaseFragmentActivityHoneycomb extends BaseFragmentActivityEclair {
    BaseFragmentActivityHoneycomb() {
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(parent, name, context, attrs);
        if (dispatchFragmentsOnCreateView == null && Build.VERSION.SDK_INT >= 11) {
            return super.onCreateView(parent, name, context, attrs);
        }
        return dispatchFragmentsOnCreateView;
    }
}
