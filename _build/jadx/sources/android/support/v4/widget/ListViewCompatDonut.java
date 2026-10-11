package android.support.v4.widget;

import android.view.View;
import android.widget.ListView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ListViewCompatDonut {
    ListViewCompatDonut() {
    }

    static void scrollListBy(ListView listView, int y) {
        View childAt;
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
            listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - y);
        }
    }
}
