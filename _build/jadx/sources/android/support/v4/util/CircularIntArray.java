package android.support.v4.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class CircularIntArray {
    private int mCapacityBitmask;
    private int[] mElements;
    private int mHead;
    private int mTail;

    private void doubleCapacity() {
        int length = this.mElements.length;
        int i = length - this.mHead;
        int i2 = length << 1;
        if (i2 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        int[] iArr = new int[i2];
        System.arraycopy(this.mElements, this.mHead, iArr, 0, i);
        System.arraycopy(this.mElements, 0, iArr, i, this.mHead);
        this.mElements = iArr;
        this.mHead = 0;
        this.mTail = length;
        this.mCapacityBitmask = i2 - 1;
    }

    public CircularIntArray() {
        this(8);
    }

    public CircularIntArray(int minCapacity) {
        if (minCapacity < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (minCapacity > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        minCapacity = Integer.bitCount(minCapacity) != 1 ? Integer.highestOneBit(minCapacity - 1) << 1 : minCapacity;
        this.mCapacityBitmask = minCapacity - 1;
        this.mElements = new int[minCapacity];
    }

    public void addFirst(int e) {
        this.mHead = (this.mHead - 1) & this.mCapacityBitmask;
        this.mElements[this.mHead] = e;
        if (this.mHead == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(int e) {
        this.mElements[this.mTail] = e;
        this.mTail = (this.mTail + 1) & this.mCapacityBitmask;
        if (this.mTail == this.mHead) {
            doubleCapacity();
        }
    }

    public int popFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = this.mElements[this.mHead];
        this.mHead = (this.mHead + 1) & this.mCapacityBitmask;
        return i;
    }

    public int popLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = (this.mTail - 1) & this.mCapacityBitmask;
        int i2 = this.mElements[i];
        this.mTail = i;
        return i2;
    }

    public void clear() {
        this.mTail = this.mHead;
    }

    public void removeFromStart(int numOfElements) {
        if (numOfElements > 0) {
            if (numOfElements > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            this.mHead = (this.mHead + numOfElements) & this.mCapacityBitmask;
        }
    }

    public void removeFromEnd(int numOfElements) {
        if (numOfElements > 0) {
            if (numOfElements > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            this.mTail = (this.mTail - numOfElements) & this.mCapacityBitmask;
        }
    }

    public int getFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mHead];
    }

    public int getLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[(this.mTail - 1) & this.mCapacityBitmask];
    }

    public int get(int n) {
        if (n < 0 || n >= size()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[(this.mHead + n) & this.mCapacityBitmask];
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }

    public boolean isEmpty() {
        return this.mHead == this.mTail;
    }
}
