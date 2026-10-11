package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class NotificationCompatJellybean {
    static final String EXTRA_ACTION_EXTRAS = "android.support.actionExtras";
    static final String EXTRA_GROUP_KEY = "android.support.groupKey";
    static final String EXTRA_GROUP_SUMMARY = "android.support.isGroupSummary";
    static final String EXTRA_LOCAL_ONLY = "android.support.localOnly";
    static final String EXTRA_REMOTE_INPUTS = "android.support.remoteInputs";
    static final String EXTRA_SORT_KEY = "android.support.sortKey";
    static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
    private static final String KEY_ACTION_INTENT = "actionIntent";
    private static final String KEY_EXTRAS = "extras";
    private static final String KEY_ICON = "icon";
    private static final String KEY_REMOTE_INPUTS = "remoteInputs";
    private static final String KEY_TITLE = "title";
    public static final String TAG = "NotificationCompat";
    private static Class<?> sActionClass;
    private static Field sActionIconField;
    private static Field sActionIntentField;
    private static Field sActionTitleField;
    private static boolean sActionsAccessFailed;
    private static Field sActionsField;
    private static Field sExtrasField;
    private static boolean sExtrasFieldAccessFailed;
    private static final Object sExtrasLock = new Object();
    private static final Object sActionsLock = new Object();

    NotificationCompatJellybean() {
    }

    public static class Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {

        /* renamed from: b, reason: collision with root package name */
        private Notification.Builder f8b;
        private List<Bundle> mActionExtrasList = new ArrayList();
        private final Bundle mExtras;

        public Builder(Context context, Notification n, CharSequence contentTitle, CharSequence contentText, CharSequence contentInfo, RemoteViews tickerView, int number, PendingIntent contentIntent, PendingIntent fullScreenIntent, Bitmap largeIcon, int progressMax, int progress, boolean progressIndeterminate, boolean useChronometer, int priority, CharSequence subText, boolean localOnly, Bundle extras, String groupKey, boolean groupSummary, String sortKey) {
            this.f8b = new Notification.Builder(context).setWhen(n.when).setSmallIcon(n.icon, n.iconLevel).setContent(n.contentView).setTicker(n.tickerText, tickerView).setSound(n.sound, n.audioStreamType).setVibrate(n.vibrate).setLights(n.ledARGB, n.ledOnMS, n.ledOffMS).setOngoing((n.flags & 2) != 0).setOnlyAlertOnce((n.flags & 8) != 0).setAutoCancel((n.flags & 16) != 0).setDefaults(n.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(n.deleteIntent).setFullScreenIntent(fullScreenIntent, (n.flags & 128) != 0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(useChronometer).setPriority(priority).setProgress(progressMax, progress, progressIndeterminate);
            this.mExtras = new Bundle();
            if (extras != null) {
                this.mExtras.putAll(extras);
            }
            if (localOnly) {
                this.mExtras.putBoolean("android.support.localOnly", true);
            }
            if (groupKey != null) {
                this.mExtras.putString("android.support.groupKey", groupKey);
                if (groupSummary) {
                    this.mExtras.putBoolean("android.support.isGroupSummary", true);
                } else {
                    this.mExtras.putBoolean("android.support.useSideChannel", true);
                }
            }
            if (sortKey != null) {
                this.mExtras.putString("android.support.sortKey", sortKey);
            }
        }

        @Override // android.support.v4.app.NotificationBuilderWithActions
        public void addAction(NotificationCompatBase.Action action) {
            this.mActionExtrasList.add(NotificationCompatJellybean.writeActionAndGetExtras(this.f8b, action));
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification.Builder getBuilder() {
            return this.f8b;
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification build() {
            Notification build = this.f8b.build();
            Bundle extras = NotificationCompatJellybean.getExtras(build);
            Bundle bundle = new Bundle(this.mExtras);
            for (String str : this.mExtras.keySet()) {
                if (extras.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            extras.putAll(bundle);
            SparseArray<Bundle> buildActionExtrasMap = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
            if (buildActionExtrasMap != null) {
                NotificationCompatJellybean.getExtras(build).putSparseParcelableArray("android.support.actionExtras", buildActionExtrasMap);
            }
            return build;
        }
    }

    public static void addBigTextStyle(NotificationBuilderWithBuilderAccessor b2, CharSequence bigContentTitle, boolean useSummary, CharSequence summaryText, CharSequence bigText) {
        Notification.BigTextStyle bigText2 = new Notification.BigTextStyle(b2.getBuilder()).setBigContentTitle(bigContentTitle).bigText(bigText);
        if (useSummary) {
            bigText2.setSummaryText(summaryText);
        }
    }

    public static void addBigPictureStyle(NotificationBuilderWithBuilderAccessor b2, CharSequence bigContentTitle, boolean useSummary, CharSequence summaryText, Bitmap bigPicture, Bitmap bigLargeIcon, boolean bigLargeIconSet) {
        Notification.BigPictureStyle bigPicture2 = new Notification.BigPictureStyle(b2.getBuilder()).setBigContentTitle(bigContentTitle).bigPicture(bigPicture);
        if (bigLargeIconSet) {
            bigPicture2.bigLargeIcon(bigLargeIcon);
        }
        if (useSummary) {
            bigPicture2.setSummaryText(summaryText);
        }
    }

    public static void addInboxStyle(NotificationBuilderWithBuilderAccessor b2, CharSequence bigContentTitle, boolean useSummary, CharSequence summaryText, ArrayList<CharSequence> texts) {
        Notification.InboxStyle bigContentTitle2 = new Notification.InboxStyle(b2.getBuilder()).setBigContentTitle(bigContentTitle);
        if (useSummary) {
            bigContentTitle2.setSummaryText(summaryText);
        }
        Iterator<CharSequence> it = texts.iterator();
        while (it.hasNext()) {
            bigContentTitle2.addLine(it.next());
        }
    }

    public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> actionExtrasList) {
        SparseArray<Bundle> sparseArray = null;
        int size = actionExtrasList.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = actionExtrasList.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    public static Bundle getExtras(Notification notif) {
        synchronized (sExtrasLock) {
            if (sExtrasFieldAccessFailed) {
                return null;
            }
            try {
                if (sExtrasField == null) {
                    Field declaredField = Notification.class.getDeclaredField(KEY_EXTRAS);
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e(TAG, "Notification.extras field is not of type Bundle");
                        sExtrasFieldAccessFailed = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    sExtrasField = declaredField;
                }
                Bundle bundle = (Bundle) sExtrasField.get(notif);
                if (bundle == null) {
                    bundle = new Bundle();
                    sExtrasField.set(notif, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e(TAG, "Unable to access notification extras", e);
                sExtrasFieldAccessFailed = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, "Unable to access notification extras", e2);
                sExtrasFieldAccessFailed = true;
                return null;
            }
        }
    }

    public static NotificationCompatBase.Action readAction(NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory remoteInputFactory, int icon, CharSequence title, PendingIntent actionIntent, Bundle extras) {
        RemoteInputCompatBase.RemoteInput[] remoteInputArr = null;
        if (extras != null) {
            remoteInputArr = RemoteInputCompatJellybean.fromBundleArray(BundleUtil.getBundleArrayFromBundle(extras, "android.support.remoteInputs"), remoteInputFactory);
        }
        return factory.build(icon, title, actionIntent, extras, remoteInputArr);
    }

    public static Bundle writeActionAndGetExtras(Notification.Builder builder, NotificationCompatBase.Action action) {
        builder.addAction(action.getIcon(), action.getTitle(), action.getActionIntent());
        Bundle bundle = new Bundle(action.getExtras());
        if (action.getRemoteInputs() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", RemoteInputCompatJellybean.toBundleArray(action.getRemoteInputs()));
        }
        return bundle;
    }

    public static int getActionCount(Notification notif) {
        int length;
        synchronized (sActionsLock) {
            Object[] actionObjectsLocked = getActionObjectsLocked(notif);
            length = actionObjectsLocked != null ? actionObjectsLocked.length : 0;
        }
        return length;
    }

    public static NotificationCompatBase.Action getAction(Notification notif, int actionIndex, NotificationCompatBase.Action.Factory factory, RemoteInputCompatBase.RemoteInput.Factory remoteInputFactory) {
        NotificationCompatBase.Action readAction;
        SparseArray sparseParcelableArray;
        synchronized (sActionsLock) {
            try {
                Object obj = getActionObjectsLocked(notif)[actionIndex];
                Bundle extras = getExtras(notif);
                readAction = readAction(factory, remoteInputFactory, sActionIconField.getInt(obj), (CharSequence) sActionTitleField.get(obj), (PendingIntent) sActionIntentField.get(obj), (extras == null || (sparseParcelableArray = extras.getSparseParcelableArray("android.support.actionExtras")) == null) ? null : (Bundle) sparseParcelableArray.get(actionIndex));
            } catch (IllegalAccessException e) {
                Log.e(TAG, "Unable to access notification actions", e);
                sActionsAccessFailed = true;
                return null;
            }
        }
        return readAction;
    }

    private static Object[] getActionObjectsLocked(Notification notif) {
        synchronized (sActionsLock) {
            if (!ensureActionReflectionReadyLocked()) {
                return null;
            }
            try {
                return (Object[]) sActionsField.get(notif);
            } catch (IllegalAccessException e) {
                Log.e(TAG, "Unable to access notification actions", e);
                sActionsAccessFailed = true;
                return null;
            }
        }
    }

    private static boolean ensureActionReflectionReadyLocked() {
        if (sActionsAccessFailed) {
            return false;
        }
        try {
            if (sActionsField == null) {
                sActionClass = Class.forName("android.app.Notification$Action");
                sActionIconField = sActionClass.getDeclaredField(KEY_ICON);
                sActionTitleField = sActionClass.getDeclaredField(KEY_TITLE);
                sActionIntentField = sActionClass.getDeclaredField(KEY_ACTION_INTENT);
                sActionsField = Notification.class.getDeclaredField("actions");
                sActionsField.setAccessible(true);
            }
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "Unable to access notification actions", e);
            sActionsAccessFailed = true;
        } catch (NoSuchFieldException e2) {
            Log.e(TAG, "Unable to access notification actions", e2);
            sActionsAccessFailed = true;
        }
        return sActionsAccessFailed ? false : true;
    }

    public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> parcelables, NotificationCompatBase.Action.Factory actionFactory, RemoteInputCompatBase.RemoteInput.Factory remoteInputFactory) {
        if (parcelables == null) {
            return null;
        }
        NotificationCompatBase.Action[] newArray = actionFactory.newArray(parcelables.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= newArray.length) {
                return newArray;
            }
            newArray[i2] = getActionFromBundle((Bundle) parcelables.get(i2), actionFactory, remoteInputFactory);
            i = i2 + 1;
        }
    }

    private static NotificationCompatBase.Action getActionFromBundle(Bundle bundle, NotificationCompatBase.Action.Factory actionFactory, RemoteInputCompatBase.RemoteInput.Factory remoteInputFactory) {
        return actionFactory.build(bundle.getInt(KEY_ICON), bundle.getCharSequence(KEY_TITLE), (PendingIntent) bundle.getParcelable(KEY_ACTION_INTENT), bundle.getBundle(KEY_EXTRAS), RemoteInputCompatJellybean.fromBundleArray(BundleUtil.getBundleArrayFromBundle(bundle, KEY_REMOTE_INPUTS), remoteInputFactory));
    }

    public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] actions) {
        if (actions == null) {
            return null;
        }
        ArrayList<Parcelable> arrayList = new ArrayList<>(actions.length);
        for (NotificationCompatBase.Action action : actions) {
            arrayList.add(getBundleForAction(action));
        }
        return arrayList;
    }

    private static Bundle getBundleForAction(NotificationCompatBase.Action action) {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_ICON, action.getIcon());
        bundle.putCharSequence(KEY_TITLE, action.getTitle());
        bundle.putParcelable(KEY_ACTION_INTENT, action.getActionIntent());
        bundle.putBundle(KEY_EXTRAS, action.getExtras());
        bundle.putParcelableArray(KEY_REMOTE_INPUTS, RemoteInputCompatJellybean.toBundleArray(action.getRemoteInputs()));
        return bundle;
    }

    public static boolean getLocalOnly(Notification notif) {
        return getExtras(notif).getBoolean("android.support.localOnly");
    }

    public static String getGroup(Notification n) {
        return getExtras(n).getString("android.support.groupKey");
    }

    public static boolean isGroupSummary(Notification n) {
        return getExtras(n).getBoolean("android.support.isGroupSummary");
    }

    public static String getSortKey(Notification n) {
        return getExtras(n).getString("android.support.sortKey");
    }
}
