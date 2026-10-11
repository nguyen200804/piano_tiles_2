package android.support.v4.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    private void doubleCapacity() {
        int length = this.mElements.length;
        int i = length - this.mHead;
        int i2 = length << 1;
        if (i2 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr = new Object[i2];
        System.arraycopy(this.mElements, this.mHead, objArr, 0, i);
        System.arraycopy(this.mElements, 0, objArr, i, this.mHead);
        this.mElements = (E[]) objArr;
        this.mHead = 0;
        this.mTail = length;
        this.mCapacityBitmask = i2 - 1;
    }

    public CircularArray() {
        this(8);
    }

    public CircularArray(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i > 1073741824) {
            throw new IllegalArgumentException("capacity must be <= 2^30");
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        this.mCapacityBitmask = i - 1;
        this.mElements = (E[]) new Object[i];
    }

    public void addFirst(E e) {
        this.mHead = (this.mHead - 1) & this.mCapacityBitmask;
        this.mElements[this.mHead] = e;
        if (this.mHead == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(E e) {
        this.mElements[this.mTail] = e;
        this.mTail = (this.mTail + 1) & this.mCapacityBitmask;
        if (this.mTail == this.mHead) {
            doubleCapacity();
        }
    }

    public E popFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        E e = this.mElements[this.mHead];
        this.mElements[this.mHead] = null;
        this.mHead = (this.mHead + 1) & this.mCapacityBitmask;
        return e;
    }

    public E popLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i = (this.mTail - 1) & this.mCapacityBitmask;
        E e = this.mElements[i];
        this.mElements[i] = null;
        this.mTail = i;
        return e;
    }

    public void clear() {
        removeFromStart(size());
    }

    public void removeFromStart(int numOfElements) {
        if (numOfElements > 0) {
            if (numOfElements > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int length = this.mElements.length;
            if (numOfElements < length - this.mHead) {
                length = this.mHead + numOfElements;
            }
            for (int i = this.mHead; i < length; i++) {
                this.mElements[i] = null;
            }
            int i2 = length - this.mHead;
            int numOfElements2 = numOfElements - i2;
            this.mHead = (i2 + this.mHead) & this.mCapacityBitmask;
            if (numOfElements2 > 0) {
                for (int i3 = 0; i3 < numOfElements2; i3++) {
                    this.mElements[i3] = null;
                }
                this.mHead = numOfElements2;
            }
        }
    }

    public void removeFromEnd(int numOfElements) {
        if (numOfElements > 0) {
            if (numOfElements > size()) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i = 0;
            if (numOfElements < this.mTail) {
                i = this.mTail - numOfElements;
            }
            for (int i2 = i; i2 < this.mTail; i2++) {
                this.mElements[i2] = null;
            }
            int i3 = this.mTail - i;
            int numOfElements2 = numOfElements - i3;
            this.mTail -= i3;
            if (numOfElements2 > 0) {
                this.mTail = this.mElements.length;
                int i4 = this.mTail - numOfElements2;
                for (int i5 = i4; i5 < this.mTail; i5++) {
                    this.mElements[i5] = null;
                }
                this.mTail = i4;
            }
        }
    }

    public E getFirst() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[this.mHead];
    }

    public E getLast() {
        if (this.mHead == this.mTail) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.mElements[(this.mTail - 1) & this.mCapacityBitmask];
    }

    public E get(int n) {
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
