package android.support.v7.util;

import android.support.annotation.UiThread;
import android.support.annotation.WorkerThread;
import android.support.v7.util.ThreadUtil;
import android.support.v7.util.TileList;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AsyncListUtil<T> {
    private static final boolean DEBUG = false;
    private static final String TAG = "AsyncListUtil";
    private boolean mAllowScrollHints;
    final ThreadUtil.BackgroundCallback<T> mBackgroundProxy;
    final DataCallback<T> mDataCallback;
    final ThreadUtil.MainThreadCallback<T> mMainThreadProxy;
    final Class<T> mTClass;
    final TileList<T> mTileList;
    final int mTileSize;
    final ViewCallback mViewCallback;
    final int[] mTmpRange = new int[2];
    final int[] mPrevRange = new int[2];
    final int[] mTmpRangeExtended = new int[2];
    private int mScrollHint = 0;
    private int mItemCount = 0;
    int mDisplayedGeneration = 0;
    int mRequestedGeneration = this.mDisplayedGeneration;
    private final SparseIntArray mMissingPositions = new SparseIntArray();
    private final ThreadUtil.MainThreadCallback<T> mMainThreadCallback = new ThreadUtil.MainThreadCallback<T>() { // from class: android.support.v7.util.AsyncListUtil.1
        @Override // android.support.v7.util.ThreadUtil.MainThreadCallback
        public void updateItemCount(int generation, int itemCount) {
            if (isRequestedGeneration(generation)) {
                AsyncListUtil.this.mItemCount = itemCount;
                AsyncListUtil.this.mViewCallback.onDataRefresh();
                AsyncListUtil.this.mDisplayedGeneration = AsyncListUtil.this.mRequestedGeneration;
                recycleAllTiles();
                AsyncListUtil.this.mAllowScrollHints = false;
                AsyncListUtil.this.updateRange();
            }
        }

        @Override // android.support.v7.util.ThreadUtil.MainThreadCallback
        public void addTile(int generation, TileList.Tile<T> tile) {
            if (!isRequestedGeneration(generation)) {
                AsyncListUtil.this.mBackgroundProxy.recycleTile(tile);
                return;
            }
            TileList.Tile<T> addOrReplace = AsyncListUtil.this.mTileList.addOrReplace(tile);
            if (addOrReplace != null) {
                Log.e(AsyncListUtil.TAG, "duplicate tile @" + addOrReplace.mStartPosition);
                AsyncListUtil.this.mBackgroundProxy.recycleTile(addOrReplace);
            }
            int i = tile.mItemCount + tile.mStartPosition;
            int i2 = 0;
            while (i2 < AsyncListUtil.this.mMissingPositions.size()) {
                int keyAt = AsyncListUtil.this.mMissingPositions.keyAt(i2);
                if (tile.mStartPosition <= keyAt && keyAt < i) {
                    AsyncListUtil.this.mMissingPositions.removeAt(i2);
                    AsyncListUtil.this.mViewCallback.onItemLoaded(keyAt);
                } else {
                    i2++;
                }
            }
        }

        @Override // android.support.v7.util.ThreadUtil.MainThreadCallback
        public void removeTile(int generation, int position) {
            if (isRequestedGeneration(generation)) {
                TileList.Tile<T> removeAtPos = AsyncListUtil.this.mTileList.removeAtPos(position);
                if (removeAtPos == null) {
                    Log.e(AsyncListUtil.TAG, "tile not found @" + position);
                } else {
                    AsyncListUtil.this.mBackgroundProxy.recycleTile(removeAtPos);
                }
            }
        }

        private void recycleAllTiles() {
            for (int i = 0; i < AsyncListUtil.this.mTileList.size(); i++) {
                AsyncListUtil.this.mBackgroundProxy.recycleTile(AsyncListUtil.this.mTileList.getAtIndex(i));
            }
            AsyncListUtil.this.mTileList.clear();
        }

        private boolean isRequestedGeneration(int generation) {
            return generation == AsyncListUtil.this.mRequestedGeneration;
        }
    };
    private final ThreadUtil.BackgroundCallback<T> mBackgroundCallback = new ThreadUtil.BackgroundCallback<T>() { // from class: android.support.v7.util.AsyncListUtil.2
        private int mFirstRequiredTileStart;
        private int mGeneration;
        private int mItemCount;
        private int mLastRequiredTileStart;
        final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
        private TileList.Tile<T> mRecycledRoot;

        @Override // android.support.v7.util.ThreadUtil.BackgroundCallback
        public void refresh(int generation) {
            this.mGeneration = generation;
            this.mLoadedTiles.clear();
            this.mItemCount = AsyncListUtil.this.mDataCallback.refreshData();
            AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
        }

        @Override // android.support.v7.util.ThreadUtil.BackgroundCallback
        public void updateRange(int rangeStart, int rangeEnd, int extRangeStart, int extRangeEnd, int scrollHint) {
            if (rangeStart <= rangeEnd) {
                int tileStart = getTileStart(rangeStart);
                int tileStart2 = getTileStart(rangeEnd);
                this.mFirstRequiredTileStart = getTileStart(extRangeStart);
                this.mLastRequiredTileStart = getTileStart(extRangeEnd);
                if (scrollHint == 1) {
                    requestTiles(this.mFirstRequiredTileStart, tileStart2, scrollHint, true);
                    requestTiles(AsyncListUtil.this.mTileSize + tileStart2, this.mLastRequiredTileStart, scrollHint, false);
                } else {
                    requestTiles(tileStart, this.mLastRequiredTileStart, scrollHint, false);
                    requestTiles(this.mFirstRequiredTileStart, tileStart - AsyncListUtil.this.mTileSize, scrollHint, true);
                }
            }
        }

        private int getTileStart(int position) {
            return position - (position % AsyncListUtil.this.mTileSize);
        }

        private void requestTiles(int firstTileStart, int lastTileStart, int scrollHint, boolean backwards) {
            int i = firstTileStart;
            while (i <= lastTileStart) {
                AsyncListUtil.this.mBackgroundProxy.loadTile(backwards ? (lastTileStart + firstTileStart) - i : i, scrollHint);
                i += AsyncListUtil.this.mTileSize;
            }
        }

        @Override // android.support.v7.util.ThreadUtil.BackgroundCallback
        public void loadTile(int position, int scrollHint) {
            if (!isTileLoaded(position)) {
                TileList.Tile<T> acquireTile = acquireTile();
                acquireTile.mStartPosition = position;
                acquireTile.mItemCount = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - acquireTile.mStartPosition);
                AsyncListUtil.this.mDataCallback.fillData(acquireTile.mItems, acquireTile.mStartPosition, acquireTile.mItemCount);
                flushTileCache(scrollHint);
                addTile(acquireTile);
            }
        }

        @Override // android.support.v7.util.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            AsyncListUtil.this.mDataCallback.recycleData(tile.mItems, tile.mItemCount);
            tile.mNext = this.mRecycledRoot;
            this.mRecycledRoot = tile;
        }

        private TileList.Tile<T> acquireTile() {
            if (this.mRecycledRoot == null) {
                return new TileList.Tile<>(AsyncListUtil.this.mTClass, AsyncListUtil.this.mTileSize);
            }
            TileList.Tile<T> tile = this.mRecycledRoot;
            this.mRecycledRoot = this.mRecycledRoot.mNext;
            return tile;
        }

        private boolean isTileLoaded(int position) {
            return this.mLoadedTiles.get(position);
        }

        private void addTile(TileList.Tile<T> tile) {
            this.mLoadedTiles.put(tile.mStartPosition, true);
            AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, tile);
        }

        private void removeTile(int position) {
            this.mLoadedTiles.delete(position);
            AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, position);
        }

        private void flushTileCache(int scrollHint) {
            int maxCachedTiles = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
            while (this.mLoadedTiles.size() >= maxCachedTiles) {
                int keyAt = this.mLoadedTiles.keyAt(0);
                int keyAt2 = this.mLoadedTiles.keyAt(this.mLoadedTiles.size() - 1);
                int i = this.mFirstRequiredTileStart - keyAt;
                int i2 = keyAt2 - this.mLastRequiredTileStart;
                if (i > 0 && (i >= i2 || scrollHint == 2)) {
                    removeTile(keyAt);
                } else {
                    if (i2 <= 0) {
                        return;
                    }
                    if (i < i2 || scrollHint == 1) {
                        removeTile(keyAt2);
                    } else {
                        return;
                    }
                }
            }
        }

        private void log(String s, Object... args) {
            Log.d(AsyncListUtil.TAG, "[BKGR] " + String.format(s, args));
        }
    };

    private void log(String s, Object... args) {
        Log.d(TAG, "[MAIN] " + String.format(s, args));
    }

    public AsyncListUtil(Class<T> klass, int tileSize, DataCallback<T> dataCallback, ViewCallback viewCallback) {
        this.mTClass = klass;
        this.mTileSize = tileSize;
        this.mDataCallback = dataCallback;
        this.mViewCallback = viewCallback;
        this.mTileList = new TileList<>(this.mTileSize);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(this.mMainThreadCallback);
        this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(this.mBackgroundCallback);
        refresh();
    }

    private boolean isRefreshPending() {
        return this.mRequestedGeneration != this.mDisplayedGeneration;
    }

    public void onRangeChanged() {
        if (!isRefreshPending()) {
            updateRange();
            this.mAllowScrollHints = true;
        }
    }

    public void refresh() {
        this.mMissingPositions.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.mBackgroundProxy;
        int i = this.mRequestedGeneration + 1;
        this.mRequestedGeneration = i;
        backgroundCallback.refresh(i);
    }

    public T getItem(int position) {
        if (position < 0 || position >= this.mItemCount) {
            throw new IndexOutOfBoundsException(position + " is not within 0 and " + this.mItemCount);
        }
        T itemAt = this.mTileList.getItemAt(position);
        if (itemAt == null && !isRefreshPending()) {
            this.mMissingPositions.put(position, 0);
        }
        return itemAt;
    }

    public int getItemCount() {
        return this.mItemCount;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRange() {
        this.mViewCallback.getItemRangeInto(this.mTmpRange);
        if (this.mTmpRange[0] <= this.mTmpRange[1] && this.mTmpRange[0] >= 0 && this.mTmpRange[1] < this.mItemCount) {
            if (!this.mAllowScrollHints) {
                this.mScrollHint = 0;
            } else if (this.mTmpRange[0] > this.mPrevRange[1] || this.mPrevRange[0] > this.mTmpRange[1]) {
                this.mScrollHint = 0;
            } else if (this.mTmpRange[0] < this.mPrevRange[0]) {
                this.mScrollHint = 1;
            } else if (this.mTmpRange[0] > this.mPrevRange[0]) {
                this.mScrollHint = 2;
            }
            this.mPrevRange[0] = this.mTmpRange[0];
            this.mPrevRange[1] = this.mTmpRange[1];
            this.mViewCallback.extendRangeInto(this.mTmpRange, this.mTmpRangeExtended, this.mScrollHint);
            this.mTmpRangeExtended[0] = Math.min(this.mTmpRange[0], Math.max(this.mTmpRangeExtended[0], 0));
            this.mTmpRangeExtended[1] = Math.max(this.mTmpRange[1], Math.min(this.mTmpRangeExtended[1], this.mItemCount - 1));
            this.mBackgroundProxy.updateRange(this.mTmpRange[0], this.mTmpRange[1], this.mTmpRangeExtended[0], this.mTmpRangeExtended[1], this.mScrollHint);
        }
    }

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(T[] tArr, int i, int i2);

        @WorkerThread
        public abstract int refreshData();

        @WorkerThread
        public void recycleData(T[] data, int itemCount) {
        }

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public abstract void getItemRangeInto(int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i);

        @UiThread
        public void extendRangeInto(int[] range, int[] outRange, int scrollHint) {
            int i = (range[1] - range[0]) + 1;
            int i2 = i / 2;
            outRange[0] = range[0] - (scrollHint == 1 ? i : i2);
            int i3 = range[1];
            if (scrollHint != 2) {
                i = i2;
            }
            outRange[1] = i3 + i;
        }
    }
}
