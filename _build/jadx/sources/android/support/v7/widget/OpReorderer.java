package android.support.v7.widget;

import android.support.v7.widget.AdapterHelper;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class OpReorderer {
    final Callback mCallback;

    interface Callback {
        AdapterHelper.UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj);

        void recycleUpdateOp(AdapterHelper.UpdateOp updateOp);
    }

    public OpReorderer(Callback callback) {
        this.mCallback = callback;
    }

    void reorderOps(List<AdapterHelper.UpdateOp> ops) {
        while (true) {
            int lastMoveOutOfOrder = getLastMoveOutOfOrder(ops);
            if (lastMoveOutOfOrder != -1) {
                swapMoveOp(ops, lastMoveOutOfOrder, lastMoveOutOfOrder + 1);
            } else {
                return;
            }
        }
    }

    private void swapMoveOp(List<AdapterHelper.UpdateOp> list, int badMove, int next) {
        AdapterHelper.UpdateOp updateOp = list.get(badMove);
        AdapterHelper.UpdateOp updateOp2 = list.get(next);
        switch (updateOp2.cmd) {
            case 1:
                swapMoveAdd(list, badMove, updateOp, next, updateOp2);
                break;
            case 2:
                swapMoveRemove(list, badMove, updateOp, next, updateOp2);
                break;
            case 4:
                swapMoveUpdate(list, badMove, updateOp, next, updateOp2);
                break;
        }
    }

    void swapMoveRemove(List<AdapterHelper.UpdateOp> list, int movePos, AdapterHelper.UpdateOp moveOp, int removePos, AdapterHelper.UpdateOp removeOp) {
        boolean z;
        AdapterHelper.UpdateOp updateOp;
        boolean z2 = false;
        if (moveOp.positionStart < moveOp.itemCount) {
            z = removeOp.positionStart == moveOp.positionStart && removeOp.itemCount == moveOp.itemCount - moveOp.positionStart;
        } else if (removeOp.positionStart == moveOp.itemCount + 1 && removeOp.itemCount == moveOp.positionStart - moveOp.itemCount) {
            z2 = true;
            z = true;
        } else {
            z = false;
            z2 = true;
        }
        if (moveOp.itemCount < removeOp.positionStart) {
            removeOp.positionStart--;
        } else if (moveOp.itemCount < removeOp.positionStart + removeOp.itemCount) {
            removeOp.itemCount--;
            moveOp.cmd = 2;
            moveOp.itemCount = 1;
            if (removeOp.itemCount == 0) {
                list.remove(removePos);
                this.mCallback.recycleUpdateOp(removeOp);
                return;
            }
            return;
        }
        if (moveOp.positionStart <= removeOp.positionStart) {
            removeOp.positionStart++;
            updateOp = null;
        } else if (moveOp.positionStart < removeOp.positionStart + removeOp.itemCount) {
            updateOp = this.mCallback.obtainUpdateOp(2, moveOp.positionStart + 1, (removeOp.positionStart + removeOp.itemCount) - moveOp.positionStart, null);
            removeOp.itemCount = moveOp.positionStart - removeOp.positionStart;
        } else {
            updateOp = null;
        }
        if (z) {
            list.set(movePos, removeOp);
            list.remove(removePos);
            this.mCallback.recycleUpdateOp(moveOp);
            return;
        }
        if (z2) {
            if (updateOp != null) {
                if (moveOp.positionStart > updateOp.positionStart) {
                    moveOp.positionStart -= updateOp.itemCount;
                }
                if (moveOp.itemCount > updateOp.positionStart) {
                    moveOp.itemCount -= updateOp.itemCount;
                }
            }
            if (moveOp.positionStart > removeOp.positionStart) {
                moveOp.positionStart -= removeOp.itemCount;
            }
            if (moveOp.itemCount > removeOp.positionStart) {
                moveOp.itemCount -= removeOp.itemCount;
            }
        } else {
            if (updateOp != null) {
                if (moveOp.positionStart >= updateOp.positionStart) {
                    moveOp.positionStart -= updateOp.itemCount;
                }
                if (moveOp.itemCount >= updateOp.positionStart) {
                    moveOp.itemCount -= updateOp.itemCount;
                }
            }
            if (moveOp.positionStart >= removeOp.positionStart) {
                moveOp.positionStart -= removeOp.itemCount;
            }
            if (moveOp.itemCount >= removeOp.positionStart) {
                moveOp.itemCount -= removeOp.itemCount;
            }
        }
        list.set(movePos, removeOp);
        if (moveOp.positionStart != moveOp.itemCount) {
            list.set(removePos, moveOp);
        } else {
            list.remove(removePos);
        }
        if (updateOp != null) {
            list.add(movePos, updateOp);
        }
    }

    private void swapMoveAdd(List<AdapterHelper.UpdateOp> list, int move, AdapterHelper.UpdateOp moveOp, int add, AdapterHelper.UpdateOp addOp) {
        int i = 0;
        if (moveOp.itemCount < addOp.positionStart) {
            i = -1;
        }
        if (moveOp.positionStart < addOp.positionStart) {
            i++;
        }
        if (addOp.positionStart <= moveOp.positionStart) {
            moveOp.positionStart += addOp.itemCount;
        }
        if (addOp.positionStart <= moveOp.itemCount) {
            moveOp.itemCount += addOp.itemCount;
        }
        addOp.positionStart = i + addOp.positionStart;
        list.set(move, addOp);
        list.set(add, moveOp);
    }

    void swapMoveUpdate(List<AdapterHelper.UpdateOp> list, int move, AdapterHelper.UpdateOp moveOp, int update, AdapterHelper.UpdateOp updateOp) {
        AdapterHelper.UpdateOp updateOp2;
        AdapterHelper.UpdateOp updateOp3 = null;
        if (moveOp.itemCount < updateOp.positionStart) {
            updateOp.positionStart--;
            updateOp2 = null;
        } else if (moveOp.itemCount < updateOp.positionStart + updateOp.itemCount) {
            updateOp.itemCount--;
            updateOp2 = this.mCallback.obtainUpdateOp(4, moveOp.positionStart, 1, updateOp.payload);
        } else {
            updateOp2 = null;
        }
        if (moveOp.positionStart <= updateOp.positionStart) {
            updateOp.positionStart++;
        } else if (moveOp.positionStart < updateOp.positionStart + updateOp.itemCount) {
            int i = (updateOp.positionStart + updateOp.itemCount) - moveOp.positionStart;
            updateOp3 = this.mCallback.obtainUpdateOp(4, moveOp.positionStart + 1, i, updateOp.payload);
            updateOp.itemCount -= i;
        }
        list.set(update, moveOp);
        if (updateOp.itemCount > 0) {
            list.set(move, updateOp);
        } else {
            list.remove(move);
            this.mCallback.recycleUpdateOp(updateOp);
        }
        if (updateOp2 != null) {
            list.add(move, updateOp2);
        }
        if (updateOp3 != null) {
            list.add(move, updateOp3);
        }
    }

    private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> list) {
        boolean z;
        boolean z2 = false;
        int size = list.size() - 1;
        while (size >= 0) {
            if (list.get(size).cmd == 8) {
                if (z2) {
                    return size;
                }
                z = z2;
            } else {
                z = true;
            }
            size--;
            z2 = z;
        }
        return -1;
    }
}
