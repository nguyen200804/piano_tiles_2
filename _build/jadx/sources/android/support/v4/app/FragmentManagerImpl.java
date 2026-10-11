package android.support.v4.app;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.support.v4.app.BackStackRecord;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.support.v4.view.LayoutInflaterFactory;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: FragmentManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class FragmentManagerImpl extends FragmentManager implements LayoutInflaterFactory {
    static final Interpolator ACCELERATE_CUBIC;
    static final Interpolator ACCELERATE_QUINT;
    static final int ANIM_DUR = 220;
    public static final int ANIM_STYLE_CLOSE_ENTER = 3;
    public static final int ANIM_STYLE_CLOSE_EXIT = 4;
    public static final int ANIM_STYLE_FADE_ENTER = 5;
    public static final int ANIM_STYLE_FADE_EXIT = 6;
    public static final int ANIM_STYLE_OPEN_ENTER = 1;
    public static final int ANIM_STYLE_OPEN_EXIT = 2;
    static boolean DEBUG = false;
    static final Interpolator DECELERATE_CUBIC;
    static final Interpolator DECELERATE_QUINT;
    static final boolean HONEYCOMB;
    static final String TAG = "FragmentManager";
    static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
    static final String TARGET_STATE_TAG = "android:target_state";
    static final String USER_VISIBLE_HINT_TAG = "android:user_visible_hint";
    static final String VIEW_STATE_TAG = "android:view_state";
    static Field sAnimationListenerField;
    ArrayList<Fragment> mActive;
    ArrayList<Fragment> mAdded;
    ArrayList<Integer> mAvailBackStackIndices;
    ArrayList<Integer> mAvailIndices;
    ArrayList<BackStackRecord> mBackStack;
    ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
    ArrayList<BackStackRecord> mBackStackIndices;
    FragmentContainer mContainer;
    FragmentController mController;
    ArrayList<Fragment> mCreatedMenus;
    boolean mDestroyed;
    boolean mExecutingActions;
    boolean mHavePendingDeferredStart;
    FragmentHostCallback mHost;
    boolean mNeedMenuInvalidate;
    String mNoTransactionsBecause;
    Fragment mParent;
    ArrayList<Runnable> mPendingActions;
    boolean mStateSaved;
    Runnable[] mTmpActions;
    int mCurState = 0;
    Bundle mStateBundle = null;
    SparseArray<Parcelable> mStateArray = null;
    Runnable mExecCommit = new Runnable() { // from class: android.support.v4.app.FragmentManagerImpl.1
        @Override // java.lang.Runnable
        public void run() {
            FragmentManagerImpl.this.execPendingActions();
        }
    };

    FragmentManagerImpl() {
    }

    static {
        HONEYCOMB = Build.VERSION.SDK_INT >= 11;
        sAnimationListenerField = null;
        DECELERATE_QUINT = new DecelerateInterpolator(2.5f);
        DECELERATE_CUBIC = new DecelerateInterpolator(1.5f);
        ACCELERATE_QUINT = new AccelerateInterpolator(2.5f);
        ACCELERATE_CUBIC = new AccelerateInterpolator(1.5f);
    }

    /* compiled from: FragmentManager.java */
    static class AnimateOnHWLayerIfNeededListener implements Animation.AnimationListener {
        private Animation.AnimationListener mOrignalListener;
        private boolean mShouldRunOnHWLayer;
        private View mView;

        public AnimateOnHWLayerIfNeededListener(View v, Animation anim) {
            this.mOrignalListener = null;
            this.mShouldRunOnHWLayer = false;
            this.mView = null;
            if (v != null && anim != null) {
                this.mView = v;
            }
        }

        public AnimateOnHWLayerIfNeededListener(View v, Animation anim, Animation.AnimationListener listener) {
            this.mOrignalListener = null;
            this.mShouldRunOnHWLayer = false;
            this.mView = null;
            if (v != null && anim != null) {
                this.mOrignalListener = listener;
                this.mView = v;
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        @CallSuper
        public void onAnimationStart(Animation animation) {
            if (this.mView != null) {
                this.mShouldRunOnHWLayer = FragmentManagerImpl.shouldRunOnHWLayer(this.mView, animation);
                if (this.mShouldRunOnHWLayer) {
                    this.mView.post(new Runnable() { // from class: android.support.v4.app.FragmentManagerImpl.AnimateOnHWLayerIfNeededListener.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 2, null);
                        }
                    });
                }
            }
            if (this.mOrignalListener != null) {
                this.mOrignalListener.onAnimationStart(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        @CallSuper
        public void onAnimationEnd(Animation animation) {
            if (this.mView != null && this.mShouldRunOnHWLayer) {
                this.mView.post(new Runnable() { // from class: android.support.v4.app.FragmentManagerImpl.AnimateOnHWLayerIfNeededListener.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ViewCompat.setLayerType(AnimateOnHWLayerIfNeededListener.this.mView, 0, null);
                    }
                });
            }
            if (this.mOrignalListener != null) {
                this.mOrignalListener.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            if (this.mOrignalListener != null) {
                this.mOrignalListener.onAnimationRepeat(animation);
            }
        }
    }

    static boolean modifiesAlpha(Animation anim) {
        if (anim instanceof AlphaAnimation) {
            return true;
        }
        if (!(anim instanceof AnimationSet)) {
            return false;
        }
        List<Animation> animations = ((AnimationSet) anim).getAnimations();
        for (int i = 0; i < animations.size(); i++) {
            if (animations.get(i) instanceof AlphaAnimation) {
                return true;
            }
        }
        return false;
    }

    static boolean shouldRunOnHWLayer(View v, Animation anim) {
        return Build.VERSION.SDK_INT >= 19 && ViewCompat.getLayerType(v) == 0 && ViewCompat.hasOverlappingRendering(v) && modifiesAlpha(anim);
    }

    private void throwException(RuntimeException ex) {
        Log.e(TAG, ex.getMessage());
        Log.e(TAG, "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
        if (this.mHost != null) {
            try {
                this.mHost.onDump("  ", null, printWriter, new String[0]);
                throw ex;
            } catch (Exception e) {
                Log.e(TAG, "Failed dumping state", e);
                throw ex;
            }
        }
        try {
            dump("  ", null, printWriter, new String[0]);
            throw ex;
        } catch (Exception e2) {
            Log.e(TAG, "Failed dumping state", e2);
            throw ex;
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean executePendingTransactions() {
        return execPendingActions();
    }

    @Override // android.support.v4.app.FragmentManager
    public void popBackStack() {
        enqueueAction(new Runnable() { // from class: android.support.v4.app.FragmentManagerImpl.2
            @Override // java.lang.Runnable
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, -1, 0);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean popBackStackImmediate() {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), null, -1, 0);
    }

    @Override // android.support.v4.app.FragmentManager
    public void popBackStack(final String name, final int flags) {
        enqueueAction(new Runnable() { // from class: android.support.v4.app.FragmentManagerImpl.3
            @Override // java.lang.Runnable
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), name, -1, flags);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean popBackStackImmediate(String name, int flags) {
        checkStateLoss();
        executePendingTransactions();
        return popBackStackState(this.mHost.getHandler(), name, -1, flags);
    }

    @Override // android.support.v4.app.FragmentManager
    public void popBackStack(final int id, final int flags) {
        if (id < 0) {
            throw new IllegalArgumentException("Bad id: " + id);
        }
        enqueueAction(new Runnable() { // from class: android.support.v4.app.FragmentManagerImpl.4
            @Override // java.lang.Runnable
            public void run() {
                FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mHost.getHandler(), null, id, flags);
            }
        }, false);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean popBackStackImmediate(int id, int flags) {
        checkStateLoss();
        executePendingTransactions();
        if (id < 0) {
            throw new IllegalArgumentException("Bad id: " + id);
        }
        return popBackStackState(this.mHost.getHandler(), null, id, flags);
    }

    @Override // android.support.v4.app.FragmentManager
    public int getBackStackEntryCount() {
        if (this.mBackStack != null) {
            return this.mBackStack.size();
        }
        return 0;
    }

    @Override // android.support.v4.app.FragmentManager
    public FragmentManager.BackStackEntry getBackStackEntryAt(int index) {
        return this.mBackStack.get(index);
    }

    @Override // android.support.v4.app.FragmentManager
    public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener listener) {
        if (this.mBackStackChangeListeners == null) {
            this.mBackStackChangeListeners = new ArrayList<>();
        }
        this.mBackStackChangeListeners.add(listener);
    }

    @Override // android.support.v4.app.FragmentManager
    public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener listener) {
        if (this.mBackStackChangeListeners != null) {
            this.mBackStackChangeListeners.remove(listener);
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public void putFragment(Bundle bundle, String key, Fragment fragment) {
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(key, fragment.mIndex);
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment getFragment(Bundle bundle, String key) {
        int i = bundle.getInt(key, -1);
        if (i == -1) {
            return null;
        }
        if (i >= this.mActive.size()) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + key + ": index " + i));
        }
        Fragment fragment = this.mActive.get(i);
        if (fragment == null) {
            throwException(new IllegalStateException("Fragment no longer exists for key " + key + ": index " + i));
            return fragment;
        }
        return fragment;
    }

    @Override // android.support.v4.app.FragmentManager
    public List<Fragment> getFragments() {
        return this.mActive;
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment.SavedState saveFragmentInstanceState(Fragment fragment) {
        Bundle saveFragmentBasicState;
        if (fragment.mIndex < 0) {
            throwException(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (fragment.mState <= 0 || (saveFragmentBasicState = saveFragmentBasicState(fragment)) == null) {
            return null;
        }
        return new Fragment.SavedState(saveFragmentBasicState);
    }

    @Override // android.support.v4.app.FragmentManager
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.mParent != null) {
            DebugUtils.buildShortClassTag(this.mParent, sb);
        } else {
            DebugUtils.buildShortClassTag(this.mHost, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    @Override // android.support.v4.app.FragmentManager
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        int size6;
        String str = prefix + "    ";
        if (this.mActive != null && (size6 = this.mActive.size()) > 0) {
            writer.print(prefix);
            writer.print("Active Fragments in ");
            writer.print(Integer.toHexString(System.identityHashCode(this)));
            writer.println(":");
            for (int i = 0; i < size6; i++) {
                Fragment fragment = this.mActive.get(i);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i);
                writer.print(": ");
                writer.println(fragment);
                if (fragment != null) {
                    fragment.dump(str, fd, writer, args);
                }
            }
        }
        if (this.mAdded != null && (size5 = this.mAdded.size()) > 0) {
            writer.print(prefix);
            writer.println("Added Fragments:");
            for (int i2 = 0; i2 < size5; i2++) {
                Fragment fragment2 = this.mAdded.get(i2);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i2);
                writer.print(": ");
                writer.println(fragment2.toString());
            }
        }
        if (this.mCreatedMenus != null && (size4 = this.mCreatedMenus.size()) > 0) {
            writer.print(prefix);
            writer.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size4; i3++) {
                Fragment fragment3 = this.mCreatedMenus.get(i3);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i3);
                writer.print(": ");
                writer.println(fragment3.toString());
            }
        }
        if (this.mBackStack != null && (size3 = this.mBackStack.size()) > 0) {
            writer.print(prefix);
            writer.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                BackStackRecord backStackRecord = this.mBackStack.get(i4);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i4);
                writer.print(": ");
                writer.println(backStackRecord.toString());
                backStackRecord.dump(str, fd, writer, args);
            }
        }
        synchronized (this) {
            if (this.mBackStackIndices != null && (size2 = this.mBackStackIndices.size()) > 0) {
                writer.print(prefix);
                writer.println("Back Stack Indices:");
                for (int i5 = 0; i5 < size2; i5++) {
                    Object obj = (BackStackRecord) this.mBackStackIndices.get(i5);
                    writer.print(prefix);
                    writer.print("  #");
                    writer.print(i5);
                    writer.print(": ");
                    writer.println(obj);
                }
            }
            if (this.mAvailBackStackIndices != null && this.mAvailBackStackIndices.size() > 0) {
                writer.print(prefix);
                writer.print("mAvailBackStackIndices: ");
                writer.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
            }
        }
        if (this.mPendingActions != null && (size = this.mPendingActions.size()) > 0) {
            writer.print(prefix);
            writer.println("Pending Actions:");
            for (int i6 = 0; i6 < size; i6++) {
                Object obj2 = (Runnable) this.mPendingActions.get(i6);
                writer.print(prefix);
                writer.print("  #");
                writer.print(i6);
                writer.print(": ");
                writer.println(obj2);
            }
        }
        writer.print(prefix);
        writer.println("FragmentManager misc state:");
        writer.print(prefix);
        writer.print("  mHost=");
        writer.println(this.mHost);
        writer.print(prefix);
        writer.print("  mContainer=");
        writer.println(this.mContainer);
        if (this.mParent != null) {
            writer.print(prefix);
            writer.print("  mParent=");
            writer.println(this.mParent);
        }
        writer.print(prefix);
        writer.print("  mCurState=");
        writer.print(this.mCurState);
        writer.print(" mStateSaved=");
        writer.print(this.mStateSaved);
        writer.print(" mDestroyed=");
        writer.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate) {
            writer.print(prefix);
            writer.print("  mNeedMenuInvalidate=");
            writer.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null) {
            writer.print(prefix);
            writer.print("  mNoTransactionsBecause=");
            writer.println(this.mNoTransactionsBecause);
        }
        if (this.mAvailIndices != null && this.mAvailIndices.size() > 0) {
            writer.print(prefix);
            writer.print("  mAvailIndices: ");
            writer.println(Arrays.toString(this.mAvailIndices.toArray()));
        }
    }

    static Animation makeOpenCloseAnimation(Context context, float startScale, float endScale, float startAlpha, float endAlpha) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(startScale, endScale, startScale, endScale, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(DECELERATE_QUINT);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(startAlpha, endAlpha);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    static Animation makeFadeAnimation(Context context, float start, float end) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(start, end);
        alphaAnimation.setInterpolator(DECELERATE_CUBIC);
        alphaAnimation.setDuration(220L);
        return alphaAnimation;
    }

    Animation loadAnimation(Fragment fragment, int transit, boolean enter, int transitionStyle) {
        int transitToStyleIndex;
        Animation loadAnimation;
        Animation onCreateAnimation = fragment.onCreateAnimation(transit, enter, fragment.mNextAnim);
        if (onCreateAnimation == null) {
            if (fragment.mNextAnim == 0 || (loadAnimation = AnimationUtils.loadAnimation(this.mHost.getContext(), fragment.mNextAnim)) == null) {
                if (transit != 0 && (transitToStyleIndex = transitToStyleIndex(transit, enter)) >= 0) {
                    switch (transitToStyleIndex) {
                        case 1:
                            return makeOpenCloseAnimation(this.mHost.getContext(), 1.125f, 1.0f, 0.0f, 1.0f);
                        case 2:
                            return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 0.975f, 1.0f, 0.0f);
                        case 3:
                            return makeOpenCloseAnimation(this.mHost.getContext(), 0.975f, 1.0f, 0.0f, 1.0f);
                        case 4:
                            return makeOpenCloseAnimation(this.mHost.getContext(), 1.0f, 1.075f, 1.0f, 0.0f);
                        case 5:
                            return makeFadeAnimation(this.mHost.getContext(), 0.0f, 1.0f);
                        case 6:
                            return makeFadeAnimation(this.mHost.getContext(), 1.0f, 0.0f);
                        default:
                            if (transitionStyle == 0 && this.mHost.onHasWindowAnimations()) {
                                transitionStyle = this.mHost.onGetWindowAnimations();
                            }
                            return transitionStyle == 0 ? null : null;
                    }
                }
                return null;
            }
            return loadAnimation;
        }
        return onCreateAnimation;
    }

    public void performPendingDeferredStart(Fragment f) {
        if (f.mDeferStart) {
            if (this.mExecutingActions) {
                this.mHavePendingDeferredStart = true;
            } else {
                f.mDeferStart = false;
                moveToState(f, this.mCurState, 0, 0, false);
            }
        }
    }

    private void setHWLayerAnimListenerIfAlpha(View v, Animation anim) {
        Animation.AnimationListener animationListener;
        if (v != null && anim != null && shouldRunOnHWLayer(v, anim)) {
            try {
                if (sAnimationListenerField == null) {
                    sAnimationListenerField = Animation.class.getDeclaredField("mListener");
                    sAnimationListenerField.setAccessible(true);
                }
                animationListener = (Animation.AnimationListener) sAnimationListenerField.get(anim);
            } catch (IllegalAccessException e) {
                Log.e(TAG, "Cannot access Animation's mListener field", e);
                animationListener = null;
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, "No field with the name mListener is found in Animation class", e2);
                animationListener = null;
            }
            anim.setAnimationListener(new AnimateOnHWLayerIfNeededListener(v, anim, animationListener));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0045 A[FALL_THROUGH, PHI: r12
  0x0045: PHI (r12v6 'newState' int) = 
  (r12v4 'newState' int)
  (r12v4 'newState' int)
  (r12v4 'newState' int)
  (r12v4 'newState' int)
  (r12v4 'newState' int)
  (r12v4 'newState' int)
  (r12v5 'newState' int)
  (r12v4 'newState' int)
  (r12v7 'newState' int)
  (r12v7 'newState' int)
 binds: [B:119:0x02ac, B:121:0x02b0, B:122:0x02b5, B:141:0x03f0, B:145:0x03fb, B:144:0x03f6, B:130:0x02ca, B:28:0x0042, B:113:0x0268, B:117:0x0286] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void moveToState(final android.support.v4.app.Fragment r11, int r12, int r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.moveToState(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    void moveToState(Fragment f) {
        moveToState(f, this.mCurState, 0, 0, false);
    }

    void moveToState(int newState, boolean always) {
        moveToState(newState, 0, 0, always);
    }

    void moveToState(int newState, int transit, int transitStyle, boolean always) {
        if (this.mHost == null && newState != 0) {
            throw new IllegalStateException("No host");
        }
        if (always || this.mCurState != newState) {
            this.mCurState = newState;
            if (this.mActive != null) {
                int i = 0;
                boolean z = false;
                while (i < this.mActive.size()) {
                    Fragment fragment = this.mActive.get(i);
                    if (fragment != null) {
                        moveToState(fragment, newState, transit, transitStyle, false);
                        if (fragment.mLoaderManager != null) {
                            z |= fragment.mLoaderManager.hasRunningLoaders();
                        }
                    }
                    i++;
                    z = z;
                }
                if (!z) {
                    startPendingDeferredFragments();
                }
                if (this.mNeedMenuInvalidate && this.mHost != null && this.mCurState == 5) {
                    this.mHost.onSupportInvalidateOptionsMenu();
                    this.mNeedMenuInvalidate = false;
                }
            }
        }
    }

    void startPendingDeferredFragments() {
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mActive.size()) {
                    Fragment fragment = this.mActive.get(i2);
                    if (fragment != null) {
                        performPendingDeferredStart(fragment);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    void makeActive(Fragment f) {
        if (f.mIndex < 0) {
            if (this.mAvailIndices == null || this.mAvailIndices.size() <= 0) {
                if (this.mActive == null) {
                    this.mActive = new ArrayList<>();
                }
                f.setIndex(this.mActive.size(), this.mParent);
                this.mActive.add(f);
            } else {
                f.setIndex(this.mAvailIndices.remove(this.mAvailIndices.size() - 1).intValue(), this.mParent);
                this.mActive.set(f.mIndex, f);
            }
            if (DEBUG) {
                Log.v(TAG, "Allocated fragment index " + f);
            }
        }
    }

    void makeInactive(Fragment f) {
        if (f.mIndex >= 0) {
            if (DEBUG) {
                Log.v(TAG, "Freeing fragment index " + f);
            }
            this.mActive.set(f.mIndex, null);
            if (this.mAvailIndices == null) {
                this.mAvailIndices = new ArrayList<>();
            }
            this.mAvailIndices.add(Integer.valueOf(f.mIndex));
            this.mHost.inactivateFragment(f.mWho);
            f.initState();
        }
    }

    public void addFragment(Fragment fragment, boolean moveToStateNow) {
        if (this.mAdded == null) {
            this.mAdded = new ArrayList<>();
        }
        if (DEBUG) {
            Log.v(TAG, "add: " + fragment);
        }
        makeActive(fragment);
        if (!fragment.mDetached) {
            if (this.mAdded.contains(fragment)) {
                throw new IllegalStateException("Fragment already added: " + fragment);
            }
            this.mAdded.add(fragment);
            fragment.mAdded = true;
            fragment.mRemoving = false;
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            if (moveToStateNow) {
                moveToState(fragment);
            }
        }
    }

    public void removeFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean z = !fragment.isInBackStack();
        if (!fragment.mDetached || z) {
            if (this.mAdded != null) {
                this.mAdded.remove(fragment);
            }
            if (fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.mAdded = false;
            fragment.mRemoving = true;
            moveToState(fragment, z ? 0 : 1, transition, transitionStyle, false);
        }
    }

    public void hideFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, transition, false, transitionStyle);
                if (loadAnimation != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(8);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(true);
        }
    }

    public void showFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            if (fragment.mView != null) {
                Animation loadAnimation = loadAnimation(fragment, transition, true, transitionStyle);
                if (loadAnimation != null) {
                    setHWLayerAnimListenerIfAlpha(fragment.mView, loadAnimation);
                    fragment.mView.startAnimation(loadAnimation);
                }
                fragment.mView.setVisibility(0);
            }
            if (fragment.mAdded && fragment.mHasMenu && fragment.mMenuVisible) {
                this.mNeedMenuInvalidate = true;
            }
            fragment.onHiddenChanged(false);
        }
    }

    public void detachFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (this.mAdded != null) {
                    if (DEBUG) {
                        Log.v(TAG, "remove from detach: " + fragment);
                    }
                    this.mAdded.remove(fragment);
                }
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                fragment.mAdded = false;
                moveToState(fragment, 1, transition, transitionStyle, false);
            }
        }
    }

    public void attachFragment(Fragment fragment, int transition, int transitionStyle) {
        if (DEBUG) {
            Log.v(TAG, "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                if (this.mAdded == null) {
                    this.mAdded = new ArrayList<>();
                }
                if (this.mAdded.contains(fragment)) {
                    throw new IllegalStateException("Fragment already added: " + fragment);
                }
                if (DEBUG) {
                    Log.v(TAG, "add from attach: " + fragment);
                }
                this.mAdded.add(fragment);
                fragment.mAdded = true;
                if (fragment.mHasMenu && fragment.mMenuVisible) {
                    this.mNeedMenuInvalidate = true;
                }
                moveToState(fragment, this.mCurState, transition, transitionStyle, false);
            }
        }
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment findFragmentById(int id) {
        if (this.mAdded != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && fragment.mFragmentId == id) {
                    return fragment;
                }
            }
        }
        if (this.mActive != null) {
            for (int size2 = this.mActive.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.mActive.get(size2);
                if (fragment2 != null && fragment2.mFragmentId == id) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    @Override // android.support.v4.app.FragmentManager
    public Fragment findFragmentByTag(String tag) {
        if (this.mAdded != null && tag != null) {
            for (int size = this.mAdded.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mAdded.get(size);
                if (fragment != null && tag.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (this.mActive != null && tag != null) {
            for (int size2 = this.mActive.size() - 1; size2 >= 0; size2--) {
                Fragment fragment2 = this.mActive.get(size2);
                if (fragment2 != null && tag.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public Fragment findFragmentByWho(String who) {
        Fragment findFragmentByWho;
        if (this.mActive != null && who != null) {
            for (int size = this.mActive.size() - 1; size >= 0; size--) {
                Fragment fragment = this.mActive.get(size);
                if (fragment != null && (findFragmentByWho = fragment.findFragmentByWho(who)) != null) {
                    return findFragmentByWho;
                }
            }
        }
        return null;
    }

    private void checkStateLoss() {
        if (this.mStateSaved) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.mNoTransactionsBecause != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
        }
    }

    public void enqueueAction(Runnable action, boolean allowStateLoss) {
        if (!allowStateLoss) {
            checkStateLoss();
        }
        synchronized (this) {
            if (this.mDestroyed || this.mHost == null) {
                throw new IllegalStateException("Activity has been destroyed");
            }
            if (this.mPendingActions == null) {
                this.mPendingActions = new ArrayList<>();
            }
            this.mPendingActions.add(action);
            if (this.mPendingActions.size() == 1) {
                this.mHost.getHandler().removeCallbacks(this.mExecCommit);
                this.mHost.getHandler().post(this.mExecCommit);
            }
        }
    }

    public int allocBackStackIndex(BackStackRecord bse) {
        int size;
        synchronized (this) {
            if (this.mAvailBackStackIndices == null || this.mAvailBackStackIndices.size() <= 0) {
                if (this.mBackStackIndices == null) {
                    this.mBackStackIndices = new ArrayList<>();
                }
                size = this.mBackStackIndices.size();
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + size + " to " + bse);
                }
                this.mBackStackIndices.add(bse);
            } else {
                size = this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1).intValue();
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + size + " with " + bse);
                }
                this.mBackStackIndices.set(size, bse);
            }
        }
        return size;
    }

    public void setBackStackIndex(int index, BackStackRecord bse) {
        synchronized (this) {
            if (this.mBackStackIndices == null) {
                this.mBackStackIndices = new ArrayList<>();
            }
            int size = this.mBackStackIndices.size();
            if (index < size) {
                if (DEBUG) {
                    Log.v(TAG, "Setting back stack index " + index + " to " + bse);
                }
                this.mBackStackIndices.set(index, bse);
            } else {
                while (size < index) {
                    this.mBackStackIndices.add(null);
                    if (this.mAvailBackStackIndices == null) {
                        this.mAvailBackStackIndices = new ArrayList<>();
                    }
                    if (DEBUG) {
                        Log.v(TAG, "Adding available back stack index " + size);
                    }
                    this.mAvailBackStackIndices.add(Integer.valueOf(size));
                    size++;
                }
                if (DEBUG) {
                    Log.v(TAG, "Adding back stack index " + index + " with " + bse);
                }
                this.mBackStackIndices.add(bse);
            }
        }
    }

    public void freeBackStackIndex(int index) {
        synchronized (this) {
            this.mBackStackIndices.set(index, null);
            if (this.mAvailBackStackIndices == null) {
                this.mAvailBackStackIndices = new ArrayList<>();
            }
            if (DEBUG) {
                Log.v(TAG, "Freeing back stack index " + index);
            }
            this.mAvailBackStackIndices.add(Integer.valueOf(index));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0087, code lost:
    
        r6.mExecutingActions = true;
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008a, code lost:
    
        if (r1 >= r3) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008c, code lost:
    
        r6.mTmpActions[r1].run();
        r6.mTmpActions[r1] = null;
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean execPendingActions() {
        /*
            r6 = this;
            r0 = 1
            r2 = 0
            boolean r1 = r6.mExecutingActions
            if (r1 == 0) goto Le
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Recursive entry to executePendingTransactions"
            r0.<init>(r1)
            throw r0
        Le:
            android.os.Looper r1 = android.os.Looper.myLooper()
            android.support.v4.app.FragmentHostCallback r3 = r6.mHost
            android.os.Handler r3 = r3.getHandler()
            android.os.Looper r3 = r3.getLooper()
            if (r1 == r3) goto L26
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Must be called from main thread of process"
            r0.<init>(r1)
            throw r0
        L26:
            r1 = r2
        L27:
            monitor-enter(r6)
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch: java.lang.Throwable -> L9b
            if (r3 == 0) goto L34
            java.util.ArrayList<java.lang.Runnable> r3 = r6.mPendingActions     // Catch: java.lang.Throwable -> L9b
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L9b
            if (r3 != 0) goto L5c
        L34:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L9b
            boolean r0 = r6.mHavePendingDeferredStart
            if (r0 == 0) goto La9
            r3 = r2
            r4 = r2
        L3b:
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r6.mActive
            int r0 = r0.size()
            if (r3 >= r0) goto La2
            java.util.ArrayList<android.support.v4.app.Fragment> r0 = r6.mActive
            java.lang.Object r0 = r0.get(r3)
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            if (r0 == 0) goto L58
            android.support.v4.app.LoaderManagerImpl r5 = r0.mLoaderManager
            if (r5 == 0) goto L58
            android.support.v4.app.LoaderManagerImpl r0 = r0.mLoaderManager
            boolean r0 = r0.hasRunningLoaders()
            r4 = r4 | r0
        L58:
            int r0 = r3 + 1
            r3 = r0
            goto L3b
        L5c:
            java.util.ArrayList<java.lang.Runnable> r1 = r6.mPendingActions     // Catch: java.lang.Throwable -> L9b
            int r3 = r1.size()     // Catch: java.lang.Throwable -> L9b
            java.lang.Runnable[] r1 = r6.mTmpActions     // Catch: java.lang.Throwable -> L9b
            if (r1 == 0) goto L6b
            java.lang.Runnable[] r1 = r6.mTmpActions     // Catch: java.lang.Throwable -> L9b
            int r1 = r1.length     // Catch: java.lang.Throwable -> L9b
            if (r1 >= r3) goto L6f
        L6b:
            java.lang.Runnable[] r1 = new java.lang.Runnable[r3]     // Catch: java.lang.Throwable -> L9b
            r6.mTmpActions = r1     // Catch: java.lang.Throwable -> L9b
        L6f:
            java.util.ArrayList<java.lang.Runnable> r1 = r6.mPendingActions     // Catch: java.lang.Throwable -> L9b
            java.lang.Runnable[] r4 = r6.mTmpActions     // Catch: java.lang.Throwable -> L9b
            r1.toArray(r4)     // Catch: java.lang.Throwable -> L9b
            java.util.ArrayList<java.lang.Runnable> r1 = r6.mPendingActions     // Catch: java.lang.Throwable -> L9b
            r1.clear()     // Catch: java.lang.Throwable -> L9b
            android.support.v4.app.FragmentHostCallback r1 = r6.mHost     // Catch: java.lang.Throwable -> L9b
            android.os.Handler r1 = r1.getHandler()     // Catch: java.lang.Throwable -> L9b
            java.lang.Runnable r4 = r6.mExecCommit     // Catch: java.lang.Throwable -> L9b
            r1.removeCallbacks(r4)     // Catch: java.lang.Throwable -> L9b
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L9b
            r6.mExecutingActions = r0
            r1 = r2
        L8a:
            if (r1 >= r3) goto L9e
            java.lang.Runnable[] r4 = r6.mTmpActions
            r4 = r4[r1]
            r4.run()
            java.lang.Runnable[] r4 = r6.mTmpActions
            r5 = 0
            r4[r1] = r5
            int r1 = r1 + 1
            goto L8a
        L9b:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L9b
            throw r0
        L9e:
            r6.mExecutingActions = r2
            r1 = r0
            goto L27
        La2:
            if (r4 != 0) goto La9
            r6.mHavePendingDeferredStart = r2
            r6.startPendingDeferredFragments()
        La9:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.FragmentManagerImpl.execPendingActions():boolean");
    }

    void reportBackStackChanged() {
        if (this.mBackStackChangeListeners != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mBackStackChangeListeners.size()) {
                    this.mBackStackChangeListeners.get(i2).onBackStackChanged();
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    void addBackStackState(BackStackRecord state) {
        if (this.mBackStack == null) {
            this.mBackStack = new ArrayList<>();
        }
        this.mBackStack.add(state);
        reportBackStackChanged();
    }

    boolean popBackStackState(Handler handler, String name, int id, int flags) {
        if (this.mBackStack == null) {
            return false;
        }
        if (name == null && id < 0 && (flags & 1) == 0) {
            int size = this.mBackStack.size() - 1;
            if (size < 0) {
                return false;
            }
            BackStackRecord remove = this.mBackStack.remove(size);
            SparseArray<Fragment> sparseArray = new SparseArray<>();
            SparseArray<Fragment> sparseArray2 = new SparseArray<>();
            remove.calculateBackFragments(sparseArray, sparseArray2);
            remove.popFromBackStack(true, null, sparseArray, sparseArray2);
            reportBackStackChanged();
        } else {
            int i = -1;
            if (name != null || id >= 0) {
                int size2 = this.mBackStack.size() - 1;
                while (size2 >= 0) {
                    BackStackRecord backStackRecord = this.mBackStack.get(size2);
                    if ((name != null && name.equals(backStackRecord.getName())) || (id >= 0 && id == backStackRecord.mIndex)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((flags & 1) != 0) {
                    size2--;
                    while (size2 >= 0) {
                        BackStackRecord backStackRecord2 = this.mBackStack.get(size2);
                        if ((name == null || !name.equals(backStackRecord2.getName())) && (id < 0 || id != backStackRecord2.mIndex)) {
                            break;
                        }
                        size2--;
                    }
                }
                i = size2;
            }
            if (i == this.mBackStack.size() - 1) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int size3 = this.mBackStack.size() - 1; size3 > i; size3--) {
                arrayList.add(this.mBackStack.remove(size3));
            }
            int size4 = arrayList.size() - 1;
            SparseArray<Fragment> sparseArray3 = new SparseArray<>();
            SparseArray<Fragment> sparseArray4 = new SparseArray<>();
            for (int i2 = 0; i2 <= size4; i2++) {
                ((BackStackRecord) arrayList.get(i2)).calculateBackFragments(sparseArray3, sparseArray4);
            }
            BackStackRecord.TransitionState transitionState = null;
            int i3 = 0;
            while (i3 <= size4) {
                if (DEBUG) {
                    Log.v(TAG, "Popping back stack state: " + arrayList.get(i3));
                }
                i3++;
                transitionState = ((BackStackRecord) arrayList.get(i3)).popFromBackStack(i3 == size4, transitionState, sparseArray3, sparseArray4);
            }
            reportBackStackChanged();
        }
        return true;
    }

    ArrayList<Fragment> retainNonConfig() {
        ArrayList<Fragment> arrayList = null;
        if (this.mActive != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mActive.size()) {
                    break;
                }
                Fragment fragment = this.mActive.get(i2);
                if (fragment != null && fragment.mRetainInstance) {
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                    fragment.mRetaining = true;
                    fragment.mTargetIndex = fragment.mTarget != null ? fragment.mTarget.mIndex : -1;
                    if (DEBUG) {
                        Log.v(TAG, "retainNonConfig: keeping retained " + fragment);
                    }
                }
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    void saveFragmentViewState(Fragment f) {
        if (f.mInnerView != null) {
            if (this.mStateArray == null) {
                this.mStateArray = new SparseArray<>();
            } else {
                this.mStateArray.clear();
            }
            f.mInnerView.saveHierarchyState(this.mStateArray);
            if (this.mStateArray.size() > 0) {
                f.mSavedViewState = this.mStateArray;
                this.mStateArray = null;
            }
        }
    }

    Bundle saveFragmentBasicState(Fragment f) {
        Bundle bundle;
        if (this.mStateBundle == null) {
            this.mStateBundle = new Bundle();
        }
        f.performSaveInstanceState(this.mStateBundle);
        if (this.mStateBundle.isEmpty()) {
            bundle = null;
        } else {
            bundle = this.mStateBundle;
            this.mStateBundle = null;
        }
        if (f.mView != null) {
            saveFragmentViewState(f);
        }
        if (f.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(VIEW_STATE_TAG, f.mSavedViewState);
        }
        if (!f.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(USER_VISIBLE_HINT_TAG, f.mUserVisibleHint);
        }
        return bundle;
    }

    Parcelable saveAllState() {
        int[] iArr;
        int size;
        int size2;
        boolean z;
        BackStackState[] backStackStateArr = null;
        execPendingActions();
        if (HONEYCOMB) {
            this.mStateSaved = true;
        }
        if (this.mActive == null || this.mActive.size() <= 0) {
            return null;
        }
        int size3 = this.mActive.size();
        FragmentState[] fragmentStateArr = new FragmentState[size3];
        int i = 0;
        boolean z2 = false;
        while (i < size3) {
            Fragment fragment = this.mActive.get(i);
            if (fragment != null) {
                if (fragment.mIndex < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.mIndex));
                }
                FragmentState fragmentState = new FragmentState(fragment);
                fragmentStateArr[i] = fragmentState;
                if (fragment.mState > 0 && fragmentState.mSavedFragmentState == null) {
                    fragmentState.mSavedFragmentState = saveFragmentBasicState(fragment);
                    if (fragment.mTarget != null) {
                        if (fragment.mTarget.mIndex < 0) {
                            throwException(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.mTarget));
                        }
                        if (fragmentState.mSavedFragmentState == null) {
                            fragmentState.mSavedFragmentState = new Bundle();
                        }
                        putFragment(fragmentState.mSavedFragmentState, TARGET_STATE_TAG, fragment.mTarget);
                        if (fragment.mTargetRequestCode != 0) {
                            fragmentState.mSavedFragmentState.putInt(TARGET_REQUEST_CODE_STATE_TAG, fragment.mTargetRequestCode);
                        }
                    }
                } else {
                    fragmentState.mSavedFragmentState = fragment.mSavedFragmentState;
                }
                if (DEBUG) {
                    Log.v(TAG, "Saved state of " + fragment + ": " + fragmentState.mSavedFragmentState);
                }
                z = true;
            } else {
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (!z2) {
            if (!DEBUG) {
                return null;
            }
            Log.v(TAG, "saveAllState: no fragments!");
            return null;
        }
        if (this.mAdded == null || (size2 = this.mAdded.size()) <= 0) {
            iArr = null;
        } else {
            iArr = new int[size2];
            for (int i2 = 0; i2 < size2; i2++) {
                iArr[i2] = this.mAdded.get(i2).mIndex;
                if (iArr[i2] < 0) {
                    throwException(new IllegalStateException("Failure saving state: active " + this.mAdded.get(i2) + " has cleared index: " + iArr[i2]));
                }
                if (DEBUG) {
                    Log.v(TAG, "saveAllState: adding fragment #" + i2 + ": " + this.mAdded.get(i2));
                }
            }
        }
        if (this.mBackStack != null && (size = this.mBackStack.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i3 = 0; i3 < size; i3++) {
                backStackStateArr[i3] = new BackStackState(this.mBackStack.get(i3));
                if (DEBUG) {
                    Log.v(TAG, "saveAllState: adding back stack #" + i3 + ": " + this.mBackStack.get(i3));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = fragmentStateArr;
        fragmentManagerState.mAdded = iArr;
        fragmentManagerState.mBackStack = backStackStateArr;
        return fragmentManagerState;
    }

    void restoreAllState(Parcelable state, List<Fragment> nonConfig) {
        if (state != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) state;
            if (fragmentManagerState.mActive != null) {
                if (nonConfig != null) {
                    for (int i = 0; i < nonConfig.size(); i++) {
                        Fragment fragment = nonConfig.get(i);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: re-attaching retained " + fragment);
                        }
                        FragmentState fragmentState = fragmentManagerState.mActive[fragment.mIndex];
                        fragmentState.mInstance = fragment;
                        fragment.mSavedViewState = null;
                        fragment.mBackStackNesting = 0;
                        fragment.mInLayout = false;
                        fragment.mAdded = false;
                        fragment.mTarget = null;
                        if (fragmentState.mSavedFragmentState != null) {
                            fragmentState.mSavedFragmentState.setClassLoader(this.mHost.getContext().getClassLoader());
                            fragment.mSavedViewState = fragmentState.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_TAG);
                            fragment.mSavedFragmentState = fragmentState.mSavedFragmentState;
                        }
                    }
                }
                this.mActive = new ArrayList<>(fragmentManagerState.mActive.length);
                if (this.mAvailIndices != null) {
                    this.mAvailIndices.clear();
                }
                for (int i2 = 0; i2 < fragmentManagerState.mActive.length; i2++) {
                    FragmentState fragmentState2 = fragmentManagerState.mActive[i2];
                    if (fragmentState2 != null) {
                        Fragment instantiate = fragmentState2.instantiate(this.mHost, this.mParent);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: active #" + i2 + ": " + instantiate);
                        }
                        this.mActive.add(instantiate);
                        fragmentState2.mInstance = null;
                    } else {
                        this.mActive.add(null);
                        if (this.mAvailIndices == null) {
                            this.mAvailIndices = new ArrayList<>();
                        }
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: avail #" + i2);
                        }
                        this.mAvailIndices.add(Integer.valueOf(i2));
                    }
                }
                if (nonConfig != null) {
                    for (int i3 = 0; i3 < nonConfig.size(); i3++) {
                        Fragment fragment2 = nonConfig.get(i3);
                        if (fragment2.mTargetIndex >= 0) {
                            if (fragment2.mTargetIndex < this.mActive.size()) {
                                fragment2.mTarget = this.mActive.get(fragment2.mTargetIndex);
                            } else {
                                Log.w(TAG, "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.mTargetIndex);
                                fragment2.mTarget = null;
                            }
                        }
                    }
                }
                if (fragmentManagerState.mAdded != null) {
                    this.mAdded = new ArrayList<>(fragmentManagerState.mAdded.length);
                    for (int i4 = 0; i4 < fragmentManagerState.mAdded.length; i4++) {
                        Fragment fragment3 = this.mActive.get(fragmentManagerState.mAdded[i4]);
                        if (fragment3 == null) {
                            throwException(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.mAdded[i4]));
                        }
                        fragment3.mAdded = true;
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: added #" + i4 + ": " + fragment3);
                        }
                        if (this.mAdded.contains(fragment3)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.mAdded.add(fragment3);
                    }
                } else {
                    this.mAdded = null;
                }
                if (fragmentManagerState.mBackStack != null) {
                    this.mBackStack = new ArrayList<>(fragmentManagerState.mBackStack.length);
                    for (int i5 = 0; i5 < fragmentManagerState.mBackStack.length; i5++) {
                        BackStackRecord instantiate2 = fragmentManagerState.mBackStack[i5].instantiate(this);
                        if (DEBUG) {
                            Log.v(TAG, "restoreAllState: back stack #" + i5 + " (index " + instantiate2.mIndex + "): " + instantiate2);
                            instantiate2.dump("  ", new PrintWriter(new LogWriter(TAG)), false);
                        }
                        this.mBackStack.add(instantiate2);
                        if (instantiate2.mIndex >= 0) {
                            setBackStackIndex(instantiate2.mIndex, instantiate2);
                        }
                    }
                    return;
                }
                this.mBackStack = null;
            }
        }
    }

    public void attachController(FragmentHostCallback host, FragmentContainer container, Fragment parent) {
        if (this.mHost != null) {
            throw new IllegalStateException("Already attached");
        }
        this.mHost = host;
        this.mContainer = container;
        this.mParent = parent;
    }

    public void noteStateNotSaved() {
        this.mStateSaved = false;
    }

    public void dispatchCreate() {
        this.mStateSaved = false;
        moveToState(1, false);
    }

    public void dispatchActivityCreated() {
        this.mStateSaved = false;
        moveToState(2, false);
    }

    public void dispatchStart() {
        this.mStateSaved = false;
        moveToState(4, false);
    }

    public void dispatchResume() {
        this.mStateSaved = false;
        moveToState(5, false);
    }

    public void dispatchPause() {
        moveToState(4, false);
    }

    public void dispatchStop() {
        this.mStateSaved = true;
        moveToState(3, false);
    }

    public void dispatchReallyStop() {
        moveToState(2, false);
    }

    public void dispatchDestroyView() {
        moveToState(1, false);
    }

    public void dispatchDestroy() {
        this.mDestroyed = true;
        execPendingActions();
        moveToState(0, false);
        this.mHost = null;
        this.mContainer = null;
        this.mParent = null;
    }

    public void dispatchConfigurationChanged(Configuration newConfig) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performConfigurationChanged(newConfig);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public void dispatchLowMemory() {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performLowMemory();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        boolean z;
        ArrayList<Fragment> arrayList = null;
        if (this.mAdded != null) {
            int i = 0;
            z = false;
            while (i < this.mAdded.size()) {
                Fragment fragment = this.mAdded.get(i);
                if (fragment != null && fragment.performCreateOptionsMenu(menu, inflater)) {
                    z = true;
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    arrayList.add(fragment);
                }
                i++;
                z = z;
            }
        } else {
            z = false;
        }
        if (this.mCreatedMenus != null) {
            for (int i2 = 0; i2 < this.mCreatedMenus.size(); i2++) {
                Fragment fragment2 = this.mCreatedMenus.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.mCreatedMenus = arrayList;
        return z;
    }

    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        if (this.mAdded == null) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = this.mAdded.get(i);
            if (fragment != null && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public boolean dispatchOptionsItemSelected(MenuItem item) {
        if (this.mAdded == null) {
            return false;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = this.mAdded.get(i);
            if (fragment != null && fragment.performOptionsItemSelected(item)) {
                return true;
            }
        }
        return false;
    }

    public boolean dispatchContextItemSelected(MenuItem item) {
        if (this.mAdded == null) {
            return false;
        }
        for (int i = 0; i < this.mAdded.size(); i++) {
            Fragment fragment = this.mAdded.get(i);
            if (fragment != null && fragment.performContextItemSelected(item)) {
                return true;
            }
        }
        return false;
    }

    public void dispatchOptionsMenuClosed(Menu menu) {
        if (this.mAdded != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.mAdded.size()) {
                    Fragment fragment = this.mAdded.get(i2);
                    if (fragment != null) {
                        fragment.performOptionsMenuClosed(menu);
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    public static int reverseTransit(int transit) {
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                return 8194;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            case 8194:
                return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            default:
                return 0;
        }
    }

    public static int transitToStyleIndex(int transit, boolean enter) {
        switch (transit) {
            case FragmentTransaction.TRANSIT_FRAGMENT_OPEN /* 4097 */:
                return enter ? 1 : 2;
            case FragmentTransaction.TRANSIT_FRAGMENT_FADE /* 4099 */:
                return enter ? 5 : 6;
            case 8194:
                return enter ? 3 : 4;
            default:
                return -1;
        }
    }

    @Override // android.support.v4.view.LayoutInflaterFactory
    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        Fragment fragment;
        if (!"fragment".equals(name)) {
            return null;
        }
        String attributeValue = attrs.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, FragmentTag.Fragment);
        String string = attributeValue == null ? obtainStyledAttributes.getString(0) : attributeValue;
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string2 = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!Fragment.isSupportFragmentClass(this.mHost.getContext(), string)) {
            return null;
        }
        int id = parent != null ? parent.getId() : 0;
        if (id == -1 && resourceId == -1 && string2 == null) {
            throw new IllegalArgumentException(attrs.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + string);
        }
        Fragment findFragmentById = resourceId != -1 ? findFragmentById(resourceId) : null;
        if (findFragmentById == null && string2 != null) {
            findFragmentById = findFragmentByTag(string2);
        }
        if (findFragmentById == null && id != -1) {
            findFragmentById = findFragmentById(id);
        }
        if (DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + string + " existing=" + findFragmentById);
        }
        if (findFragmentById == null) {
            Fragment instantiate = Fragment.instantiate(context, string);
            instantiate.mFromLayout = true;
            instantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            instantiate.mContainerId = id;
            instantiate.mTag = string2;
            instantiate.mInLayout = true;
            instantiate.mFragmentManager = this;
            instantiate.mHost = this.mHost;
            instantiate.onInflate(this.mHost.getContext(), attrs, instantiate.mSavedFragmentState);
            addFragment(instantiate, true);
            fragment = instantiate;
        } else {
            if (findFragmentById.mInLayout) {
                throw new IllegalArgumentException(attrs.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + string);
            }
            findFragmentById.mInLayout = true;
            findFragmentById.mHost = this.mHost;
            if (!findFragmentById.mRetaining) {
                findFragmentById.onInflate(this.mHost.getContext(), attrs, findFragmentById.mSavedFragmentState);
            }
            fragment = findFragmentById;
        }
        if (this.mCurState < 1 && fragment.mFromLayout) {
            moveToState(fragment, 1, 0, 0, false);
        } else {
            moveToState(fragment);
        }
        if (fragment.mView == null) {
            throw new IllegalStateException("Fragment " + string + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.mView.setId(resourceId);
        }
        if (fragment.mView.getTag() == null) {
            fragment.mView.setTag(string2);
        }
        return fragment.mView;
    }

    LayoutInflaterFactory getLayoutInflaterFactory() {
        return this;
    }

    /* compiled from: FragmentManager.java */
    static class FragmentTag {
        public static final int[] Fragment = {R.attr.name, R.attr.id, R.attr.tag};
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;

        FragmentTag() {
        }
    }
}
