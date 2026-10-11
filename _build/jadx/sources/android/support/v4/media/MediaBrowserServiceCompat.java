package android.support.v4.media;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaBrowserServiceCompatApi21;
import android.support.v4.media.MediaBrowserServiceCompatApi23;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    private static final boolean DBG = false;
    public static final String KEY_MEDIA_ITEM = "media_item";
    private static final int RESULT_FLAG_OPTION_NOT_HANDLED = 1;
    public static final String SERVICE_INTERFACE = "android.media.browse.MediaBrowserService";
    private static final String TAG = "MediaBrowserServiceCompat";
    private final ArrayMap<IBinder, ConnectionRecord> mConnections = new ArrayMap<>();
    private final ServiceHandler mHandler = new ServiceHandler();
    private MediaBrowserServiceImpl mImpl;
    MediaSessionCompat.Token mSession;

    interface MediaBrowserServiceImpl {
        IBinder onBind(Intent intent);

        void onCreate();
    }

    private interface ServiceCallbacks {
        IBinder asBinder();

        void onConnect(String str, MediaSessionCompat.Token token, Bundle bundle) throws RemoteException;

        void onConnectFailed() throws RemoteException;

        void onLoadChildren(String str, List<MediaBrowserCompat.MediaItem> list, Bundle bundle) throws RemoteException;
    }

    @Nullable
    public abstract BrowserRoot onGetRoot(@NonNull String str, int i, @Nullable Bundle bundle);

    public abstract void onLoadChildren(@NonNull String str, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result);

    class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {
        private Messenger mMessenger;

        MediaBrowserServiceImplBase() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            if (MediaBrowserServiceCompat.SERVICE_INTERFACE.equals(intent.getAction())) {
                return this.mMessenger.getBinder();
            }
            return null;
        }
    }

    class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl {
        private Object mServiceObj;

        MediaBrowserServiceImplApi21() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi21.createService();
            MediaBrowserServiceCompatApi21.onCreate(this.mServiceObj, MediaBrowserServiceCompat.this.new ServiceImplApi21());
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi21.onBind(this.mServiceObj, intent);
        }
    }

    class MediaBrowserServiceImplApi23 implements MediaBrowserServiceImpl {
        private Object mServiceObj;

        MediaBrowserServiceImplApi23() {
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            this.mServiceObj = MediaBrowserServiceCompatApi23.createService();
            MediaBrowserServiceCompatApi23.onCreate(this.mServiceObj, (MediaBrowserServiceCompatApi23.ServiceImplApi23) new ServiceImplApi23());
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public IBinder onBind(Intent intent) {
            return MediaBrowserServiceCompatApi23.onBind(this.mServiceObj, intent);
        }
    }

    private final class ServiceHandler extends Handler {
        private final ServiceImpl mServiceImpl;

        private ServiceHandler() {
            this.mServiceImpl = new ServiceImpl();
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Bundle data = msg.getData();
            switch (msg.what) {
                case 1:
                    this.mServiceImpl.connect(data.getString(MediaBrowserProtocol.DATA_PACKAGE_NAME), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID), data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS), MediaBrowserServiceCompat.this.new ServiceCallbacksCompat(msg.replyTo));
                    break;
                case 2:
                    this.mServiceImpl.disconnect(MediaBrowserServiceCompat.this.new ServiceCallbacksCompat(msg.replyTo));
                    break;
                case 3:
                    this.mServiceImpl.addSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getBundle(MediaBrowserProtocol.DATA_OPTIONS), MediaBrowserServiceCompat.this.new ServiceCallbacksCompat(msg.replyTo));
                    break;
                case 4:
                    this.mServiceImpl.removeSubscription(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getBundle(MediaBrowserProtocol.DATA_OPTIONS), MediaBrowserServiceCompat.this.new ServiceCallbacksCompat(msg.replyTo));
                    break;
                case 5:
                    this.mServiceImpl.getMediaItem(data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (ResultReceiver) data.getParcelable(MediaBrowserProtocol.DATA_RESULT_RECEIVER));
                    break;
                case 6:
                    this.mServiceImpl.registerCallbacks(MediaBrowserServiceCompat.this.new ServiceCallbacksCompat(msg.replyTo));
                    break;
                case 7:
                    this.mServiceImpl.unregisterCallbacks(MediaBrowserServiceCompat.this.new ServiceCallbacksCompat(msg.replyTo));
                    break;
                default:
                    Log.w(MediaBrowserServiceCompat.TAG, "Unhandled message: " + msg + "\n  Service version: 1\n  Client version: " + msg.arg1);
                    break;
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message msg, long uptimeMillis) {
            Bundle data = msg.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt(MediaBrowserProtocol.DATA_CALLING_UID, Binder.getCallingUid());
            return super.sendMessageAtTime(msg, uptimeMillis);
        }

        public void postOrRun(Runnable r) {
            if (Thread.currentThread() == getLooper().getThread()) {
                r.run();
            } else {
                post(r);
            }
        }

        public ServiceImpl getServiceImpl() {
            return this.mServiceImpl;
        }
    }

    private class ConnectionRecord {
        ServiceCallbacks callbacks;
        String pkg;
        BrowserRoot root;
        Bundle rootHints;
        HashMap<String, List<Bundle>> subscriptions;

        private ConnectionRecord() {
            this.subscriptions = new HashMap<>();
        }
    }

    public static class Result<T> {
        private Object mDebug;
        private boolean mDetachCalled;
        private int mFlags;
        private boolean mSendResultCalled;

        Result(Object debug) {
            this.mDebug = debug;
        }

        public void sendResult(T result) {
            if (this.mSendResultCalled) {
                throw new IllegalStateException("sendResult() called twice for: " + this.mDebug);
            }
            this.mSendResultCalled = true;
            onResultSent(result, this.mFlags);
        }

        public void detach() {
            if (this.mDetachCalled) {
                throw new IllegalStateException("detach() called when detach() had already been called for: " + this.mDebug);
            }
            if (this.mSendResultCalled) {
                throw new IllegalStateException("detach() called when sendResult() had already been called for: " + this.mDebug);
            }
            this.mDetachCalled = true;
        }

        boolean isDone() {
            return this.mDetachCalled || this.mSendResultCalled;
        }

        void setFlags(int flags) {
            this.mFlags = flags;
        }

        void onResultSent(T result, int flags) {
        }
    }

    private class ServiceImpl {
        private ServiceImpl() {
        }

        public void connect(final String pkg, final int uid, final Bundle rootHints, final ServiceCallbacks callbacks) {
            if (MediaBrowserServiceCompat.this.isValidPackage(pkg, uid)) {
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IBinder asBinder = callbacks.asBinder();
                        MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                        ConnectionRecord connectionRecord = new ConnectionRecord();
                        connectionRecord.pkg = pkg;
                        connectionRecord.rootHints = rootHints;
                        connectionRecord.callbacks = callbacks;
                        connectionRecord.root = MediaBrowserServiceCompat.this.onGetRoot(pkg, uid, rootHints);
                        if (connectionRecord.root != null) {
                            try {
                                MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                                if (MediaBrowserServiceCompat.this.mSession != null) {
                                    callbacks.onConnect(connectionRecord.root.getRootId(), MediaBrowserServiceCompat.this.mSession, connectionRecord.root.getExtras());
                                    return;
                                }
                                return;
                            } catch (RemoteException e) {
                                Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnect() failed. Dropping client. pkg=" + pkg);
                                MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                                return;
                            }
                        }
                        Log.i(MediaBrowserServiceCompat.TAG, "No root for client " + pkg + " from service " + getClass().getName());
                        try {
                            callbacks.onConnectFailed();
                        } catch (RemoteException e2) {
                            Log.w(MediaBrowserServiceCompat.TAG, "Calling onConnectFailed() failed. Ignoring. pkg=" + pkg);
                        }
                    }
                });
                return;
            }
            throw new IllegalArgumentException("Package/uid mismatch: uid=" + uid + " package=" + pkg);
        }

        public void disconnect(final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (((ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.remove(callbacks.asBinder())) != null) {
                    }
                }
            });
        }

        public void addSubscription(final String id, final Bundle options, final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.3
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(callbacks.asBinder());
                    if (connectionRecord != null) {
                        MediaBrowserServiceCompat.this.addSubscription(id, connectionRecord, options);
                    } else {
                        Log.w(MediaBrowserServiceCompat.TAG, "addSubscription for callback that isn't registered id=" + id);
                    }
                }
            });
        }

        public void removeSubscription(final String id, final Bundle options, final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(callbacks.asBinder());
                    if (connectionRecord != null) {
                        if (!MediaBrowserServiceCompat.this.removeSubscription(id, connectionRecord, options)) {
                            Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription called for " + id + " which is not subscribed");
                            return;
                        }
                        return;
                    }
                    Log.w(MediaBrowserServiceCompat.TAG, "removeSubscription for callback that isn't registered id=" + id);
                }
            });
        }

        public void getMediaItem(final String mediaId, final ResultReceiver receiver) {
            if (!TextUtils.isEmpty(mediaId) && receiver != null) {
                MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.5
                    @Override // java.lang.Runnable
                    public void run() {
                        MediaBrowserServiceCompat.this.performLoadItem(mediaId, receiver);
                    }
                });
            }
        }

        public void registerCallbacks(final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    IBinder asBinder = callbacks.asBinder();
                    MediaBrowserServiceCompat.this.mConnections.remove(asBinder);
                    ConnectionRecord connectionRecord = new ConnectionRecord();
                    connectionRecord.callbacks = callbacks;
                    MediaBrowserServiceCompat.this.mConnections.put(asBinder, connectionRecord);
                }
            });
        }

        public void unregisterCallbacks(final ServiceCallbacks callbacks) {
            MediaBrowserServiceCompat.this.mHandler.postOrRun(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserServiceCompat.this.mConnections.remove(callbacks.asBinder());
                }
            });
        }
    }

    private class ServiceImplApi21 implements MediaBrowserServiceCompatApi21.ServiceImplApi21 {
        final ServiceImpl mServiceImpl;

        ServiceImplApi21() {
            this.mServiceImpl = MediaBrowserServiceCompat.this.mHandler.getServiceImpl();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceImplApi21
        public void connect(String pkg, Bundle rootHints, MediaBrowserServiceCompatApi21.ServiceCallbacks callbacks) {
            this.mServiceImpl.connect(pkg, Binder.getCallingUid(), rootHints, MediaBrowserServiceCompat.this.new ServiceCallbacksApi21(callbacks));
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceImplApi21
        public void disconnect(MediaBrowserServiceCompatApi21.ServiceCallbacks callbacks) {
            this.mServiceImpl.disconnect(MediaBrowserServiceCompat.this.new ServiceCallbacksApi21(callbacks));
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceImplApi21
        public void addSubscription(String id, MediaBrowserServiceCompatApi21.ServiceCallbacks callbacks) {
            this.mServiceImpl.addSubscription(id, null, MediaBrowserServiceCompat.this.new ServiceCallbacksApi21(callbacks));
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi21.ServiceImplApi21
        public void removeSubscription(String id, MediaBrowserServiceCompatApi21.ServiceCallbacks callbacks) {
            this.mServiceImpl.removeSubscription(id, null, MediaBrowserServiceCompat.this.new ServiceCallbacksApi21(callbacks));
        }
    }

    private class ServiceImplApi23 extends ServiceImplApi21 implements MediaBrowserServiceCompatApi23.ServiceImplApi23 {
        private ServiceImplApi23() {
            super();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompatApi23.ServiceImplApi23
        public void getMediaItem(String mediaId, final MediaBrowserServiceCompatApi23.ItemCallback cb) {
            this.mServiceImpl.getMediaItem(mediaId, new ResultReceiver(MediaBrowserServiceCompat.this.mHandler) { // from class: android.support.v4.media.MediaBrowserServiceCompat.ServiceImplApi23.1
                @Override // android.support.v4.os.ResultReceiver
                protected void onReceiveResult(int resultCode, Bundle resultData) {
                    Parcel parcel;
                    MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) resultData.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                    if (mediaItem == null) {
                        parcel = null;
                    } else {
                        Parcel obtain = Parcel.obtain();
                        mediaItem.writeToParcel(obtain, 0);
                        parcel = obtain;
                    }
                    cb.onItemLoaded(resultCode, resultData, parcel);
                }
            });
        }
    }

    private class ServiceCallbacksCompat implements ServiceCallbacks {
        final Messenger mCallbacks;

        ServiceCallbacksCompat(Messenger callbacks) {
            this.mCallbacks = callbacks;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.mCallbacks.getBinder();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnect(String root, MediaSessionCompat.Token session, Bundle extras) throws RemoteException {
            if (extras == null) {
                extras = new Bundle();
            }
            extras.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 1);
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, root);
            bundle.putParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN, session);
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, extras);
            sendRequest(1, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnectFailed() throws RemoteException {
            sendRequest(2, null);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onLoadChildren(String mediaId, List<MediaBrowserCompat.MediaItem> list, Bundle options) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, mediaId);
            bundle.putBundle(MediaBrowserProtocol.DATA_OPTIONS, options);
            if (list != null) {
                bundle.putParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
            }
            sendRequest(3, bundle);
        }

        private void sendRequest(int what, Bundle data) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = what;
            obtain.arg1 = 1;
            obtain.setData(data);
            this.mCallbacks.send(obtain);
        }
    }

    private class ServiceCallbacksApi21 implements ServiceCallbacks {
        final MediaBrowserServiceCompatApi21.ServiceCallbacks mCallbacks;
        Messenger mMessenger;

        ServiceCallbacksApi21(MediaBrowserServiceCompatApi21.ServiceCallbacks callbacks) {
            this.mCallbacks = callbacks;
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public IBinder asBinder() {
            return this.mCallbacks.asBinder();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnect(String root, MediaSessionCompat.Token session, Bundle extras) throws RemoteException {
            if (extras == null) {
                extras = new Bundle();
            }
            this.mMessenger = new Messenger(MediaBrowserServiceCompat.this.mHandler);
            BundleCompat.putBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER, this.mMessenger.getBinder());
            extras.putInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 1);
            this.mCallbacks.onConnect(root, session.getToken(), extras);
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onConnectFailed() throws RemoteException {
            this.mCallbacks.onConnectFailed();
        }

        @Override // android.support.v4.media.MediaBrowserServiceCompat.ServiceCallbacks
        public void onLoadChildren(String mediaId, List<MediaBrowserCompat.MediaItem> list, Bundle options) throws RemoteException {
            ArrayList arrayList = null;
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                for (MediaBrowserCompat.MediaItem mediaItem : list) {
                    Parcel obtain = Parcel.obtain();
                    mediaItem.writeToParcel(obtain, 0);
                    arrayList2.add(obtain);
                }
                arrayList = arrayList2;
            }
            this.mCallbacks.onLoadChildren(mediaId, arrayList);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaBrowserServiceImplApi23();
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaBrowserServiceImplApi21();
        } else {
            this.mImpl = new MediaBrowserServiceImplBase();
        }
        this.mImpl.onCreate();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mImpl.onBind(intent);
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
    }

    public void onLoadChildren(@NonNull String parentId, @NonNull Result<List<MediaBrowserCompat.MediaItem>> result, @NonNull Bundle options) {
        result.setFlags(1);
        onLoadChildren(parentId, result);
    }

    public void onLoadItem(String itemId, Result<MediaBrowserCompat.MediaItem> result) {
        result.sendResult(null);
    }

    public void setSessionToken(final MediaSessionCompat.Token token) {
        if (token == null) {
            throw new IllegalArgumentException("Session token may not be null.");
        }
        if (this.mSession != null) {
            throw new IllegalStateException("The session token has already been set.");
        }
        this.mSession = token;
        this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                for (IBinder iBinder : MediaBrowserServiceCompat.this.mConnections.keySet()) {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get(iBinder);
                    try {
                        connectionRecord.callbacks.onConnect(connectionRecord.root.getRootId(), token, connectionRecord.root.getExtras());
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Connection for " + connectionRecord.pkg + " is no longer valid.");
                        MediaBrowserServiceCompat.this.mConnections.remove(iBinder);
                    }
                }
            }
        });
    }

    @Nullable
    public MediaSessionCompat.Token getSessionToken() {
        return this.mSession;
    }

    public void notifyChildrenChanged(@NonNull String parentId) {
        notifyChildrenChangedInternal(parentId, null);
    }

    public void notifyChildrenChanged(@NonNull String parentId, @NonNull Bundle options) {
        if (options == null) {
            throw new IllegalArgumentException("options cannot be null in notifyChildrenChanged");
        }
        notifyChildrenChangedInternal(parentId, options);
    }

    private void notifyChildrenChangedInternal(final String parentId, final Bundle options) {
        if (parentId == null) {
            throw new IllegalArgumentException("parentId cannot be null in notifyChildrenChanged");
        }
        this.mHandler.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserServiceCompat.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = MediaBrowserServiceCompat.this.mConnections.keySet().iterator();
                while (it.hasNext()) {
                    ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.mConnections.get((IBinder) it.next());
                    List<Bundle> list = connectionRecord.subscriptions.get(parentId);
                    if (list != null) {
                        Iterator<Bundle> it2 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                Bundle next = it2.next();
                                if (MediaBrowserCompatUtils.hasDuplicatedItems(options, next)) {
                                    MediaBrowserServiceCompat.this.performLoadChildren(parentId, connectionRecord, next);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isValidPackage(String pkg, int uid) {
        if (pkg == null) {
            return false;
        }
        for (String str : getPackageManager().getPackagesForUid(uid)) {
            if (str.equals(pkg)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addSubscription(String id, ConnectionRecord connection, Bundle options) {
        List<Bundle> list = connection.subscriptions.get(id);
        List<Bundle> arrayList = list == null ? new ArrayList() : list;
        Iterator<Bundle> it = arrayList.iterator();
        while (it.hasNext()) {
            if (MediaBrowserCompatUtils.areSameOptions(options, it.next())) {
                return;
            }
        }
        arrayList.add(options);
        connection.subscriptions.put(id, arrayList);
        performLoadChildren(id, connection, options);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeSubscription(String id, ConnectionRecord connection, Bundle options) {
        boolean z;
        List<Bundle> list = connection.subscriptions.get(id);
        if (list == null) {
            return false;
        }
        Iterator<Bundle> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            Bundle next = it.next();
            if (MediaBrowserCompatUtils.areSameOptions(options, next)) {
                list.remove(next);
                z = true;
                break;
            }
        }
        if (list.size() == 0) {
            connection.subscriptions.remove(id);
            return z;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performLoadChildren(final String parentId, final ConnectionRecord connection, final Bundle options) {
        Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(parentId) { // from class: android.support.v4.media.MediaBrowserServiceCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(List<MediaBrowserCompat.MediaItem> list, int flag) {
                if (MediaBrowserServiceCompat.this.mConnections.get(connection.callbacks.asBinder()) == connection) {
                    if ((flag & 1) != 0) {
                        list = MediaBrowserCompatUtils.applyOptions(list, options);
                    }
                    try {
                        connection.callbacks.onLoadChildren(parentId, list, options);
                    } catch (RemoteException e) {
                        Log.w(MediaBrowserServiceCompat.TAG, "Calling onLoadChildren() failed for id=" + parentId + " package=" + connection.pkg);
                    }
                }
            }
        };
        if (options == null) {
            onLoadChildren(parentId, result);
        } else {
            onLoadChildren(parentId, result, options);
        }
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + connection.pkg + " id=" + parentId);
        }
    }

    private List<MediaBrowserCompat.MediaItem> applyOptions(List<MediaBrowserCompat.MediaItem> list, Bundle options) {
        int i = options.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i2 = options.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        if (i != -1 || i2 != -1) {
            int i3 = i2 * (i - 1);
            int i4 = i3 + i2;
            if (i < 1 || i2 < 1 || i3 >= list.size()) {
                return Collections.emptyList();
            }
            if (i4 > list.size()) {
                i4 = list.size();
            }
            return list.subList(i3, i4);
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performLoadItem(String itemId, final ResultReceiver receiver) {
        Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(itemId) { // from class: android.support.v4.media.MediaBrowserServiceCompat.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // android.support.v4.media.MediaBrowserServiceCompat.Result
            public void onResultSent(MediaBrowserCompat.MediaItem item, int flag) {
                Bundle bundle = new Bundle();
                bundle.putParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM, item);
                receiver.send(0, bundle);
            }
        };
        onLoadItem(itemId, result);
        if (!result.isDone()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=" + itemId);
        }
    }

    public static final class BrowserRoot {
        public static final String EXTRA_OFFLINE = "android.service.media.extra.OFFLINE";
        public static final String EXTRA_RECENT = "android.service.media.extra.RECENT";
        public static final String EXTRA_SUGGESTED = "android.service.media.extra.SUGGESTED";
        private final Bundle mExtras;
        private final String mRootId;

        public BrowserRoot(@NonNull String rootId, @Nullable Bundle extras) {
            if (rootId == null) {
                throw new IllegalArgumentException("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead.");
            }
            this.mRootId = rootId;
            this.mExtras = extras;
        }

        public String getRootId() {
            return this.mRootId;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }
    }
}
