package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompatBase;
import android.support.v4.app.RemoteInputCompatBase;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class NotificationCompatApi21 {
    public static final String CATEGORY_ALARM = "alarm";
    public static final String CATEGORY_CALL = "call";
    public static final String CATEGORY_EMAIL = "email";
    public static final String CATEGORY_ERROR = "err";
    public static final String CATEGORY_EVENT = "event";
    public static final String CATEGORY_MESSAGE = "msg";
    public static final String CATEGORY_PROGRESS = "progress";
    public static final String CATEGORY_PROMO = "promo";
    public static final String CATEGORY_RECOMMENDATION = "recommendation";
    public static final String CATEGORY_SERVICE = "service";
    public static final String CATEGORY_SOCIAL = "social";
    public static final String CATEGORY_STATUS = "status";
    public static final String CATEGORY_SYSTEM = "sys";
    public static final String CATEGORY_TRANSPORT = "transport";
    private static final String KEY_AUTHOR = "author";
    private static final String KEY_MESSAGES = "messages";
    private static final String KEY_ON_READ = "on_read";
    private static final String KEY_ON_REPLY = "on_reply";
    private static final String KEY_PARTICIPANTS = "participants";
    private static final String KEY_REMOTE_INPUT = "remote_input";
    private static final String KEY_TEXT = "text";
    private static final String KEY_TIMESTAMP = "timestamp";

    NotificationCompatApi21() {
    }

    public static class Builder implements NotificationBuilderWithActions, NotificationBuilderWithBuilderAccessor {

        /* renamed from: b, reason: collision with root package name */
        private Notification.Builder f6b;

        public Builder(Context context, Notification n, CharSequence contentTitle, CharSequence contentText, CharSequence contentInfo, RemoteViews tickerView, int number, PendingIntent contentIntent, PendingIntent fullScreenIntent, Bitmap largeIcon, int progressMax, int progress, boolean progressIndeterminate, boolean showWhen, boolean useChronometer, int priority, CharSequence subText, boolean localOnly, String category, ArrayList<String> people, Bundle extras, int color, int visibility, Notification publicVersion, String groupKey, boolean groupSummary, String sortKey) {
            this.f6b = new Notification.Builder(context).setWhen(n.when).setShowWhen(showWhen).setSmallIcon(n.icon, n.iconLevel).setContent(n.contentView).setTicker(n.tickerText, tickerView).setSound(n.sound, n.audioStreamType).setVibrate(n.vibrate).setLights(n.ledARGB, n.ledOnMS, n.ledOffMS).setOngoing((n.flags & 2) != 0).setOnlyAlertOnce((n.flags & 8) != 0).setAutoCancel((n.flags & 16) != 0).setDefaults(n.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(n.deleteIntent).setFullScreenIntent(fullScreenIntent, (n.flags & 128) != 0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(useChronometer).setPriority(priority).setProgress(progressMax, progress, progressIndeterminate).setLocalOnly(localOnly).setExtras(extras).setGroup(groupKey).setGroupSummary(groupSummary).setSortKey(sortKey).setCategory(category).setColor(color).setVisibility(visibility).setPublicVersion(publicVersion);
            Iterator<String> it = people.iterator();
            while (it.hasNext()) {
                this.f6b.addPerson(it.next());
            }
        }

        @Override // android.support.v4.app.NotificationBuilderWithActions
        public void addAction(NotificationCompatBase.Action action) {
            NotificationCompatApi20.addAction(this.f6b, action);
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification.Builder getBuilder() {
            return this.f6b;
        }

        @Override // android.support.v4.app.NotificationBuilderWithBuilderAccessor
        public Notification build() {
            return this.f6b.build();
        }
    }

    public static String getCategory(Notification notif) {
        return notif.category;
    }

    static Bundle getBundleForUnreadConversation(NotificationCompatBase.UnreadConversation uc) {
        String str = null;
        if (uc == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        if (uc.getParticipants() != null && uc.getParticipants().length > 1) {
            str = uc.getParticipants()[0];
        }
        Parcelable[] parcelableArr = new Parcelable[uc.getMessages().length];
        for (int i = 0; i < parcelableArr.length; i++) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(KEY_TEXT, uc.getMessages()[i]);
            bundle2.putString(KEY_AUTHOR, str);
            parcelableArr[i] = bundle2;
        }
        bundle.putParcelableArray(KEY_MESSAGES, parcelableArr);
        RemoteInputCompatBase.RemoteInput remoteInput = uc.getRemoteInput();
        if (remoteInput != null) {
            bundle.putParcelable(KEY_REMOTE_INPUT, fromCompatRemoteInput(remoteInput));
        }
        bundle.putParcelable(KEY_ON_REPLY, uc.getReplyPendingIntent());
        bundle.putParcelable(KEY_ON_READ, uc.getReadPendingIntent());
        bundle.putStringArray(KEY_PARTICIPANTS, uc.getParticipants());
        bundle.putLong(KEY_TIMESTAMP, uc.getLatestTimestamp());
        return bundle;
    }

    static NotificationCompatBase.UnreadConversation getUnreadConversationFromBundle(Bundle b2, NotificationCompatBase.UnreadConversation.Factory factory, RemoteInputCompatBase.RemoteInput.Factory remoteInputFactory) {
        String[] strArr;
        boolean z = false;
        if (b2 == null) {
            return null;
        }
        Parcelable[] parcelableArray = b2.getParcelableArray(KEY_MESSAGES);
        if (parcelableArray != null) {
            String[] strArr2 = new String[parcelableArray.length];
            int i = 0;
            while (true) {
                if (i >= strArr2.length) {
                    z = true;
                    break;
                }
                if (!(parcelableArray[i] instanceof Bundle)) {
                    break;
                }
                strArr2[i] = ((Bundle) parcelableArray[i]).getString(KEY_TEXT);
                if (strArr2[i] == null) {
                    break;
                }
                i++;
            }
            if (!z) {
                return null;
            }
            strArr = strArr2;
        } else {
            strArr = null;
        }
        PendingIntent pendingIntent = (PendingIntent) b2.getParcelable(KEY_ON_READ);
        PendingIntent pendingIntent2 = (PendingIntent) b2.getParcelable(KEY_ON_REPLY);
        android.app.RemoteInput remoteInput = (android.app.RemoteInput) b2.getParcelable(KEY_REMOTE_INPUT);
        String[] stringArray = b2.getStringArray(KEY_PARTICIPANTS);
        if (stringArray == null || stringArray.length != 1) {
            return null;
        }
        return factory.build(strArr, remoteInput != null ? toCompatRemoteInput(remoteInput, remoteInputFactory) : null, pendingIntent2, pendingIntent, stringArray, b2.getLong(KEY_TIMESTAMP));
    }

    private static android.app.RemoteInput fromCompatRemoteInput(RemoteInputCompatBase.RemoteInput src) {
        return new RemoteInput.Builder(src.getResultKey()).setLabel(src.getLabel()).setChoices(src.getChoices()).setAllowFreeFormInput(src.getAllowFreeFormInput()).addExtras(src.getExtras()).build();
    }

    private static RemoteInputCompatBase.RemoteInput toCompatRemoteInput(android.app.RemoteInput remoteInput, RemoteInputCompatBase.RemoteInput.Factory factory) {
        return factory.build(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), remoteInput.getExtras());
    }
}
