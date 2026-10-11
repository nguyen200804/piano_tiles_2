package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.R;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ItemTouchUIUtilImpl {

    static class Lollipop extends Honeycomb {
        Lollipop() {
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtilImpl.Honeycomb, android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            if (isCurrentlyActive && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                Float valueOf = Float.valueOf(ViewCompat.getElevation(view));
                ViewCompat.setElevation(view, 1.0f + findMaxElevation(recyclerView, view));
                view.setTag(R.id.item_touch_helper_previous_elevation, valueOf);
            }
            super.onDraw(c, recyclerView, view, dX, dY, actionState, isCurrentlyActive);
        }

        private float findMaxElevation(RecyclerView recyclerView, View itemView) {
            int childCount = recyclerView.getChildCount();
            float f = 0.0f;
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (childAt != itemView) {
                    float elevation = ViewCompat.getElevation(childAt);
                    if (elevation > f) {
                        f = elevation;
                    }
                }
            }
            return f;
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtilImpl.Honeycomb, android.support.v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (tag != null && (tag instanceof Float)) {
                ViewCompat.setElevation(view, ((Float) tag).floatValue());
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, null);
            super.clearView(view);
        }
    }

    ItemTouchUIUtilImpl() {
    }

    static class Honeycomb implements ItemTouchUIUtil {
        Honeycomb() {
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            ViewCompat.setTranslationX(view, 0.0f);
            ViewCompat.setTranslationY(view, 0.0f);
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onSelected(View view) {
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            ViewCompat.setTranslationX(view, dX);
            ViewCompat.setTranslationY(view, dY);
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDrawOver(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        }
    }

    static class Gingerbread implements ItemTouchUIUtil {
        Gingerbread() {
        }

        private void draw(Canvas c, RecyclerView parent, View view, float dX, float dY) {
            c.save();
            c.translate(dX, dY);
            parent.drawChild(c, view, 0L);
            c.restore();
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            view.setVisibility(0);
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onSelected(View view) {
            view.setVisibility(4);
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            if (actionState != 2) {
                draw(c, recyclerView, view, dX, dY);
            }
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDrawOver(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            if (actionState == 2) {
                draw(c, recyclerView, view, dX, dY);
            }
        }
    }
}
