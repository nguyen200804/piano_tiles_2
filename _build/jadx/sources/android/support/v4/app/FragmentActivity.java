package android.support.v4.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.ActivityCompatApi23;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.util.SimpleArrayMap;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
import org.apache.commons.io.FilenameUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FragmentActivity extends BaseFragmentActivityHoneycomb implements ActivityCompat.OnRequestPermissionsResultCallback, ActivityCompatApi23.RequestPermissionsRequestCodeValidator {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    MediaControllerCompat mMediaController;
    int mNextCandidateRequestIndex;
    boolean mOptionsMenuInvalidated;
    SparseArrayCompat<String> mPendingFragmentActivityResults;
    boolean mReallyStopped;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mRetaining;
    boolean mStartedActivityFromFragment;
    boolean mStopped;
    final Handler mHandler = new Handler() { // from class: android.support.v4.app.FragmentActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    if (FragmentActivity.this.mStopped) {
                        FragmentActivity.this.doReallyStop(false);
                        break;
                    }
                    break;
                case 2:
                    FragmentActivity.this.onResumeFragments();
                    FragmentActivity.this.mFragments.execPendingActions();
                    break;
                default:
                    super.handleMessage(msg);
                    break;
            }
        }
    };
    final FragmentController mFragments = FragmentController.createController(new HostCallbacks());

    @Override // android.support.v4.app.BaseFragmentActivityHoneycomb, android.app.Activity, android.view.LayoutInflater.Factory2
    public /* bridge */ /* synthetic */ View onCreateView(View x0, String x1, Context x2, AttributeSet x3) {
        return super.onCreateView(x0, x1, x2, x3);
    }

    @Override // android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity, android.view.LayoutInflater.Factory
    public /* bridge */ /* synthetic */ View onCreateView(String x0, Context x1, AttributeSet x2) {
        return super.onCreateView(x0, x1, x2);
    }

    static final class NonConfigurationInstances {
        Object custom;
        List<Fragment> fragments;
        SimpleArrayMap<String, LoaderManager> loaders;

        NonConfigurationInstances() {
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        this.mFragments.noteStateNotSaved();
        int i = requestCode >> 16;
        if (i != 0) {
            int i2 = i - 1;
            String str = this.mPendingFragmentActivityResults.get(i2);
            this.mPendingFragmentActivityResults.remove(i2);
            if (str == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment findFragmentByWho = this.mFragments.findFragmentByWho(str);
            if (findFragmentByWho == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + str);
                return;
            } else {
                findFragmentByWho.onActivityResult(65535 & requestCode, resultCode, data);
                return;
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.mFragments.getSupportFragmentManager().popBackStackImmediate()) {
            onBackPressedNotHandled();
        }
    }

    public final void setSupportMediaController(MediaControllerCompat mediaController) {
        this.mMediaController = mediaController;
        if (Build.VERSION.SDK_INT >= 21) {
            ActivityCompat21.setMediaController(this, mediaController.getMediaController());
        }
    }

    public final MediaControllerCompat getSupportMediaController() {
        return this.mMediaController;
    }

    public void supportFinishAfterTransition() {
        ActivityCompat.finishAfterTransition(this);
    }

    public void setEnterSharedElementCallback(SharedElementCallback callback) {
        ActivityCompat.setEnterSharedElementCallback(this, callback);
    }

    public void setExitSharedElementCallback(SharedElementCallback listener) {
        ActivityCompat.setExitSharedElementCallback(this, listener);
    }

    public void supportPostponeEnterTransition() {
        ActivityCompat.postponeEnterTransition(this);
    }

    public void supportStartPostponedEnterTransition() {
        ActivityCompat.startPostponedEnterTransition(this);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.mFragments.dispatchConfigurationChanged(newConfig);
    }

    @Override // android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        this.mFragments.attachHost(null);
        super.onCreate(savedInstanceState);
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            this.mFragments.restoreLoaderNonConfig(nonConfigurationInstances.loaders);
        }
        if (savedInstanceState != null) {
            this.mFragments.restoreAllState(savedInstanceState.getParcelable(FRAGMENTS_TAG), nonConfigurationInstances != null ? nonConfigurationInstances.fragments : null);
            if (savedInstanceState.containsKey(NEXT_CANDIDATE_REQUEST_INDEX_TAG)) {
                this.mNextCandidateRequestIndex = savedInstanceState.getInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG);
                int[] intArray = savedInstanceState.getIntArray(ALLOCATED_REQUEST_INDICIES_TAG);
                String[] stringArray = savedInstanceState.getStringArray(REQUEST_FRAGMENT_WHO_TAG);
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w(TAG, "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.mPendingFragmentActivityResults = new SparseArrayCompat<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.mPendingFragmentActivityResults.put(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new SparseArrayCompat<>();
            this.mNextCandidateRequestIndex = 0;
        }
        this.mFragments.dispatchCreate();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        if (featureId == 0) {
            boolean onCreatePanelMenu = super.onCreatePanelMenu(featureId, menu) | this.mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater());
            if (Build.VERSION.SDK_INT < 11) {
                return true;
            }
            return onCreatePanelMenu;
        }
        return super.onCreatePanelMenu(featureId, menu);
    }

    @Override // android.support.v4.app.BaseFragmentActivityDonut
    final View dispatchFragmentsOnCreateView(View parent, String name, Context context, AttributeSet attrs) {
        return this.mFragments.onCreateView(parent, name, context, attrs);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        doReallyStop(false);
        this.mFragments.dispatchDestroy();
        this.mFragments.doLoaderDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (Build.VERSION.SDK_INT >= 5 || keyCode != 4 || event.getRepeatCount() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        if (super.onMenuItemSelected(featureId, item)) {
            return true;
        }
        switch (featureId) {
            case 0:
                return this.mFragments.dispatchOptionsItemSelected(item);
            case 6:
                return this.mFragments.dispatchContextItemSelected(item);
            default:
                return false;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int featureId, Menu menu) {
        switch (featureId) {
            case 0:
                this.mFragments.dispatchOptionsMenuClosed(menu);
                break;
        }
        super.onPanelClosed(featureId, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            onResumeFragments();
        }
        this.mFragments.dispatchPause();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.noteStateNotSaved();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.noteStateNotSaved();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        onResumeFragments();
        this.mFragments.execPendingActions();
    }

    protected void onResumeFragments() {
        this.mFragments.dispatchResume();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        if (featureId != 0 || menu == null) {
            return super.onPreparePanel(featureId, view, menu);
        }
        if (this.mOptionsMenuInvalidated) {
            this.mOptionsMenuInvalidated = false;
            menu.clear();
            onCreatePanelMenu(featureId, menu);
        }
        return onPrepareOptionsPanel(view, menu) | this.mFragments.dispatchPrepareOptionsMenu(menu);
    }

    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            doReallyStop(true);
        }
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        List<Fragment> retainNonConfig = this.mFragments.retainNonConfig();
        SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig = this.mFragments.retainLoaderNonConfig();
        if (retainNonConfig == null && retainLoaderNonConfig == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.custom = onRetainCustomNonConfigurationInstance;
        nonConfigurationInstances.fragments = retainNonConfig;
        nonConfigurationInstances.loaders = retainLoaderNonConfig;
        return nonConfigurationInstances;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Parcelable saveAllState = this.mFragments.saveAllState();
        if (saveAllState != null) {
            outState.putParcelable(FRAGMENTS_TAG, saveAllState);
        }
        if (this.mPendingFragmentActivityResults.size() > 0) {
            outState.putInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG, this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.size()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.size()];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mPendingFragmentActivityResults.size()) {
                    iArr[i2] = this.mPendingFragmentActivityResults.keyAt(i2);
                    strArr[i2] = this.mPendingFragmentActivityResults.valueAt(i2);
                    i = i2 + 1;
                } else {
                    outState.putIntArray(ALLOCATED_REQUEST_INDICIES_TAG, iArr);
                    outState.putStringArray(REQUEST_FRAGMENT_WHO_TAG, strArr);
                    return;
                }
            }
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        this.mFragments.doLoaderStart();
        this.mFragments.dispatchStart();
        this.mFragments.reportLoaderStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.dispatchStop();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    public Object getLastCustomNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances) getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.custom;
        }
        return null;
    }

    public void supportInvalidateOptionsMenu() {
        if (Build.VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
        } else {
            this.mOptionsMenuInvalidated = true;
        }
    }

    @Override // android.app.Activity
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        if (Build.VERSION.SDK_INT >= 11) {
        }
        writer.print(prefix);
        writer.print("Local FragmentActivity ");
        writer.print(Integer.toHexString(System.identityHashCode(this)));
        writer.println(" State:");
        String str = prefix + "  ";
        writer.print(str);
        writer.print("mCreated=");
        writer.print(this.mCreated);
        writer.print("mResumed=");
        writer.print(this.mResumed);
        writer.print(" mStopped=");
        writer.print(this.mStopped);
        writer.print(" mReallyStopped=");
        writer.println(this.mReallyStopped);
        this.mFragments.dumpLoaders(str, fd, writer, args);
        this.mFragments.getSupportFragmentManager().dump(prefix, fd, writer, args);
        writer.print(prefix);
        writer.println("View Hierarchy:");
        dumpViewHierarchy(prefix + "  ", writer, getWindow().getDecorView());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x00ed. Please report as an issue. */
    private static String viewToString(View view) {
        String resourcePackageName;
        char c = FilenameUtils.EXTENSION_SEPARATOR;
        StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        switch (view.getVisibility()) {
            case 0:
                sb.append('V');
                break;
            case 4:
                sb.append('I');
                break;
            case 8:
                sb.append('G');
                break;
            default:
                sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                break;
        }
        sb.append(view.isFocusable() ? 'F' : '.');
        sb.append(view.isEnabled() ? 'E' : '.');
        sb.append(view.willNotDraw() ? '.' : 'D');
        sb.append(view.isHorizontalScrollBarEnabled() ? 'H' : '.');
        sb.append(view.isVerticalScrollBarEnabled() ? 'V' : '.');
        sb.append(view.isClickable() ? 'C' : '.');
        sb.append(view.isLongClickable() ? 'L' : '.');
        sb.append(' ');
        sb.append(view.isFocused() ? 'F' : '.');
        sb.append(view.isSelected() ? 'S' : '.');
        if (view.isPressed()) {
            c = 'P';
        }
        sb.append(c);
        sb.append(' ');
        sb.append(view.getLeft());
        sb.append(',');
        sb.append(view.getTop());
        sb.append('-');
        sb.append(view.getRight());
        sb.append(',');
        sb.append(view.getBottom());
        int id = view.getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = view.getResources();
            if (id != 0 && resources != null) {
                switch ((-16777216) & id) {
                    case ViewCompat.MEASURED_STATE_TOO_SMALL /* 16777216 */:
                        resourcePackageName = "android";
                        String resourceTypeName = resources.getResourceTypeName(id);
                        String resourceEntryName = resources.getResourceEntryName(id);
                        sb.append(" ");
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName);
                        sb.append("/");
                        sb.append(resourceEntryName);
                        break;
                    case 2130706432:
                        resourcePackageName = "app";
                        String resourceTypeName2 = resources.getResourceTypeName(id);
                        String resourceEntryName2 = resources.getResourceEntryName(id);
                        sb.append(" ");
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName2);
                        sb.append("/");
                        sb.append(resourceEntryName2);
                        break;
                    default:
                        try {
                            resourcePackageName = resources.getResourcePackageName(id);
                            String resourceTypeName22 = resources.getResourceTypeName(id);
                            String resourceEntryName22 = resources.getResourceEntryName(id);
                            sb.append(" ");
                            sb.append(resourcePackageName);
                            sb.append(":");
                            sb.append(resourceTypeName22);
                            sb.append("/");
                            sb.append(resourceEntryName22);
                            break;
                        } catch (Resources.NotFoundException e) {
                            break;
                        }
                }
            }
        }
        sb.append("}");
        return sb.toString();
    }

    private void dumpViewHierarchy(String prefix, PrintWriter writer, View view) {
        ViewGroup viewGroup;
        int childCount;
        writer.print(prefix);
        if (view == null) {
            writer.println("null");
            return;
        }
        writer.println(viewToString(view));
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) > 0) {
            String prefix2 = prefix + "  ";
            for (int i = 0; i < childCount; i++) {
                dumpViewHierarchy(prefix2, writer, viewGroup.getChildAt(i));
            }
        }
    }

    void doReallyStop(boolean retaining) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = retaining;
            this.mHandler.removeMessages(1);
            onReallyStop();
        }
    }

    void onReallyStop() {
        this.mFragments.doLoaderStop(this.mRetaining);
        this.mFragments.dispatchReallyStop();
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.getSupportFragmentManager();
    }

    public LoaderManager getSupportLoaderManager() {
        return this.mFragments.getSupportLoaderManager();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int requestCode) {
        if (!this.mStartedActivityFromFragment && requestCode != -1 && ((-65536) & requestCode) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, requestCode);
    }

    @Override // android.support.v4.app.ActivityCompatApi23.RequestPermissionsRequestCodeValidator
    public final void validateRequestPermissionsRequestCode(int requestCode) {
        if (!this.mRequestedPermissionsFromFragment && requestCode != -1 && ((-65536) & requestCode) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    @Override // android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        int i = (requestCode >> 16) & SupportMenu.USER_MASK;
        if (i != 0) {
            int i2 = i - 1;
            String str = this.mPendingFragmentActivityResults.get(i2);
            this.mPendingFragmentActivityResults.remove(i2);
            if (str == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment findFragmentByWho = this.mFragments.findFragmentByWho(str);
            if (findFragmentByWho == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + str);
            } else {
                findFragmentByWho.onRequestPermissionsResult(requestCode & SupportMenu.USER_MASK, permissions, grantResults);
            }
        }
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode) {
        startActivityFromFragment(fragment, intent, requestCode, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int requestCode, @Nullable Bundle options) {
        this.mStartedActivityFromFragment = true;
        try {
            if (requestCode == -1) {
                ActivityCompat.startActivityForResult(this, intent, -1, options);
            } else {
                if (((-65536) & requestCode) != 0) {
                    throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
                }
                ActivityCompat.startActivityForResult(this, intent, ((allocateRequestIndex(fragment) + 1) << 16) + (65535 & requestCode), options);
            }
        } finally {
            this.mStartedActivityFromFragment = false;
        }
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.size() >= MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.mPendingFragmentActivityResults.indexOfKey(this.mNextCandidateRequestIndex) >= 0) {
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
        }
        int i = this.mNextCandidateRequestIndex;
        this.mPendingFragmentActivityResults.put(i, fragment.mWho);
        this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestPermissionsFromFragment(Fragment fragment, String[] permissions, int requestCode) {
        if (requestCode == -1) {
            ActivityCompat.requestPermissions(this, permissions, requestCode);
        } else {
            if (((-65536) & requestCode) != 0) {
                throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
            }
            try {
                this.mRequestedPermissionsFromFragment = true;
                ActivityCompat.requestPermissions(this, permissions, ((allocateRequestIndex(fragment) + 1) << 16) + (65535 & requestCode));
            } finally {
                this.mRequestedPermissionsFromFragment = false;
            }
        }
    }

    class HostCallbacks extends FragmentHostCallback<FragmentActivity> {
        public HostCallbacks() {
            super(FragmentActivity.this);
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public void onDump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
            FragmentActivity.this.dump(prefix, fd, writer, args);
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public boolean onShouldSaveFragmentState(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public LayoutInflater onGetLayoutInflater() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.support.v4.app.FragmentHostCallback
        public FragmentActivity onGetHost() {
            return FragmentActivity.this;
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public void onSupportInvalidateOptionsMenu() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int requestCode) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, requestCode);
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int requestCode, @Nullable Bundle options) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, requestCode, options);
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public void onRequestPermissionsFromFragment(@NonNull Fragment fragment, @NonNull String[] permissions, int requestCode) {
            FragmentActivity.this.requestPermissionsFromFragment(fragment, permissions, requestCode);
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public boolean onShouldShowRequestPermissionRationale(@NonNull String permission) {
            return ActivityCompat.shouldShowRequestPermissionRationale(FragmentActivity.this, permission);
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public boolean onHasWindowAnimations() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public int onGetWindowAnimations() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // android.support.v4.app.FragmentHostCallback
        public void onAttachFragment(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // android.support.v4.app.FragmentHostCallback, android.support.v4.app.FragmentContainer
        @Nullable
        public View onFindViewById(int id) {
            return FragmentActivity.this.findViewById(id);
        }

        @Override // android.support.v4.app.FragmentHostCallback, android.support.v4.app.FragmentContainer
        public boolean onHasView() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }
    }
}
