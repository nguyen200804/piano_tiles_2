package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.tencent.mm.sdk.modelbase.BaseResp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock = new Object();
    private final Context mAppContext;
    private final Handler mHandler;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers = new HashMap<>();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap<>();
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList<>();

    private static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter _filter, BroadcastReceiver _receiver) {
            this.filter = _filter;
            this.receiver = _receiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.receiver);
            sb.append(" filter=");
            sb.append(this.filter);
            sb.append("}");
            return sb.toString();
        }
    }

    private static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent _intent, ArrayList<ReceiverRecord> _receivers) {
            this.intent = _intent;
            this.receivers = _receivers;
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: android.support.v4.content.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 1:
                        LocalBroadcastManager.this.executePendingBroadcasts();
                        break;
                    default:
                        super.handleMessage(msg);
                        break;
                }
            }
        };
    }

    public void registerReceiver(BroadcastReceiver receiver, IntentFilter filter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(filter, receiver);
            ArrayList<IntentFilter> arrayList = this.mReceivers.get(receiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.mReceivers.put(receiver, arrayList);
            }
            arrayList.add(filter);
            for (int i = 0; i < filter.countActions(); i++) {
                String action = filter.getAction(i);
                ArrayList<ReceiverRecord> arrayList2 = this.mActions.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.mActions.put(action, arrayList2);
                }
                arrayList2.add(receiverRecord);
            }
        }
    }

    public void unregisterReceiver(BroadcastReceiver receiver) {
        int i;
        synchronized (this.mReceivers) {
            ArrayList<IntentFilter> remove = this.mReceivers.remove(receiver);
            if (remove != null) {
                for (int i2 = 0; i2 < remove.size(); i2++) {
                    IntentFilter intentFilter = remove.get(i2);
                    for (int i3 = 0; i3 < intentFilter.countActions(); i3++) {
                        String action = intentFilter.getAction(i3);
                        ArrayList<ReceiverRecord> arrayList = this.mActions.get(action);
                        if (arrayList != null) {
                            int i4 = 0;
                            while (i4 < arrayList.size()) {
                                if (arrayList.get(i4).receiver == receiver) {
                                    arrayList.remove(i4);
                                    i = i4 - 1;
                                } else {
                                    i = i4;
                                }
                                i4 = i + 1;
                            }
                            if (arrayList.size() <= 0) {
                                this.mActions.remove(action);
                            }
                        }
                    }
                }
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        String str;
        ArrayList arrayList;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v(TAG, "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList<ReceiverRecord> arrayList2 = this.mActions.get(intent.getAction());
            if (arrayList2 != null) {
                if (z) {
                    Log.v(TAG, "Action list: " + arrayList2);
                }
                ArrayList arrayList3 = null;
                int i = 0;
                while (i < arrayList2.size()) {
                    ReceiverRecord receiverRecord = arrayList2.get(i);
                    if (z) {
                        Log.v(TAG, "Matching against filter " + receiverRecord.filter);
                    }
                    if (receiverRecord.broadcasting) {
                        if (z) {
                            Log.v(TAG, "  Filter's target already added");
                            arrayList = arrayList3;
                        }
                        arrayList = arrayList3;
                    } else {
                        int match = receiverRecord.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (match >= 0) {
                            if (z) {
                                Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList = arrayList3 == null ? new ArrayList() : arrayList3;
                            arrayList.add(receiverRecord);
                            receiverRecord.broadcasting = true;
                        } else {
                            if (z) {
                                switch (match) {
                                    case BaseResp.ErrCode.ERR_AUTH_DENIED /* -4 */:
                                        str = "category";
                                        break;
                                    case BaseResp.ErrCode.ERR_SENT_FAILED /* -3 */:
                                        str = "action";
                                        break;
                                    case -2:
                                        str = "data";
                                        break;
                                    case -1:
                                        str = VastExtensionXmlManager.TYPE;
                                        break;
                                    default:
                                        str = "unknown reason";
                                        break;
                                }
                                Log.v(TAG, "  Filter did not match: " + str);
                            }
                            arrayList = arrayList3;
                        }
                    }
                    i++;
                    arrayList3 = arrayList;
                }
                if (arrayList3 != null) {
                    for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                        ((ReceiverRecord) arrayList3.get(i2)).broadcasting = false;
                    }
                    this.mPendingBroadcasts.add(new BroadcastRecord(intent, arrayList3));
                    if (!this.mHandler.hasMessages(1)) {
                        this.mHandler.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executePendingBroadcasts() {
        BroadcastRecord[] broadcastRecordArr;
        while (true) {
            synchronized (this.mReceivers) {
                int size = this.mPendingBroadcasts.size();
                if (size <= 0) {
                    return;
                }
                broadcastRecordArr = new BroadcastRecord[size];
                this.mPendingBroadcasts.toArray(broadcastRecordArr);
                this.mPendingBroadcasts.clear();
            }
            for (BroadcastRecord broadcastRecord : broadcastRecordArr) {
                for (int i = 0; i < broadcastRecord.receivers.size(); i++) {
                    broadcastRecord.receivers.get(i).receiver.onReceive(this.mAppContext, broadcastRecord.intent);
                }
            }
        }
    }
}
