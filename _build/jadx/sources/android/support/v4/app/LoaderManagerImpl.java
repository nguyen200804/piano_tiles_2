package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.SparseArrayCompat;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

/* compiled from: LoaderManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class LoaderManagerImpl extends LoaderManager {
    static boolean DEBUG = false;
    static final String TAG = "LoaderManager";
    boolean mCreatingLoader;
    private FragmentHostCallback mHost;
    boolean mRetaining;
    boolean mRetainingStarted;
    boolean mStarted;
    final String mWho;
    final SparseArrayCompat<LoaderInfo> mLoaders = new SparseArrayCompat<>();
    final SparseArrayCompat<LoaderInfo> mInactiveLoaders = new SparseArrayCompat<>();

    /* compiled from: LoaderManager.java */
    final class LoaderInfo implements Loader.OnLoadCanceledListener<Object>, Loader.OnLoadCompleteListener<Object> {
        final Bundle mArgs;
        LoaderManager.LoaderCallbacks<Object> mCallbacks;
        Object mData;
        boolean mDeliveredData;
        boolean mDestroyed;
        boolean mHaveData;
        final int mId;
        boolean mListenerRegistered;
        Loader<Object> mLoader;
        LoaderInfo mPendingLoader;
        boolean mReportNextStart;
        boolean mRetaining;
        boolean mRetainingStarted;
        boolean mStarted;

        public LoaderInfo(int id, Bundle args, LoaderManager.LoaderCallbacks<Object> callbacks) {
            this.mId = id;
            this.mArgs = args;
            this.mCallbacks = callbacks;
        }

        void start() {
            if (this.mRetaining && this.mRetainingStarted) {
                this.mStarted = true;
                return;
            }
            if (!this.mStarted) {
                this.mStarted = true;
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Starting: " + this);
                }
                if (this.mLoader == null && this.mCallbacks != null) {
                    this.mLoader = this.mCallbacks.onCreateLoader(this.mId, this.mArgs);
                }
                if (this.mLoader != null) {
                    if (this.mLoader.getClass().isMemberClass() && !Modifier.isStatic(this.mLoader.getClass().getModifiers())) {
                        throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.mLoader);
                    }
                    if (!this.mListenerRegistered) {
                        this.mLoader.registerListener(this.mId, this);
                        this.mLoader.registerOnLoadCanceledListener(this);
                        this.mListenerRegistered = true;
                    }
                    this.mLoader.startLoading();
                }
            }
        }

        void retain() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Retaining: " + this);
            }
            this.mRetaining = true;
            this.mRetainingStarted = this.mStarted;
            this.mStarted = false;
            this.mCallbacks = null;
        }

        void finishRetain() {
            if (this.mRetaining) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Finished Retaining: " + this);
                }
                this.mRetaining = false;
                if (this.mStarted != this.mRetainingStarted && !this.mStarted) {
                    stop();
                }
            }
            if (this.mStarted && this.mHaveData && !this.mReportNextStart) {
                callOnLoadFinished(this.mLoader, this.mData);
            }
        }

        void reportStart() {
            if (this.mStarted && this.mReportNextStart) {
                this.mReportNextStart = false;
                if (this.mHaveData) {
                    callOnLoadFinished(this.mLoader, this.mData);
                }
            }
        }

        void stop() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Stopping: " + this);
            }
            this.mStarted = false;
            if (!this.mRetaining && this.mLoader != null && this.mListenerRegistered) {
                this.mListenerRegistered = false;
                this.mLoader.unregisterListener(this);
                this.mLoader.unregisterOnLoadCanceledListener(this);
                this.mLoader.stopLoading();
            }
        }

        void cancel() {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Canceling: " + this);
            }
            if (this.mStarted && this.mLoader != null && this.mListenerRegistered && !this.mLoader.cancelLoad()) {
                onLoadCanceled(this.mLoader);
            }
        }

        void destroy() {
            String str;
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "  Destroying: " + this);
            }
            this.mDestroyed = true;
            boolean z = this.mDeliveredData;
            this.mDeliveredData = false;
            if (this.mCallbacks != null && this.mLoader != null && this.mHaveData && z) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Reseting: " + this);
                }
                if (LoaderManagerImpl.this.mHost != null) {
                    String str2 = LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause;
                    LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = "onLoaderReset";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    this.mCallbacks.onLoaderReset(this.mLoader);
                } finally {
                    if (LoaderManagerImpl.this.mHost != null) {
                        LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = str;
                    }
                }
            }
            this.mCallbacks = null;
            this.mData = null;
            this.mHaveData = false;
            if (this.mLoader != null) {
                if (this.mListenerRegistered) {
                    this.mListenerRegistered = false;
                    this.mLoader.unregisterListener(this);
                    this.mLoader.unregisterOnLoadCanceledListener(this);
                }
                this.mLoader.reset();
            }
            if (this.mPendingLoader != null) {
                this.mPendingLoader.destroy();
            }
        }

        @Override // android.support.v4.content.Loader.OnLoadCanceledListener
        public void onLoadCanceled(Loader<Object> loader) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadCanceled: " + this);
            }
            if (this.mDestroyed) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load canceled -- destroyed");
                }
            } else {
                if (LoaderManagerImpl.this.mLoaders.get(this.mId) != this) {
                    if (LoaderManagerImpl.DEBUG) {
                        Log.v(LoaderManagerImpl.TAG, "  Ignoring load canceled -- not active");
                        return;
                    }
                    return;
                }
                LoaderInfo loaderInfo = this.mPendingLoader;
                if (loaderInfo != null) {
                    if (LoaderManagerImpl.DEBUG) {
                        Log.v(LoaderManagerImpl.TAG, "  Switching to pending loader: " + loaderInfo);
                    }
                    this.mPendingLoader = null;
                    LoaderManagerImpl.this.mLoaders.put(this.mId, null);
                    destroy();
                    LoaderManagerImpl.this.installLoader(loaderInfo);
                }
            }
        }

        @Override // android.support.v4.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(Loader<Object> loader, Object data) {
            if (LoaderManagerImpl.DEBUG) {
                Log.v(LoaderManagerImpl.TAG, "onLoadComplete: " + this);
            }
            if (this.mDestroyed) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load complete -- destroyed");
                    return;
                }
                return;
            }
            if (LoaderManagerImpl.this.mLoaders.get(this.mId) != this) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Ignoring load complete -- not active");
                    return;
                }
                return;
            }
            LoaderInfo loaderInfo = this.mPendingLoader;
            if (loaderInfo != null) {
                if (LoaderManagerImpl.DEBUG) {
                    Log.v(LoaderManagerImpl.TAG, "  Switching to pending loader: " + loaderInfo);
                }
                this.mPendingLoader = null;
                LoaderManagerImpl.this.mLoaders.put(this.mId, null);
                destroy();
                LoaderManagerImpl.this.installLoader(loaderInfo);
                return;
            }
            if (this.mData != data || !this.mHaveData) {
                this.mData = data;
                this.mHaveData = true;
                if (this.mStarted) {
                    callOnLoadFinished(loader, data);
                }
            }
            LoaderInfo loaderInfo2 = LoaderManagerImpl.this.mInactiveLoaders.get(this.mId);
            if (loaderInfo2 != null && loaderInfo2 != this) {
                loaderInfo2.mDeliveredData = false;
                loaderInfo2.destroy();
                LoaderManagerImpl.this.mInactiveLoaders.remove(this.mId);
            }
            if (LoaderManagerImpl.this.mHost != null && !LoaderManagerImpl.this.hasRunningLoaders()) {
                LoaderManagerImpl.this.mHost.mFragmentManager.startPendingDeferredFragments();
            }
        }

        void callOnLoadFinished(Loader<Object> loader, Object data) {
            String str;
            if (this.mCallbacks != null) {
                if (LoaderManagerImpl.this.mHost != null) {
                    String str2 = LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause;
                    LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = "onLoadFinished";
                    str = str2;
                } else {
                    str = null;
                }
                try {
                    if (LoaderManagerImpl.DEBUG) {
                        Log.v(LoaderManagerImpl.TAG, "  onLoadFinished in " + loader + ": " + loader.dataToString(data));
                    }
                    this.mCallbacks.onLoadFinished(loader, data);
                    this.mDeliveredData = true;
                } finally {
                    if (LoaderManagerImpl.this.mHost != null) {
                        LoaderManagerImpl.this.mHost.mFragmentManager.mNoTransactionsBecause = str;
                    }
                }
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.mId);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.mLoader, sb);
            sb.append("}}");
            return sb.toString();
        }

        public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
            writer.print(prefix);
            writer.print("mId=");
            writer.print(this.mId);
            writer.print(" mArgs=");
            writer.println(this.mArgs);
            writer.print(prefix);
            writer.print("mCallbacks=");
            writer.println(this.mCallbacks);
            writer.print(prefix);
            writer.print("mLoader=");
            writer.println(this.mLoader);
            if (this.mLoader != null) {
                this.mLoader.dump(prefix + "  ", fd, writer, args);
            }
            if (this.mHaveData || this.mDeliveredData) {
                writer.print(prefix);
                writer.print("mHaveData=");
                writer.print(this.mHaveData);
                writer.print("  mDeliveredData=");
                writer.println(this.mDeliveredData);
                writer.print(prefix);
                writer.print("mData=");
                writer.println(this.mData);
            }
            writer.print(prefix);
            writer.print("mStarted=");
            writer.print(this.mStarted);
            writer.print(" mReportNextStart=");
            writer.print(this.mReportNextStart);
            writer.print(" mDestroyed=");
            writer.println(this.mDestroyed);
            writer.print(prefix);
            writer.print("mRetaining=");
            writer.print(this.mRetaining);
            writer.print(" mRetainingStarted=");
            writer.print(this.mRetainingStarted);
            writer.print(" mListenerRegistered=");
            writer.println(this.mListenerRegistered);
            if (this.mPendingLoader != null) {
                writer.print(prefix);
                writer.println("Pending Loader ");
                writer.print(this.mPendingLoader);
                writer.println(":");
                this.mPendingLoader.dump(prefix + "  ", fd, writer, args);
            }
        }
    }

    LoaderManagerImpl(String who, FragmentHostCallback host, boolean started) {
        this.mWho = who;
        this.mHost = host;
        this.mStarted = started;
    }

    void updateHostController(FragmentHostCallback host) {
        this.mHost = host;
    }

    private LoaderInfo createLoader(int id, Bundle args, LoaderManager.LoaderCallbacks<Object> callback) {
        LoaderInfo loaderInfo = new LoaderInfo(id, args, callback);
        loaderInfo.mLoader = callback.onCreateLoader(id, args);
        return loaderInfo;
    }

    private LoaderInfo createAndInstallLoader(int id, Bundle args, LoaderManager.LoaderCallbacks<Object> callback) {
        try {
            this.mCreatingLoader = true;
            LoaderInfo createLoader = createLoader(id, args, callback);
            installLoader(createLoader);
            return createLoader;
        } finally {
            this.mCreatingLoader = false;
        }
    }

    void installLoader(LoaderInfo info) {
        this.mLoaders.put(info.mId, info);
        if (this.mStarted) {
            info.start();
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public <D> Loader<D> initLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = this.mLoaders.get(i);
        if (DEBUG) {
            Log.v(TAG, "initLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfo == null) {
            loaderInfo = createAndInstallLoader(i, bundle, loaderCallbacks);
            if (DEBUG) {
                Log.v(TAG, "  Created new loader " + loaderInfo);
            }
        } else {
            if (DEBUG) {
                Log.v(TAG, "  Re-using existing loader " + loaderInfo);
            }
            loaderInfo.mCallbacks = loaderCallbacks;
        }
        if (loaderInfo.mHaveData && this.mStarted) {
            loaderInfo.callOnLoadFinished(loaderInfo.mLoader, loaderInfo.mData);
        }
        return (Loader<D>) loaderInfo.mLoader;
    }

    @Override // android.support.v4.app.LoaderManager
    public <D> Loader<D> restartLoader(int i, Bundle bundle, LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = this.mLoaders.get(i);
        if (DEBUG) {
            Log.v(TAG, "restartLoader in " + this + ": args=" + bundle);
        }
        if (loaderInfo != null) {
            LoaderInfo loaderInfo2 = this.mInactiveLoaders.get(i);
            if (loaderInfo2 != null) {
                if (loaderInfo.mHaveData) {
                    if (DEBUG) {
                        Log.v(TAG, "  Removing last inactive loader: " + loaderInfo);
                    }
                    loaderInfo2.mDeliveredData = false;
                    loaderInfo2.destroy();
                    loaderInfo.mLoader.abandon();
                    this.mInactiveLoaders.put(i, loaderInfo);
                } else if (!loaderInfo.mStarted) {
                    if (DEBUG) {
                        Log.v(TAG, "  Current loader is stopped; replacing");
                    }
                    this.mLoaders.put(i, null);
                    loaderInfo.destroy();
                } else {
                    if (DEBUG) {
                        Log.v(TAG, "  Current loader is running; attempting to cancel");
                    }
                    loaderInfo.cancel();
                    if (loaderInfo.mPendingLoader != null) {
                        if (DEBUG) {
                            Log.v(TAG, "  Removing pending loader: " + loaderInfo.mPendingLoader);
                        }
                        loaderInfo.mPendingLoader.destroy();
                        loaderInfo.mPendingLoader = null;
                    }
                    if (DEBUG) {
                        Log.v(TAG, "  Enqueuing as new pending loader");
                    }
                    loaderInfo.mPendingLoader = createLoader(i, bundle, loaderCallbacks);
                    return (Loader<D>) loaderInfo.mPendingLoader.mLoader;
                }
            } else {
                if (DEBUG) {
                    Log.v(TAG, "  Making last loader inactive: " + loaderInfo);
                }
                loaderInfo.mLoader.abandon();
                this.mInactiveLoaders.put(i, loaderInfo);
            }
        }
        return (Loader<D>) createAndInstallLoader(i, bundle, loaderCallbacks).mLoader;
    }

    @Override // android.support.v4.app.LoaderManager
    public void destroyLoader(int id) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (DEBUG) {
            Log.v(TAG, "destroyLoader in " + this + " of " + id);
        }
        int indexOfKey = this.mLoaders.indexOfKey(id);
        if (indexOfKey >= 0) {
            LoaderInfo valueAt = this.mLoaders.valueAt(indexOfKey);
            this.mLoaders.removeAt(indexOfKey);
            valueAt.destroy();
        }
        int indexOfKey2 = this.mInactiveLoaders.indexOfKey(id);
        if (indexOfKey2 >= 0) {
            LoaderInfo valueAt2 = this.mInactiveLoaders.valueAt(indexOfKey2);
            this.mInactiveLoaders.removeAt(indexOfKey2);
            valueAt2.destroy();
        }
        if (this.mHost != null && !hasRunningLoaders()) {
            this.mHost.mFragmentManager.startPendingDeferredFragments();
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public <D> Loader<D> getLoader(int i) {
        if (this.mCreatingLoader) {
            throw new IllegalStateException("Called while creating a loader");
        }
        LoaderInfo loaderInfo = this.mLoaders.get(i);
        if (loaderInfo != null) {
            if (loaderInfo.mPendingLoader != null) {
                return (Loader<D>) loaderInfo.mPendingLoader.mLoader;
            }
            return (Loader<D>) loaderInfo.mLoader;
        }
        return null;
    }

    void doStart() {
        if (DEBUG) {
            Log.v(TAG, "Starting in " + this);
        }
        if (this.mStarted) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doStart when already started: " + this, runtimeException);
        } else {
            this.mStarted = true;
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).start();
            }
        }
    }

    void doStop() {
        if (DEBUG) {
            Log.v(TAG, "Stopping in " + this);
        }
        if (!this.mStarted) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doStop when not started: " + this, runtimeException);
        } else {
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).stop();
            }
            this.mStarted = false;
        }
    }

    void doRetain() {
        if (DEBUG) {
            Log.v(TAG, "Retaining in " + this);
        }
        if (!this.mStarted) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w(TAG, "Called doRetain when not started: " + this, runtimeException);
        } else {
            this.mRetaining = true;
            this.mStarted = false;
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).retain();
            }
        }
    }

    void finishRetain() {
        if (this.mRetaining) {
            if (DEBUG) {
                Log.v(TAG, "Finished Retaining in " + this);
            }
            this.mRetaining = false;
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).finishRetain();
            }
        }
    }

    void doReportNextStart() {
        for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
            this.mLoaders.valueAt(size).mReportNextStart = true;
        }
    }

    void doReportStart() {
        for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
            this.mLoaders.valueAt(size).reportStart();
        }
    }

    void doDestroy() {
        if (!this.mRetaining) {
            if (DEBUG) {
                Log.v(TAG, "Destroying Active in " + this);
            }
            for (int size = this.mLoaders.size() - 1; size >= 0; size--) {
                this.mLoaders.valueAt(size).destroy();
            }
            this.mLoaders.clear();
        }
        if (DEBUG) {
            Log.v(TAG, "Destroying Inactive in " + this);
        }
        for (int size2 = this.mInactiveLoaders.size() - 1; size2 >= 0; size2--) {
            this.mInactiveLoaders.valueAt(size2).destroy();
        }
        this.mInactiveLoaders.clear();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.mHost, sb);
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.LoaderManager
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        if (this.mLoaders.size() > 0) {
            writer.print(prefix);
            writer.println("Active Loaders:");
            String str = prefix + "    ";
            for (int i = 0; i < this.mLoaders.size(); i++) {
                LoaderInfo valueAt = this.mLoaders.valueAt(i);
                writer.print(prefix);
                writer.print("  #");
                writer.print(this.mLoaders.keyAt(i));
                writer.print(": ");
                writer.println(valueAt.toString());
                valueAt.dump(str, fd, writer, args);
            }
        }
        if (this.mInactiveLoaders.size() > 0) {
            writer.print(prefix);
            writer.println("Inactive Loaders:");
            String str2 = prefix + "    ";
            for (int i2 = 0; i2 < this.mInactiveLoaders.size(); i2++) {
                LoaderInfo valueAt2 = this.mInactiveLoaders.valueAt(i2);
                writer.print(prefix);
                writer.print("  #");
                writer.print(this.mInactiveLoaders.keyAt(i2));
                writer.print(": ");
                writer.println(valueAt2.toString());
                valueAt2.dump(str2, fd, writer, args);
            }
        }
    }

    @Override // android.support.v4.app.LoaderManager
    public boolean hasRunningLoaders() {
        int size = this.mLoaders.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            LoaderInfo valueAt = this.mLoaders.valueAt(i);
            z |= valueAt.mStarted && !valueAt.mDeliveredData;
        }
        return z;
    }
}
