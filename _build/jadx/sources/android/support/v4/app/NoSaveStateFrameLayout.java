package android.support.v4.app;

import android.content.Context;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class NoSaveStateFrameLayout extends FrameLayout {
    static ViewGroup wrap(View child) {
        NoSaveStateFrameLayout noSaveStateFrameLayout = new NoSaveStateFrameLayout(child.getContext());
        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
        if (layoutParams != null) {
            noSaveStateFrameLayout.setLayoutParams(layoutParams);
        }
        child.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        noSaveStateFrameLayout.addView(child);
        return noSaveStateFrameLayout;
    }

    public NoSaveStateFrameLayout(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
        dispatchFreezeSelfOnly(container);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) {
        dispatchThawSelfOnly(container);
    }
}
