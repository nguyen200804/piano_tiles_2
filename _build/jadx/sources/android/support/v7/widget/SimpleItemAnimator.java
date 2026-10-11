package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class SimpleItemAnimator extends RecyclerView.ItemAnimator {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView.ViewHolder viewHolder);

    public abstract boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4);

    public abstract boolean animateMove(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4);

    public abstract boolean animateRemove(RecyclerView.ViewHolder viewHolder);

    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    public void setSupportsChangeAnimations(boolean supportsChangeAnimations) {
        this.mSupportsChangeAnimations = supportsChangeAnimations;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder) {
        return !this.mSupportsChangeAnimations || viewHolder.isInvalid();
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public boolean animateDisappearance(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo preLayoutInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo postLayoutInfo) {
        int i = preLayoutInfo.left;
        int i2 = preLayoutInfo.top;
        View view = viewHolder.itemView;
        int left = postLayoutInfo == null ? view.getLeft() : postLayoutInfo.left;
        int top = postLayoutInfo == null ? view.getTop() : postLayoutInfo.top;
        if (!viewHolder.isRemoved() && (i != left || i2 != top)) {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            return animateMove(viewHolder, i, i2, left, top);
        }
        return animateRemove(viewHolder);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public boolean animateAppearance(@NonNull RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo preLayoutInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo postLayoutInfo) {
        return (preLayoutInfo == null || (preLayoutInfo.left == postLayoutInfo.left && preLayoutInfo.top == postLayoutInfo.top)) ? animateAdd(viewHolder) : animateMove(viewHolder, preLayoutInfo.left, preLayoutInfo.top, postLayoutInfo.left, postLayoutInfo.top);
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public boolean animatePersistence(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo preInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo postInfo) {
        if (preInfo.left != postInfo.left || preInfo.top != postInfo.top) {
            return animateMove(viewHolder, preInfo.left, preInfo.top, postInfo.left, postInfo.top);
        }
        dispatchMoveFinished(viewHolder);
        return false;
    }

    @Override // android.support.v7.widget.RecyclerView.ItemAnimator
    public boolean animateChange(@NonNull RecyclerView.ViewHolder oldHolder, @NonNull RecyclerView.ViewHolder newHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo preInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo postInfo) {
        int i;
        int i2;
        int i3 = preInfo.left;
        int i4 = preInfo.top;
        if (newHolder.shouldIgnore()) {
            i = preInfo.left;
            i2 = preInfo.top;
        } else {
            i = postInfo.left;
            i2 = postInfo.top;
        }
        return animateChange(oldHolder, newHolder, i3, i4, i, i2);
    }

    public final void dispatchRemoveFinished(RecyclerView.ViewHolder item) {
        onRemoveFinished(item);
        dispatchAnimationFinished(item);
    }

    public final void dispatchMoveFinished(RecyclerView.ViewHolder item) {
        onMoveFinished(item);
        dispatchAnimationFinished(item);
    }

    public final void dispatchAddFinished(RecyclerView.ViewHolder item) {
        onAddFinished(item);
        dispatchAnimationFinished(item);
    }

    public final void dispatchChangeFinished(RecyclerView.ViewHolder item, boolean oldItem) {
        onChangeFinished(item, oldItem);
        dispatchAnimationFinished(item);
    }

    public final void dispatchRemoveStarting(RecyclerView.ViewHolder item) {
        onRemoveStarting(item);
    }

    public final void dispatchMoveStarting(RecyclerView.ViewHolder item) {
        onMoveStarting(item);
    }

    public final void dispatchAddStarting(RecyclerView.ViewHolder item) {
        onAddStarting(item);
    }

    public final void dispatchChangeStarting(RecyclerView.ViewHolder item, boolean oldItem) {
        onChangeStarting(item, oldItem);
    }

    public void onRemoveStarting(RecyclerView.ViewHolder item) {
    }

    public void onRemoveFinished(RecyclerView.ViewHolder item) {
    }

    public void onAddStarting(RecyclerView.ViewHolder item) {
    }

    public void onAddFinished(RecyclerView.ViewHolder item) {
    }

    public void onMoveStarting(RecyclerView.ViewHolder item) {
    }

    public void onMoveFinished(RecyclerView.ViewHolder item) {
    }

    public void onChangeStarting(RecyclerView.ViewHolder item, boolean oldItem) {
    }

    public void onChangeFinished(RecyclerView.ViewHolder item, boolean oldItem) {
    }
}
