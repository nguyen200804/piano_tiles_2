package android.support.v4.widget;

import android.view.View;
import android.widget.ListPopupWindow;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ListPopupWindowCompatKitKat {
    ListPopupWindowCompatKitKat() {
    }

    public static View.OnTouchListener createDragToOpenListener(Object listPopupWindow, View src) {
        return ((ListPopupWindow) listPopupWindow).createDragToOpenListener(src);
    }
}
