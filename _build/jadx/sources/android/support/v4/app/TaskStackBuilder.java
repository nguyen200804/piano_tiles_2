package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class TaskStackBuilder implements Iterable<Intent> {
    private static final TaskStackBuilderImpl IMPL;
    private static final String TAG = "TaskStackBuilder";
    private final ArrayList<Intent> mIntents = new ArrayList<>();
    private final Context mSourceContext;

    public interface SupportParentable {
        Intent getSupportParentActivityIntent();
    }

    interface TaskStackBuilderImpl {
        PendingIntent getPendingIntent(Context context, Intent[] intentArr, int i, int i2, Bundle bundle);
    }

    static class TaskStackBuilderImplBase implements TaskStackBuilderImpl {
        TaskStackBuilderImplBase() {
        }

        @Override // android.support.v4.app.TaskStackBuilder.TaskStackBuilderImpl
        public PendingIntent getPendingIntent(Context context, Intent[] intents, int requestCode, int flags, Bundle options) {
            Intent intent = new Intent(intents[intents.length - 1]);
            intent.addFlags(268435456);
            return PendingIntent.getActivity(context, requestCode, intent, flags);
        }
    }

    static class TaskStackBuilderImplHoneycomb implements TaskStackBuilderImpl {
        TaskStackBuilderImplHoneycomb() {
        }

        @Override // android.support.v4.app.TaskStackBuilder.TaskStackBuilderImpl
        public PendingIntent getPendingIntent(Context context, Intent[] intents, int requestCode, int flags, Bundle options) {
            intents[0] = new Intent(intents[0]).addFlags(268484608);
            return TaskStackBuilderHoneycomb.getActivitiesPendingIntent(context, requestCode, intents, flags);
        }
    }

    static class TaskStackBuilderImplJellybean implements TaskStackBuilderImpl {
        TaskStackBuilderImplJellybean() {
        }

        @Override // android.support.v4.app.TaskStackBuilder.TaskStackBuilderImpl
        public PendingIntent getPendingIntent(Context context, Intent[] intents, int requestCode, int flags, Bundle options) {
            intents[0] = new Intent(intents[0]).addFlags(268484608);
            return TaskStackBuilderJellybean.getActivitiesPendingIntent(context, requestCode, intents, flags, options);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            IMPL = new TaskStackBuilderImplHoneycomb();
        } else {
            IMPL = new TaskStackBuilderImplBase();
        }
    }

    private TaskStackBuilder(Context a2) {
        this.mSourceContext = a2;
    }

    public static TaskStackBuilder create(Context context) {
        return new TaskStackBuilder(context);
    }

    public static TaskStackBuilder from(Context context) {
        return create(context);
    }

    public TaskStackBuilder addNextIntent(Intent nextIntent) {
        this.mIntents.add(nextIntent);
        return this;
    }

    public TaskStackBuilder addNextIntentWithParentStack(Intent nextIntent) {
        ComponentName component = nextIntent.getComponent();
        if (component == null) {
            component = nextIntent.resolveActivity(this.mSourceContext.getPackageManager());
        }
        if (component != null) {
            addParentStack(component);
        }
        addNextIntent(nextIntent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TaskStackBuilder addParentStack(Activity activity) {
        Intent intent = null;
        if (activity instanceof SupportParentable) {
            intent = ((SupportParentable) activity).getSupportParentActivityIntent();
        }
        Intent parentActivityIntent = intent == null ? NavUtils.getParentActivityIntent(activity) : intent;
        if (parentActivityIntent != null) {
            ComponentName component = parentActivityIntent.getComponent();
            if (component == null) {
                component = parentActivityIntent.resolveActivity(this.mSourceContext.getPackageManager());
            }
            addParentStack(component);
            addNextIntent(parentActivityIntent);
        }
        return this;
    }

    public TaskStackBuilder addParentStack(Class<?> sourceActivityClass) {
        return addParentStack(new ComponentName(this.mSourceContext, sourceActivityClass));
    }

    public TaskStackBuilder addParentStack(ComponentName sourceActivityName) {
        int size = this.mIntents.size();
        try {
            Intent parentActivityIntent = NavUtils.getParentActivityIntent(this.mSourceContext, sourceActivityName);
            while (parentActivityIntent != null) {
                this.mIntents.add(size, parentActivityIntent);
                parentActivityIntent = NavUtils.getParentActivityIntent(this.mSourceContext, parentActivityIntent.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public int getIntentCount() {
        return this.mIntents.size();
    }

    public Intent getIntent(int index) {
        return editIntentAt(index);
    }

    public Intent editIntentAt(int index) {
        return this.mIntents.get(index);
    }

    @Override // java.lang.Iterable
    public Iterator<Intent> iterator() {
        return this.mIntents.iterator();
    }

    public void startActivities() {
        startActivities(null);
    }

    public void startActivities(Bundle options) {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.mIntents.toArray(new Intent[this.mIntents.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (!ContextCompat.startActivities(this.mSourceContext, intentArr, options)) {
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.mSourceContext.startActivity(intent);
        }
    }

    public PendingIntent getPendingIntent(int requestCode, int flags) {
        return getPendingIntent(requestCode, flags, null);
    }

    public PendingIntent getPendingIntent(int requestCode, int flags, Bundle options) {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        Intent[] intentArr = (Intent[]) this.mIntents.toArray(new Intent[this.mIntents.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        return IMPL.getPendingIntent(this.mSourceContext, intentArr, requestCode, flags, options);
    }

    public Intent[] getIntents() {
        Intent[] intentArr = new Intent[this.mIntents.size()];
        if (intentArr.length == 0) {
            return intentArr;
        }
        intentArr[0] = new Intent(this.mIntents.get(0)).addFlags(268484608);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= intentArr.length) {
                return intentArr;
            }
            intentArr[i2] = new Intent(this.mIntents.get(i2));
            i = i2 + 1;
        }
    }
}
