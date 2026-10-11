package android.support.v7.widget;

import android.support.v4.util.Pools;
import android.support.v7.widget.OpReorderer;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final Callback mCallback;
    final boolean mDisableRecycler;
    private int mExistingUpdateTypes;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i);

        void markViewHoldersUpdated(int i, int i2, Object obj);

        void offsetPositionsForAdd(int i, int i2);

        void offsetPositionsForMove(int i, int i2);

        void offsetPositionsForRemovingInvisible(int i, int i2);

        void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    AdapterHelper(Callback callback) {
        this(callback, false);
    }

    AdapterHelper(Callback callback, boolean disableRecycler) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mExistingUpdateTypes = 0;
        this.mCallback = callback;
        this.mDisableRecycler = disableRecycler;
        this.mOpReorderer = new OpReorderer(this);
    }

    AdapterHelper addUpdateOp(UpdateOp... ops) {
        Collections.addAll(this.mPendingUpdates, ops);
        return this;
    }

    void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            switch (updateOp.cmd) {
                case 1:
                    applyAdd(updateOp);
                    break;
                case 2:
                    applyRemove(updateOp);
                    break;
                case 4:
                    applyUpdate(updateOp);
                    break;
                case 8:
                    applyMove(updateOp);
                    break;
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    void consumePostponedUpdates() {
        int size = this.mPostponedList.size();
        for (int i = 0; i < size; i++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
        this.mExistingUpdateTypes = 0;
    }

    private void applyMove(UpdateOp op) {
        postponeAndUpdateViewHolders(op);
    }

    private void applyRemove(UpdateOp op) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4 = op.positionStart;
        int i5 = op.positionStart + op.itemCount;
        char c = 65535;
        int i6 = op.positionStart;
        int i7 = 0;
        while (i6 < i5) {
            if (this.mCallback.findViewHolder(i6) != null || canFindInPreLayout(i6)) {
                if (c == 0) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(2, i4, i7, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 1;
            } else {
                if (c == 1) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(2, i4, i7, null));
                    z = true;
                } else {
                    z = false;
                }
                c = 0;
            }
            if (z) {
                i3 = i6 - i7;
                i = i5 - i7;
                i2 = 1;
            } else {
                int i8 = i6;
                i = i5;
                i2 = i7 + 1;
                i3 = i8;
            }
            i7 = i2;
            i5 = i;
            i6 = i3 + 1;
        }
        if (i7 != op.itemCount) {
            recycleUpdateOp(op);
            op = obtainUpdateOp(2, i4, i7, null);
        }
        if (c == 0) {
            dispatchAndUpdateViewHolders(op);
        } else {
            postponeAndUpdateViewHolders(op);
        }
    }

    private void applyUpdate(UpdateOp op) {
        int i;
        int i2;
        boolean z;
        int i3 = op.positionStart;
        int i4 = op.positionStart + op.itemCount;
        int i5 = op.positionStart;
        boolean z2 = -1;
        int i6 = 0;
        while (i5 < i4) {
            if (this.mCallback.findViewHolder(i5) != null || canFindInPreLayout(i5)) {
                if (!z2) {
                    dispatchAndUpdateViewHolders(obtainUpdateOp(4, i3, i6, op.payload));
                    i6 = 0;
                    i3 = i5;
                }
                i = i3;
                i2 = i6;
                z = true;
            } else {
                if (z2) {
                    postponeAndUpdateViewHolders(obtainUpdateOp(4, i3, i6, op.payload));
                    i6 = 0;
                    i3 = i5;
                }
                i = i3;
                i2 = i6;
                z = false;
            }
            i5++;
            boolean z3 = z;
            i6 = i2 + 1;
            i3 = i;
            z2 = z3;
        }
        if (i6 != op.itemCount) {
            Object obj = op.payload;
            recycleUpdateOp(op);
            op = obtainUpdateOp(4, i3, i6, obj);
        }
        if (!z2) {
            dispatchAndUpdateViewHolders(op);
        } else {
            postponeAndUpdateViewHolders(op);
        }
    }

    private void dispatchAndUpdateViewHolders(UpdateOp op) {
        int i;
        boolean z;
        if (op.cmd == 1 || op.cmd == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(op.positionStart, op.cmd);
        int i2 = op.positionStart;
        switch (op.cmd) {
            case 2:
                i = 0;
                break;
            case 3:
            default:
                throw new IllegalArgumentException("op should be remove or update." + op);
            case 4:
                i = 1;
                break;
        }
        int i3 = 1;
        int i4 = updatePositionWithPostponed;
        int i5 = i2;
        for (int i6 = 1; i6 < op.itemCount; i6++) {
            int updatePositionWithPostponed2 = updatePositionWithPostponed(op.positionStart + (i * i6), op.cmd);
            switch (op.cmd) {
                case 2:
                    if (updatePositionWithPostponed2 == i4) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
                case 3:
                default:
                    z = false;
                    break;
                case 4:
                    if (updatePositionWithPostponed2 == i4 + 1) {
                        z = true;
                        break;
                    } else {
                        z = false;
                        break;
                    }
            }
            if (z) {
                i3++;
            } else {
                UpdateOp obtainUpdateOp = obtainUpdateOp(op.cmd, i4, i3, op.payload);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i5);
                recycleUpdateOp(obtainUpdateOp);
                if (op.cmd == 4) {
                    i5 += i3;
                }
                i3 = 1;
                i4 = updatePositionWithPostponed2;
            }
        }
        Object obj = op.payload;
        recycleUpdateOp(op);
        if (i3 > 0) {
            UpdateOp obtainUpdateOp2 = obtainUpdateOp(op.cmd, i4, i3, obj);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i5);
            recycleUpdateOp(obtainUpdateOp2);
        }
    }

    void dispatchFirstPassAndUpdateViewHolders(UpdateOp op, int offsetStart) {
        this.mCallback.onDispatchFirstPass(op);
        switch (op.cmd) {
            case 2:
                this.mCallback.offsetPositionsForRemovingInvisible(offsetStart, op.itemCount);
                return;
            case 3:
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            case 4:
                this.mCallback.markViewHoldersUpdated(offsetStart, op.itemCount, op.payload);
                return;
        }
    }

    private int updatePositionWithPostponed(int pos, int cmd) {
        int i;
        int i2;
        for (int size = this.mPostponedList.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.mPostponedList.get(size);
            if (updateOp.cmd == 8) {
                if (updateOp.positionStart < updateOp.itemCount) {
                    i = updateOp.positionStart;
                    i2 = updateOp.itemCount;
                } else {
                    i = updateOp.itemCount;
                    i2 = updateOp.positionStart;
                }
                if (pos >= i && pos <= i2) {
                    if (i == updateOp.positionStart) {
                        if (cmd == 1) {
                            updateOp.itemCount++;
                        } else if (cmd == 2) {
                            updateOp.itemCount--;
                        }
                        pos++;
                    } else {
                        if (cmd == 1) {
                            updateOp.positionStart++;
                        } else if (cmd == 2) {
                            updateOp.positionStart--;
                        }
                        pos--;
                    }
                } else if (pos < updateOp.positionStart) {
                    if (cmd == 1) {
                        updateOp.positionStart++;
                        updateOp.itemCount++;
                    } else if (cmd == 2) {
                        updateOp.positionStart--;
                        updateOp.itemCount--;
                    }
                }
            } else if (updateOp.positionStart <= pos) {
                if (updateOp.cmd == 1) {
                    pos -= updateOp.itemCount;
                } else if (updateOp.cmd == 2) {
                    pos += updateOp.itemCount;
                }
            } else if (cmd == 1) {
                updateOp.positionStart++;
            } else if (cmd == 2) {
                updateOp.positionStart--;
            }
        }
        for (int size2 = this.mPostponedList.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.mPostponedList.get(size2);
            if (updateOp2.cmd == 8) {
                if (updateOp2.itemCount == updateOp2.positionStart || updateOp2.itemCount < 0) {
                    this.mPostponedList.remove(size2);
                    recycleUpdateOp(updateOp2);
                }
            } else if (updateOp2.itemCount <= 0) {
                this.mPostponedList.remove(size2);
                recycleUpdateOp(updateOp2);
            }
        }
        return pos;
    }

    private boolean canFindInPreLayout(int position) {
        int size = this.mPostponedList.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPostponedList.get(i);
            if (updateOp.cmd == 8) {
                if (findPositionOffset(updateOp.itemCount, i + 1) == position) {
                    return true;
                }
            } else if (updateOp.cmd == 1) {
                int i2 = updateOp.positionStart + updateOp.itemCount;
                for (int i3 = updateOp.positionStart; i3 < i2; i3++) {
                    if (findPositionOffset(i3, i + 1) == position) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void applyAdd(UpdateOp op) {
        postponeAndUpdateViewHolders(op);
    }

    private void postponeAndUpdateViewHolders(UpdateOp op) {
        this.mPostponedList.add(op);
        switch (op.cmd) {
            case 1:
                this.mCallback.offsetPositionsForAdd(op.positionStart, op.itemCount);
                return;
            case 2:
                this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(op.positionStart, op.itemCount);
                return;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                throw new IllegalArgumentException("Unknown update op type for " + op);
            case 4:
                this.mCallback.markViewHoldersUpdated(op.positionStart, op.itemCount, op.payload);
                return;
            case 8:
                this.mCallback.offsetPositionsForMove(op.positionStart, op.itemCount);
                return;
        }
    }

    boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    boolean hasAnyUpdateTypes(int updateTypes) {
        return (this.mExistingUpdateTypes & updateTypes) != 0;
    }

    int findPositionOffset(int position) {
        return findPositionOffset(position, 0);
    }

    int findPositionOffset(int position, int firstPostponedItem) {
        int size = this.mPostponedList.size();
        while (firstPostponedItem < size) {
            UpdateOp updateOp = this.mPostponedList.get(firstPostponedItem);
            if (updateOp.cmd == 8) {
                if (updateOp.positionStart == position) {
                    position = updateOp.itemCount;
                } else {
                    if (updateOp.positionStart < position) {
                        position--;
                    }
                    if (updateOp.itemCount <= position) {
                        position++;
                    }
                }
            } else if (updateOp.positionStart > position) {
                continue;
            } else if (updateOp.cmd == 2) {
                if (position < updateOp.positionStart + updateOp.itemCount) {
                    return -1;
                }
                position -= updateOp.itemCount;
            } else if (updateOp.cmd == 1) {
                position += updateOp.itemCount;
            }
            firstPostponedItem++;
        }
        return position;
    }

    boolean onItemRangeChanged(int positionStart, int itemCount, Object payload) {
        this.mPendingUpdates.add(obtainUpdateOp(4, positionStart, itemCount, payload));
        this.mExistingUpdateTypes |= 4;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeInserted(int positionStart, int itemCount) {
        this.mPendingUpdates.add(obtainUpdateOp(1, positionStart, itemCount, null));
        this.mExistingUpdateTypes |= 1;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeRemoved(int positionStart, int itemCount) {
        this.mPendingUpdates.add(obtainUpdateOp(2, positionStart, itemCount, null));
        this.mExistingUpdateTypes |= 2;
        return this.mPendingUpdates.size() == 1;
    }

    boolean onItemRangeMoved(int from, int to, int itemCount) {
        if (from == to) {
            return false;
        }
        if (itemCount != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.mPendingUpdates.add(obtainUpdateOp(8, from, to, null));
        this.mExistingUpdateTypes |= 8;
        return this.mPendingUpdates.size() == 1;
    }

    void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            switch (updateOp.cmd) {
                case 1:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.offsetPositionsForAdd(updateOp.positionStart, updateOp.itemCount);
                    break;
                case 2:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.offsetPositionsForRemovingInvisible(updateOp.positionStart, updateOp.itemCount);
                    break;
                case 4:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.markViewHoldersUpdated(updateOp.positionStart, updateOp.itemCount, updateOp.payload);
                    break;
                case 8:
                    this.mCallback.onDispatchSecondPass(updateOp);
                    this.mCallback.offsetPositionsForMove(updateOp.positionStart, updateOp.itemCount);
                    break;
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        this.mExistingUpdateTypes = 0;
    }

    public int applyPendingUpdatesToPosition(int position) {
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp updateOp = this.mPendingUpdates.get(i);
            switch (updateOp.cmd) {
                case 1:
                    if (updateOp.positionStart <= position) {
                        position += updateOp.itemCount;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (updateOp.positionStart <= position) {
                        if (updateOp.positionStart + updateOp.itemCount > position) {
                            return -1;
                        }
                        position -= updateOp.itemCount;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    if (updateOp.positionStart == position) {
                        position = updateOp.itemCount;
                        break;
                    } else {
                        if (updateOp.positionStart < position) {
                            position--;
                        }
                        if (updateOp.itemCount <= position) {
                            position++;
                            break;
                        } else {
                            break;
                        }
                    }
            }
        }
        return position;
    }

    boolean hasUpdates() {
        return (this.mPostponedList.isEmpty() || this.mPendingUpdates.isEmpty()) ? false : true;
    }

    static class UpdateOp {
        static final int ADD = 1;
        static final int MOVE = 8;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 2;
        static final int UPDATE = 4;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        UpdateOp(int cmd, int positionStart, int itemCount, Object payload) {
            this.cmd = cmd;
            this.positionStart = positionStart;
            this.itemCount = itemCount;
            this.payload = payload;
        }

        String cmdToString() {
            switch (this.cmd) {
                case 1:
                    return "add";
                case 2:
                    return "rm";
                case 3:
                case 5:
                case 6:
                case 7:
                default:
                    return "??";
                case 4:
                    return "up";
                case 8:
                    return "mv";
            }
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            UpdateOp updateOp = (UpdateOp) o;
            if (this.cmd != updateOp.cmd) {
                return false;
            }
            if (this.cmd == 8 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == updateOp.positionStart && this.positionStart == updateOp.itemCount) {
                return true;
            }
            if (this.itemCount == updateOp.itemCount && this.positionStart == updateOp.positionStart) {
                return this.payload != null ? this.payload.equals(updateOp.payload) : updateOp.payload == null;
            }
            return false;
        }

        public int hashCode() {
            return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
        }
    }

    @Override // android.support.v7.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int cmd, int positionStart, int itemCount, Object payload) {
        UpdateOp acquire = this.mUpdateOpPool.acquire();
        if (acquire == null) {
            return new UpdateOp(cmd, positionStart, itemCount, payload);
        }
        acquire.cmd = cmd;
        acquire.positionStart = positionStart;
        acquire.itemCount = itemCount;
        acquire.payload = payload;
        return acquire;
    }

    @Override // android.support.v7.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp op) {
        if (!this.mDisableRecycler) {
            op.payload = null;
            this.mUpdateOpPool.release(op);
        }
    }

    void recycleUpdateOpsAndClearList(List<UpdateOp> ops) {
        int size = ops.size();
        for (int i = 0; i < size; i++) {
            recycleUpdateOp(ops.get(i));
        }
        ops.clear();
    }
}
