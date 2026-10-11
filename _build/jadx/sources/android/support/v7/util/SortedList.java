package android.support.v7.util;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SortedList<T> {
    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    T[] mData;
    private int mMergedSize;
    private T[] mOldData;
    private int mOldDataSize;
    private int mOldDataStart;
    private int mSize;
    private final Class<T> mTClass;

    public static abstract class Callback<T2> implements Comparator<T2> {
        public abstract boolean areContentsTheSame(T2 t2, T2 t22);

        public abstract boolean areItemsTheSame(T2 t2, T2 t22);

        @Override // java.util.Comparator
        public abstract int compare(T2 t2, T2 t22);

        public abstract void onChanged(int i, int i2);

        public abstract void onInserted(int i, int i2);

        public abstract void onMoved(int i, int i2);

        public abstract void onRemoved(int i, int i2);
    }

    public SortedList(Class<T> klass, Callback<T> callback) {
        this(klass, callback, 10);
    }

    public SortedList(Class<T> cls, Callback<T> callback, int i) {
        this.mTClass = cls;
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        this.mCallback = callback;
        this.mSize = 0;
    }

    public int size() {
        return this.mSize;
    }

    public int add(T item) {
        throwIfMerging();
        return add(item, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(T[] items, boolean mayModifyInput) {
        throwIfMerging();
        if (items.length != 0) {
            if (mayModifyInput) {
                addAllInternal(items);
                return;
            }
            Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.mTClass, items.length);
            System.arraycopy(items, 0, objArr, 0, items.length);
            addAllInternal(objArr);
        }
    }

    public void addAll(T... items) {
        addAll(items, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(Collection<T> items) {
        addAll(items.toArray((Object[]) Array.newInstance((Class<?>) this.mTClass, items.size())), true);
    }

    private void addAllInternal(T[] newItems) {
        boolean z = !(this.mCallback instanceof BatchedCallback);
        if (z) {
            beginBatchedUpdates();
        }
        this.mOldData = this.mData;
        this.mOldDataStart = 0;
        this.mOldDataSize = this.mSize;
        Arrays.sort(newItems, this.mCallback);
        int deduplicate = deduplicate(newItems);
        if (this.mSize == 0) {
            this.mData = newItems;
            this.mSize = deduplicate;
            this.mMergedSize = deduplicate;
            this.mCallback.onInserted(0, deduplicate);
        } else {
            merge(newItems, deduplicate);
        }
        this.mOldData = null;
        if (z) {
            endBatchedUpdates();
        }
    }

    private int deduplicate(T[] items) {
        if (items.length == 0) {
            throw new IllegalArgumentException("Input array must be non-empty");
        }
        int i = 0;
        int i2 = 1;
        for (int i3 = 1; i3 < items.length; i3++) {
            T t = items[i3];
            int compare = this.mCallback.compare(items[i], t);
            if (compare > 0) {
                throw new IllegalArgumentException("Input must be sorted in ascending order.");
            }
            if (compare == 0) {
                int findSameItem = findSameItem(t, items, i, i2);
                if (findSameItem != -1) {
                    items[findSameItem] = t;
                } else {
                    if (i2 != i3) {
                        items[i2] = t;
                    }
                    i2++;
                }
            } else {
                if (i2 != i3) {
                    items[i2] = t;
                }
                i = i2;
                i2++;
            }
        }
        return i2;
    }

    private int findSameItem(T item, T[] items, int from, int to) {
        for (int i = from; i < to; i++) {
            if (this.mCallback.areItemsTheSame(items[i], item)) {
                return i;
            }
        }
        return -1;
    }

    private void merge(T[] tArr, int i) {
        this.mData = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, this.mSize + i + 10));
        this.mMergedSize = 0;
        int i2 = 0;
        while (true) {
            if (this.mOldDataStart < this.mOldDataSize || i2 < i) {
                if (this.mOldDataStart == this.mOldDataSize) {
                    int i3 = i - i2;
                    System.arraycopy(tArr, i2, this.mData, this.mMergedSize, i3);
                    this.mMergedSize += i3;
                    this.mSize += i3;
                    this.mCallback.onInserted(this.mMergedSize - i3, i3);
                    return;
                }
                if (i2 == i) {
                    int i4 = this.mOldDataSize - this.mOldDataStart;
                    System.arraycopy(this.mOldData, this.mOldDataStart, this.mData, this.mMergedSize, i4);
                    this.mMergedSize = i4 + this.mMergedSize;
                    return;
                }
                T t = this.mOldData[this.mOldDataStart];
                T t2 = tArr[i2];
                int compare = this.mCallback.compare(t, t2);
                if (compare > 0) {
                    T[] tArr2 = this.mData;
                    int i5 = this.mMergedSize;
                    this.mMergedSize = i5 + 1;
                    tArr2[i5] = t2;
                    this.mSize++;
                    i2++;
                    this.mCallback.onInserted(this.mMergedSize - 1, 1);
                } else if (compare == 0 && this.mCallback.areItemsTheSame(t, t2)) {
                    T[] tArr3 = this.mData;
                    int i6 = this.mMergedSize;
                    this.mMergedSize = i6 + 1;
                    tArr3[i6] = t2;
                    i2++;
                    this.mOldDataStart++;
                    if (!this.mCallback.areContentsTheSame(t, t2)) {
                        this.mCallback.onChanged(this.mMergedSize - 1, 1);
                    }
                } else {
                    T[] tArr4 = this.mData;
                    int i7 = this.mMergedSize;
                    this.mMergedSize = i7 + 1;
                    tArr4[i7] = t;
                    this.mOldDataStart++;
                }
            } else {
                return;
            }
        }
    }

    private void throwIfMerging() {
        if (this.mOldData != null) {
            throw new IllegalStateException("Cannot call this method from within addAll");
        }
    }

    public void beginBatchedUpdates() {
        throwIfMerging();
        if (!(this.mCallback instanceof BatchedCallback)) {
            if (this.mBatchedCallback == null) {
                this.mBatchedCallback = new BatchedCallback(this.mCallback);
            }
            this.mCallback = this.mBatchedCallback;
        }
    }

    public void endBatchedUpdates() {
        throwIfMerging();
        if (this.mCallback instanceof BatchedCallback) {
            ((BatchedCallback) this.mCallback).dispatchLastEvent();
        }
        if (this.mCallback != this.mBatchedCallback) {
            return;
        }
        this.mCallback = this.mBatchedCallback.mWrappedCallback;
    }

    private int add(T item, boolean notify) {
        int i = 0;
        int findIndexOf = findIndexOf(item, this.mData, 0, this.mSize, 1);
        if (findIndexOf != -1) {
            if (findIndexOf < this.mSize) {
                T t = this.mData[findIndexOf];
                if (this.mCallback.areItemsTheSame(t, item)) {
                    if (this.mCallback.areContentsTheSame(t, item)) {
                        this.mData[findIndexOf] = item;
                        return findIndexOf;
                    }
                    this.mData[findIndexOf] = item;
                    this.mCallback.onChanged(findIndexOf, 1);
                    return findIndexOf;
                }
            }
            i = findIndexOf;
        }
        addToData(i, item);
        if (notify) {
            this.mCallback.onInserted(i, 1);
        }
        return i;
    }

    public boolean remove(T item) {
        throwIfMerging();
        return remove(item, true);
    }

    public T removeItemAt(int index) {
        throwIfMerging();
        T t = get(index);
        removeItemAtIndex(index, true);
        return t;
    }

    private boolean remove(T item, boolean notify) {
        int findIndexOf = findIndexOf(item, this.mData, 0, this.mSize, 2);
        if (findIndexOf == -1) {
            return false;
        }
        removeItemAtIndex(findIndexOf, notify);
        return true;
    }

    private void removeItemAtIndex(int index, boolean notify) {
        System.arraycopy(this.mData, index + 1, this.mData, index, (this.mSize - index) - 1);
        this.mSize--;
        this.mData[this.mSize] = null;
        if (notify) {
            this.mCallback.onRemoved(index, 1);
        }
    }

    public void updateItemAt(int index, T item) {
        throwIfMerging();
        T t = get(index);
        boolean z = t == item || !this.mCallback.areContentsTheSame(t, item);
        if (t != item && this.mCallback.compare(t, item) == 0) {
            this.mData[index] = item;
            if (z) {
                this.mCallback.onChanged(index, 1);
                return;
            }
            return;
        }
        if (z) {
            this.mCallback.onChanged(index, 1);
        }
        removeItemAtIndex(index, false);
        int add = add(item, false);
        if (index != add) {
            this.mCallback.onMoved(index, add);
        }
    }

    public void recalculatePositionOfItemAt(int index) {
        throwIfMerging();
        T t = get(index);
        removeItemAtIndex(index, false);
        int add = add(t, false);
        if (index != add) {
            this.mCallback.onMoved(index, add);
        }
    }

    public T get(int index) throws IndexOutOfBoundsException {
        if (index >= this.mSize || index < 0) {
            throw new IndexOutOfBoundsException("Asked to get item at " + index + " but size is " + this.mSize);
        }
        return (this.mOldData == null || index < this.mMergedSize) ? this.mData[index] : this.mOldData[(index - this.mMergedSize) + this.mOldDataStart];
    }

    public int indexOf(T item) {
        if (this.mOldData != null) {
            int findIndexOf = findIndexOf(item, this.mData, 0, this.mMergedSize, 4);
            if (findIndexOf == -1) {
                int findIndexOf2 = findIndexOf(item, this.mOldData, this.mOldDataStart, this.mOldDataSize, 4);
                if (findIndexOf2 != -1) {
                    return (findIndexOf2 - this.mOldDataStart) + this.mMergedSize;
                }
                return -1;
            }
            return findIndexOf;
        }
        return findIndexOf(item, this.mData, 0, this.mSize, 4);
    }

    private int findIndexOf(T item, T[] mData, int left, int right, int reason) {
        int right2 = right;
        while (left < right2) {
            int right3 = (left + right2) / 2;
            T t = mData[right3];
            int compare = this.mCallback.compare(t, item);
            if (compare < 0) {
                left = right3 + 1;
                right3 = right2;
            } else if (compare == 0) {
                if (!this.mCallback.areItemsTheSame(t, item)) {
                    int linearEqualitySearch = linearEqualitySearch(item, right3, left, right2);
                    return (reason == 1 && linearEqualitySearch == -1) ? right3 : linearEqualitySearch;
                }
                return right3;
            }
            right2 = right3;
        }
        if (reason != 1) {
            left = -1;
        }
        return left;
    }

    private int linearEqualitySearch(T item, int middle, int left, int right) {
        for (int i = middle - 1; i >= left; i--) {
            T t = this.mData[i];
            if (this.mCallback.compare(t, item) != 0) {
                break;
            }
            if (this.mCallback.areItemsTheSame(t, item)) {
                return i;
            }
        }
        for (int i2 = middle + 1; i2 < right; i2++) {
            T t2 = this.mData[i2];
            if (this.mCallback.compare(t2, item) != 0) {
                break;
            }
            if (this.mCallback.areItemsTheSame(t2, item)) {
                return i2;
            }
        }
        return -1;
    }

    private void addToData(int i, T t) {
        if (i > this.mSize) {
            throw new IndexOutOfBoundsException("cannot add item to " + i + " because size is " + this.mSize);
        }
        if (this.mSize == this.mData.length) {
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mTClass, this.mData.length + 10));
            System.arraycopy(this.mData, 0, tArr, 0, i);
            tArr[i] = t;
            System.arraycopy(this.mData, i, tArr, i + 1, this.mSize - i);
            this.mData = tArr;
        } else {
            System.arraycopy(this.mData, i, this.mData, i + 1, this.mSize - i);
            this.mData[i] = t;
        }
        this.mSize++;
    }

    public void clear() {
        throwIfMerging();
        if (this.mSize != 0) {
            int i = this.mSize;
            Arrays.fill(this.mData, 0, i, (Object) null);
            this.mSize = 0;
            this.mCallback.onRemoved(0, i);
        }
    }

    public static class BatchedCallback<T2> extends Callback<T2> {
        static final int TYPE_ADD = 1;
        static final int TYPE_CHANGE = 3;
        static final int TYPE_MOVE = 4;
        static final int TYPE_NONE = 0;
        static final int TYPE_REMOVE = 2;
        private final Callback<T2> mWrappedCallback;
        int mLastEventType = 0;
        int mLastEventPosition = -1;
        int mLastEventCount = -1;

        public BatchedCallback(Callback<T2> wrappedCallback) {
            this.mWrappedCallback = wrappedCallback;
        }

        @Override // android.support.v7.util.SortedList.Callback, java.util.Comparator
        public int compare(T2 o1, T2 o2) {
            return this.mWrappedCallback.compare(o1, o2);
        }

        @Override // android.support.v7.util.SortedList.Callback
        public void onInserted(int position, int count) {
            if (this.mLastEventType == 1 && position >= this.mLastEventPosition && position <= this.mLastEventPosition + this.mLastEventCount) {
                this.mLastEventCount += count;
                this.mLastEventPosition = Math.min(position, this.mLastEventPosition);
            } else {
                dispatchLastEvent();
                this.mLastEventPosition = position;
                this.mLastEventCount = count;
                this.mLastEventType = 1;
            }
        }

        @Override // android.support.v7.util.SortedList.Callback
        public void onRemoved(int position, int count) {
            if (this.mLastEventType == 2 && this.mLastEventPosition == position) {
                this.mLastEventCount += count;
                return;
            }
            dispatchLastEvent();
            this.mLastEventPosition = position;
            this.mLastEventCount = count;
            this.mLastEventType = 2;
        }

        @Override // android.support.v7.util.SortedList.Callback
        public void onMoved(int fromPosition, int toPosition) {
            dispatchLastEvent();
            this.mWrappedCallback.onMoved(fromPosition, toPosition);
        }

        @Override // android.support.v7.util.SortedList.Callback
        public void onChanged(int position, int count) {
            if (this.mLastEventType == 3 && position <= this.mLastEventPosition + this.mLastEventCount && position + count >= this.mLastEventPosition) {
                int i = this.mLastEventPosition + this.mLastEventCount;
                this.mLastEventPosition = Math.min(position, this.mLastEventPosition);
                this.mLastEventCount = Math.max(i, position + count) - this.mLastEventPosition;
            } else {
                dispatchLastEvent();
                this.mLastEventPosition = position;
                this.mLastEventCount = count;
                this.mLastEventType = 3;
            }
        }

        @Override // android.support.v7.util.SortedList.Callback
        public boolean areContentsTheSame(T2 oldItem, T2 newItem) {
            return this.mWrappedCallback.areContentsTheSame(oldItem, newItem);
        }

        @Override // android.support.v7.util.SortedList.Callback
        public boolean areItemsTheSame(T2 item1, T2 item2) {
            return this.mWrappedCallback.areItemsTheSame(item1, item2);
        }

        public void dispatchLastEvent() {
            if (this.mLastEventType != 0) {
                switch (this.mLastEventType) {
                    case 1:
                        this.mWrappedCallback.onInserted(this.mLastEventPosition, this.mLastEventCount);
                        break;
                    case 2:
                        this.mWrappedCallback.onRemoved(this.mLastEventPosition, this.mLastEventCount);
                        break;
                    case 3:
                        this.mWrappedCallback.onChanged(this.mLastEventPosition, this.mLastEventCount);
                        break;
                }
                this.mLastEventType = 0;
            }
        }
    }
}
