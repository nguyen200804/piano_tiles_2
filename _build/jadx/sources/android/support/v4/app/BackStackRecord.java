package android.support.v4.app;

import android.os.Build;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransitionCompat21;
import android.support.v4.util.ArrayMap;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewTreeObserver;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, Runnable {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final boolean SUPPORTS_TRANSITIONS;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    Op mTail;
    int mTransition;
    int mTransitionStyle;
    boolean mAllowAddToBackStack = true;
    int mIndex = -1;

    static {
        SUPPORTS_TRANSITIONS = Build.VERSION.SDK_INT >= 21;
    }

    static final class Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList<Fragment> removed;

        Op() {
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        dump(prefix, writer, true);
    }

    public void dump(String prefix, PrintWriter writer, boolean full) {
        String str;
        if (full) {
            writer.print(prefix);
            writer.print("mName=");
            writer.print(this.mName);
            writer.print(" mIndex=");
            writer.print(this.mIndex);
            writer.print(" mCommitted=");
            writer.println(this.mCommitted);
            if (this.mTransition != 0) {
                writer.print(prefix);
                writer.print("mTransition=#");
                writer.print(Integer.toHexString(this.mTransition));
                writer.print(" mTransitionStyle=#");
                writer.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                writer.print(prefix);
                writer.print("mEnterAnim=#");
                writer.print(Integer.toHexString(this.mEnterAnim));
                writer.print(" mExitAnim=#");
                writer.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                writer.print(prefix);
                writer.print("mPopEnterAnim=#");
                writer.print(Integer.toHexString(this.mPopEnterAnim));
                writer.print(" mPopExitAnim=#");
                writer.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                writer.print(prefix);
                writer.print("mBreadCrumbTitleRes=#");
                writer.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                writer.print(" mBreadCrumbTitleText=");
                writer.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                writer.print(prefix);
                writer.print("mBreadCrumbShortTitleRes=#");
                writer.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                writer.print(" mBreadCrumbShortTitleText=");
                writer.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead != null) {
            writer.print(prefix);
            writer.println("Operations:");
            String str2 = prefix + "    ";
            int i = 0;
            Op op = this.mHead;
            while (op != null) {
                switch (op.cmd) {
                    case 0:
                        str = "NULL";
                        break;
                    case 1:
                        str = "ADD";
                        break;
                    case 2:
                        str = "REPLACE";
                        break;
                    case 3:
                        str = "REMOVE";
                        break;
                    case 4:
                        str = "HIDE";
                        break;
                    case 5:
                        str = "SHOW";
                        break;
                    case 6:
                        str = "DETACH";
                        break;
                    case 7:
                        str = "ATTACH";
                        break;
                    default:
                        str = "cmd=" + op.cmd;
                        break;
                }
                writer.print(prefix);
                writer.print("  Op #");
                writer.print(i);
                writer.print(": ");
                writer.print(str);
                writer.print(" ");
                writer.println(op.fragment);
                if (full) {
                    if (op.enterAnim != 0 || op.exitAnim != 0) {
                        writer.print(prefix);
                        writer.print("enterAnim=#");
                        writer.print(Integer.toHexString(op.enterAnim));
                        writer.print(" exitAnim=#");
                        writer.println(Integer.toHexString(op.exitAnim));
                    }
                    if (op.popEnterAnim != 0 || op.popExitAnim != 0) {
                        writer.print(prefix);
                        writer.print("popEnterAnim=#");
                        writer.print(Integer.toHexString(op.popEnterAnim));
                        writer.print(" popExitAnim=#");
                        writer.println(Integer.toHexString(op.popExitAnim));
                    }
                }
                if (op.removed != null && op.removed.size() > 0) {
                    for (int i2 = 0; i2 < op.removed.size(); i2++) {
                        writer.print(str2);
                        if (op.removed.size() == 1) {
                            writer.print("Removed: ");
                        } else {
                            if (i2 == 0) {
                                writer.println("Removed:");
                            }
                            writer.print(str2);
                            writer.print("  #");
                            writer.print(i2);
                            writer.print(": ");
                        }
                        writer.println(op.removed.get(i2));
                    }
                }
                op = op.next;
                i++;
            }
        }
    }

    public BackStackRecord(FragmentManagerImpl manager) {
        this.mManager = manager;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    void addOp(Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        } else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        this.mNumOp++;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction add(Fragment fragment, String tag) {
        doAddOp(0, fragment, tag, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction add(int containerViewId, Fragment fragment) {
        doAddOp(containerViewId, fragment, null, 1);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction add(int containerViewId, Fragment fragment, String tag) {
        doAddOp(containerViewId, fragment, tag, 1);
        return this;
    }

    private void doAddOp(int containerViewId, Fragment fragment, String tag, int opcmd) {
        fragment.mFragmentManager = this.mManager;
        if (tag != null) {
            if (fragment.mTag != null && !tag.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + tag);
            }
            fragment.mTag = tag;
        }
        if (containerViewId != 0) {
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != containerViewId) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + containerViewId);
            }
            fragment.mFragmentId = containerViewId;
            fragment.mContainerId = containerViewId;
        }
        Op op = new Op();
        op.cmd = opcmd;
        op.fragment = fragment;
        addOp(op);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction replace(int containerViewId, Fragment fragment) {
        return replace(containerViewId, fragment, null);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction replace(int containerViewId, Fragment fragment, String tag) {
        if (containerViewId == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(containerViewId, fragment, tag, 2);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction hide(Fragment fragment) {
        Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction show(Fragment fragment) {
        Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction detach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction attach(Fragment fragment) {
        Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        addOp(op);
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int enter, int exit) {
        return setCustomAnimations(enter, exit, 0, 0);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int enter, int exit, int popEnter, int popExit) {
        this.mEnterAnim = enter;
        this.mExitAnim = exit;
        this.mPopEnterAnim = popEnter;
        this.mPopExitAnim = popExit;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setTransition(int transition) {
        this.mTransition = transition;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction addSharedElement(View sharedElement, String name) {
        if (SUPPORTS_TRANSITIONS) {
            String transitionName = FragmentTransitionCompat21.getTransitionName(sharedElement);
            if (transitionName == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList<>();
                this.mSharedElementTargetNames = new ArrayList<>();
            }
            this.mSharedElementSourceNames.add(transitionName);
            this.mSharedElementTargetNames.add(name);
        }
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setTransitionStyle(int styleRes) {
        this.mTransitionStyle = styleRes;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction addToBackStack(String name) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = name;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(int res) {
        this.mBreadCrumbTitleRes = res;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(CharSequence text) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = text;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(int res) {
        this.mBreadCrumbShortTitleRes = res;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(CharSequence text) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = text;
        return this;
    }

    void bumpBackStackNesting(int amt) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v(TAG, "Bump nesting in " + this + " by " + amt);
            }
            for (Op op = this.mHead; op != null; op = op.next) {
                if (op.fragment != null) {
                    op.fragment.mBackStackNesting += amt;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v(TAG, "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
                if (op.removed != null) {
                    for (int size = op.removed.size() - 1; size >= 0; size--) {
                        Fragment fragment = op.removed.get(size);
                        fragment.mBackStackNesting += amt;
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v(TAG, "Bump nesting of " + fragment + " to " + fragment.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }

    @Override // android.support.v4.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // android.support.v4.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    int commitInternal(boolean allowStateLoss) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Commit: " + this);
            dump("  ", null, new PrintWriter(new LogWriter(TAG)), null);
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, allowStateLoss);
        return this.mIndex;
    }

    @Override // java.lang.Runnable
    public void run() {
        TransitionState transitionState;
        Fragment fragment;
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Run: " + this);
        }
        if (this.mAddToBackStack && this.mIndex < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        bumpBackStackNesting(1);
        if (!SUPPORTS_TRANSITIONS || this.mManager.mCurState < 1) {
            transitionState = null;
        } else {
            SparseArray<Fragment> sparseArray = new SparseArray<>();
            SparseArray<Fragment> sparseArray2 = new SparseArray<>();
            calculateFragments(sparseArray, sparseArray2);
            transitionState = beginTransition(sparseArray, sparseArray2, false);
        }
        int i = transitionState != null ? 0 : this.mTransitionStyle;
        int i2 = transitionState != null ? 0 : this.mTransition;
        for (Op op = this.mHead; op != null; op = op.next) {
            int i3 = transitionState != null ? 0 : op.enterAnim;
            int i4 = transitionState != null ? 0 : op.exitAnim;
            switch (op.cmd) {
                case 1:
                    Fragment fragment2 = op.fragment;
                    fragment2.mNextAnim = i3;
                    this.mManager.addFragment(fragment2, false);
                    break;
                case 2:
                    Fragment fragment3 = op.fragment;
                    int i5 = fragment3.mContainerId;
                    if (this.mManager.mAdded != null) {
                        int size = this.mManager.mAdded.size() - 1;
                        while (size >= 0) {
                            Fragment fragment4 = this.mManager.mAdded.get(size);
                            if (FragmentManagerImpl.DEBUG) {
                                Log.v(TAG, "OP_REPLACE: adding=" + fragment3 + " old=" + fragment4);
                            }
                            if (fragment4.mContainerId == i5) {
                                if (fragment4 == fragment3) {
                                    fragment = null;
                                    op.fragment = null;
                                    size--;
                                    fragment3 = fragment;
                                } else {
                                    if (op.removed == null) {
                                        op.removed = new ArrayList<>();
                                    }
                                    op.removed.add(fragment4);
                                    fragment4.mNextAnim = i4;
                                    if (this.mAddToBackStack) {
                                        fragment4.mBackStackNesting++;
                                        if (FragmentManagerImpl.DEBUG) {
                                            Log.v(TAG, "Bump nesting of " + fragment4 + " to " + fragment4.mBackStackNesting);
                                        }
                                    }
                                    this.mManager.removeFragment(fragment4, i2, i);
                                }
                            }
                            fragment = fragment3;
                            size--;
                            fragment3 = fragment;
                        }
                    }
                    if (fragment3 != null) {
                        fragment3.mNextAnim = i3;
                        this.mManager.addFragment(fragment3, false);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    Fragment fragment5 = op.fragment;
                    fragment5.mNextAnim = i4;
                    this.mManager.removeFragment(fragment5, i2, i);
                    break;
                case 4:
                    Fragment fragment6 = op.fragment;
                    fragment6.mNextAnim = i4;
                    this.mManager.hideFragment(fragment6, i2, i);
                    break;
                case 5:
                    Fragment fragment7 = op.fragment;
                    fragment7.mNextAnim = i3;
                    this.mManager.showFragment(fragment7, i2, i);
                    break;
                case 6:
                    Fragment fragment8 = op.fragment;
                    fragment8.mNextAnim = i4;
                    this.mManager.detachFragment(fragment8, i2, i);
                    break;
                case 7:
                    Fragment fragment9 = op.fragment;
                    fragment9.mNextAnim = i3;
                    this.mManager.attachFragment(fragment9, i2, i);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
            }
        }
        this.mManager.moveToState(this.mManager.mCurState, i2, i, true);
        if (this.mAddToBackStack) {
            this.mManager.addBackStackState(this);
        }
    }

    private static void setFirstOut(SparseArray<Fragment> firstOutFragments, SparseArray<Fragment> lastInFragments, Fragment fragment) {
        int i;
        if (fragment != null && (i = fragment.mContainerId) != 0 && !fragment.isHidden()) {
            if (fragment.isAdded() && fragment.getView() != null && firstOutFragments.get(i) == null) {
                firstOutFragments.put(i, fragment);
            }
            if (lastInFragments.get(i) == fragment) {
                lastInFragments.remove(i);
            }
        }
    }

    private void setLastIn(SparseArray<Fragment> firstOutFragments, SparseArray<Fragment> lastInFragments, Fragment fragment) {
        if (fragment != null) {
            int i = fragment.mContainerId;
            if (i != 0) {
                if (!fragment.isAdded()) {
                    lastInFragments.put(i, fragment);
                }
                if (firstOutFragments.get(i) == fragment) {
                    firstOutFragments.remove(i);
                }
            }
            if (fragment.mState < 1 && this.mManager.mCurState >= 1) {
                this.mManager.makeActive(fragment);
                this.mManager.moveToState(fragment, 1, 0, 0, false);
            }
        }
    }

    private void calculateFragments(SparseArray<Fragment> firstOutFragments, SparseArray<Fragment> lastInFragments) {
        if (this.mManager.mContainer.onHasView()) {
            for (Op op = this.mHead; op != null; op = op.next) {
                switch (op.cmd) {
                    case 1:
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 2:
                        Fragment fragment = op.fragment;
                        if (this.mManager.mAdded != null) {
                            int i = 0;
                            Fragment fragment2 = fragment;
                            while (true) {
                                int i2 = i;
                                if (i2 < this.mManager.mAdded.size()) {
                                    Fragment fragment3 = this.mManager.mAdded.get(i2);
                                    if (fragment2 == null || fragment3.mContainerId == fragment2.mContainerId) {
                                        if (fragment3 == fragment2) {
                                            fragment2 = null;
                                            lastInFragments.remove(fragment3.mContainerId);
                                        } else {
                                            setFirstOut(firstOutFragments, lastInFragments, fragment3);
                                        }
                                    }
                                    i = i2 + 1;
                                }
                            }
                        }
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 3:
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 4:
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 5:
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 6:
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 7:
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                }
            }
        }
    }

    public void calculateBackFragments(SparseArray<Fragment> firstOutFragments, SparseArray<Fragment> lastInFragments) {
        if (this.mManager.mContainer.onHasView()) {
            for (Op op = this.mTail; op != null; op = op.prev) {
                switch (op.cmd) {
                    case 1:
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 2:
                        if (op.removed != null) {
                            for (int size = op.removed.size() - 1; size >= 0; size--) {
                                setLastIn(firstOutFragments, lastInFragments, op.removed.get(size));
                            }
                        }
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 3:
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 4:
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 5:
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 6:
                        setLastIn(firstOutFragments, lastInFragments, op.fragment);
                        break;
                    case 7:
                        setFirstOut(firstOutFragments, lastInFragments, op.fragment);
                        break;
                }
            }
        }
    }

    public TransitionState popFromBackStack(boolean doStateMove, TransitionState state, SparseArray<Fragment> firstOutFragments, SparseArray<Fragment> lastInFragments) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "popFromBackStack: " + this);
            dump("  ", null, new PrintWriter(new LogWriter(TAG)), null);
        }
        if (SUPPORTS_TRANSITIONS && this.mManager.mCurState >= 1) {
            if (state == null) {
                if (firstOutFragments.size() != 0 || lastInFragments.size() != 0) {
                    state = beginTransition(firstOutFragments, lastInFragments, true);
                }
            } else if (!doStateMove) {
                setNameOverrides(state, this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
        }
        bumpBackStackNesting(-1);
        int i = state != null ? 0 : this.mTransitionStyle;
        int i2 = state != null ? 0 : this.mTransition;
        for (Op op = this.mTail; op != null; op = op.prev) {
            int i3 = state != null ? 0 : op.popEnterAnim;
            int i4 = state != null ? 0 : op.popExitAnim;
            switch (op.cmd) {
                case 1:
                    Fragment fragment = op.fragment;
                    fragment.mNextAnim = i4;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 2:
                    Fragment fragment2 = op.fragment;
                    if (fragment2 != null) {
                        fragment2.mNextAnim = i4;
                        this.mManager.removeFragment(fragment2, FragmentManagerImpl.reverseTransit(i2), i);
                    }
                    if (op.removed != null) {
                        for (int i5 = 0; i5 < op.removed.size(); i5++) {
                            Fragment fragment3 = op.removed.get(i5);
                            fragment3.mNextAnim = i3;
                            this.mManager.addFragment(fragment3, false);
                        }
                        break;
                    } else {
                        break;
                    }
                case 3:
                    Fragment fragment4 = op.fragment;
                    fragment4.mNextAnim = i3;
                    this.mManager.addFragment(fragment4, false);
                    break;
                case 4:
                    Fragment fragment5 = op.fragment;
                    fragment5.mNextAnim = i3;
                    this.mManager.showFragment(fragment5, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 5:
                    Fragment fragment6 = op.fragment;
                    fragment6.mNextAnim = i4;
                    this.mManager.hideFragment(fragment6, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 6:
                    Fragment fragment7 = op.fragment;
                    fragment7.mNextAnim = i3;
                    this.mManager.attachFragment(fragment7, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                case 7:
                    Fragment fragment8 = op.fragment;
                    fragment8.mNextAnim = i3;
                    this.mManager.detachFragment(fragment8, FragmentManagerImpl.reverseTransit(i2), i);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
            }
        }
        if (doStateMove) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(i2), i, true);
            state = null;
        }
        if (this.mIndex >= 0) {
            this.mManager.freeBackStackIndex(this.mIndex);
            this.mIndex = -1;
        }
        return state;
    }

    @Override // android.support.v4.app.FragmentManager.BackStackEntry
    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    @Override // android.support.v4.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mNumOp == 0;
    }

    private TransitionState beginTransition(SparseArray<Fragment> firstOutFragments, SparseArray<Fragment> lastInFragments, boolean isBack) {
        TransitionState transitionState = new TransitionState();
        transitionState.nonExistentView = new View(this.mManager.mHost.getContext());
        int i = 0;
        boolean z = false;
        while (i < firstOutFragments.size()) {
            boolean z2 = configureTransitions(firstOutFragments.keyAt(i), transitionState, isBack, firstOutFragments, lastInFragments) ? true : z;
            i++;
            z = z2;
        }
        for (int i2 = 0; i2 < lastInFragments.size(); i2++) {
            int keyAt = lastInFragments.keyAt(i2);
            if (firstOutFragments.get(keyAt) == null && configureTransitions(keyAt, transitionState, isBack, firstOutFragments, lastInFragments)) {
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return transitionState;
    }

    private static Object getEnterTransition(Fragment inFragment, boolean isBack) {
        if (inFragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.cloneTransition(isBack ? inFragment.getReenterTransition() : inFragment.getEnterTransition());
    }

    private static Object getExitTransition(Fragment outFragment, boolean isBack) {
        if (outFragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.cloneTransition(isBack ? outFragment.getReturnTransition() : outFragment.getExitTransition());
    }

    private static Object getSharedElementTransition(Fragment inFragment, Fragment outFragment, boolean isBack) {
        if (inFragment == null || outFragment == null) {
            return null;
        }
        return FragmentTransitionCompat21.wrapSharedElementTransition(isBack ? outFragment.getSharedElementReturnTransition() : inFragment.getSharedElementEnterTransition());
    }

    private static Object captureExitingViews(Object exitTransition, Fragment outFragment, ArrayList<View> exitingViews, ArrayMap<String, View> namedViews, View nonExistentView) {
        if (exitTransition != null) {
            return FragmentTransitionCompat21.captureExitingViews(exitTransition, outFragment.getView(), exitingViews, namedViews, nonExistentView);
        }
        return exitTransition;
    }

    private ArrayMap<String, View> remapSharedElements(TransitionState state, Fragment outFragment, boolean isBack) {
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        if (this.mSharedElementSourceNames != null) {
            FragmentTransitionCompat21.findNamedViews(arrayMap, outFragment.getView());
            if (isBack) {
                arrayMap.retainAll(this.mSharedElementTargetNames);
            } else {
                arrayMap = remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
            }
        }
        if (isBack) {
            if (outFragment.mEnterTransitionCallback != null) {
                outFragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            setBackNameOverrides(state, arrayMap, false);
        } else {
            if (outFragment.mExitTransitionCallback != null) {
                outFragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, arrayMap);
            }
            setNameOverrides(state, arrayMap, false);
        }
        return arrayMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x013b A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0143 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean configureTransitions(int r34, android.support.v4.app.BackStackRecord.TransitionState r35, boolean r36, android.util.SparseArray<android.support.v4.app.Fragment> r37, android.util.SparseArray<android.support.v4.app.Fragment> r38) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.BackStackRecord.configureTransitions(int, android.support.v4.app.BackStackRecord$TransitionState, boolean, android.util.SparseArray, android.util.SparseArray):boolean");
    }

    private void prepareSharedElementTransition(final TransitionState state, final View sceneRoot, final Object sharedElementTransition, final Fragment inFragment, final Fragment outFragment, final boolean isBack, final ArrayList<View> sharedElementTargets) {
        sceneRoot.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.BackStackRecord.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
                if (sharedElementTransition != null) {
                    FragmentTransitionCompat21.removeTargets(sharedElementTransition, sharedElementTargets);
                    sharedElementTargets.clear();
                    ArrayMap mapSharedElementsIn = BackStackRecord.this.mapSharedElementsIn(state, isBack, inFragment);
                    FragmentTransitionCompat21.setSharedElementTargets(sharedElementTransition, state.nonExistentView, mapSharedElementsIn, sharedElementTargets);
                    BackStackRecord.this.setEpicenterIn(mapSharedElementsIn, state);
                    BackStackRecord.this.callSharedElementEnd(state, inFragment, outFragment, isBack, mapSharedElementsIn);
                    return true;
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callSharedElementEnd(TransitionState state, Fragment inFragment, Fragment outFragment, boolean isBack, ArrayMap<String, View> namedViews) {
        SharedElementCallback sharedElementCallback = isBack ? outFragment.mEnterTransitionCallback : inFragment.mEnterTransitionCallback;
        if (sharedElementCallback != null) {
            sharedElementCallback.onSharedElementEnd(new ArrayList(namedViews.keySet()), new ArrayList(namedViews.values()), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEpicenterIn(ArrayMap<String, View> namedViews, TransitionState state) {
        View view;
        if (this.mSharedElementTargetNames != null && !namedViews.isEmpty() && (view = namedViews.get(this.mSharedElementTargetNames.get(0))) != null) {
            state.enteringEpicenterView.epicenter = view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayMap<String, View> mapSharedElementsIn(TransitionState state, boolean isBack, Fragment inFragment) {
        ArrayMap<String, View> mapEnteringSharedElements = mapEnteringSharedElements(state, inFragment, isBack);
        if (isBack) {
            if (inFragment.mExitTransitionCallback != null) {
                inFragment.mExitTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, mapEnteringSharedElements);
            }
            setBackNameOverrides(state, mapEnteringSharedElements, true);
        } else {
            if (inFragment.mEnterTransitionCallback != null) {
                inFragment.mEnterTransitionCallback.onMapSharedElements(this.mSharedElementTargetNames, mapEnteringSharedElements);
            }
            setNameOverrides(state, mapEnteringSharedElements, true);
        }
        return mapEnteringSharedElements;
    }

    private static ArrayMap<String, View> remapNames(ArrayList<String> inMap, ArrayList<String> toGoInMap, ArrayMap<String, View> namedViews) {
        if (!namedViews.isEmpty()) {
            ArrayMap<String, View> namedViews2 = new ArrayMap<>();
            int size = inMap.size();
            for (int i = 0; i < size; i++) {
                View view = namedViews.get(inMap.get(i));
                if (view != null) {
                    namedViews2.put(toGoInMap.get(i), view);
                }
            }
            return namedViews2;
        }
        return namedViews;
    }

    private ArrayMap<String, View> mapEnteringSharedElements(TransitionState state, Fragment inFragment, boolean isBack) {
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        View view = inFragment.getView();
        if (view != null && this.mSharedElementSourceNames != null) {
            FragmentTransitionCompat21.findNamedViews(arrayMap, view);
            if (isBack) {
                return remapNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames, arrayMap);
            }
            arrayMap.retainAll(this.mSharedElementTargetNames);
            return arrayMap;
        }
        return arrayMap;
    }

    private void excludeHiddenFragmentsAfterEnter(final View sceneRoot, final TransitionState state, final int containerId, final Object transition) {
        sceneRoot.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: android.support.v4.app.BackStackRecord.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
                BackStackRecord.this.excludeHiddenFragments(state, containerId, transition);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void excludeHiddenFragments(TransitionState state, int containerId, Object transition) {
        if (this.mManager.mAdded != null) {
            for (int i = 0; i < this.mManager.mAdded.size(); i++) {
                Fragment fragment = this.mManager.mAdded.get(i);
                if (fragment.mView != null && fragment.mContainer != null && fragment.mContainerId == containerId) {
                    if (fragment.mHidden) {
                        if (!state.hiddenFragmentViews.contains(fragment.mView)) {
                            FragmentTransitionCompat21.excludeTarget(transition, fragment.mView, true);
                            state.hiddenFragmentViews.add(fragment.mView);
                        }
                    } else {
                        FragmentTransitionCompat21.excludeTarget(transition, fragment.mView, false);
                        state.hiddenFragmentViews.remove(fragment.mView);
                    }
                }
            }
        }
    }

    private static void setNameOverride(ArrayMap<String, String> overrides, String source, String target) {
        if (source != null && target != null) {
            for (int i = 0; i < overrides.size(); i++) {
                if (source.equals(overrides.valueAt(i))) {
                    overrides.setValueAt(i, target);
                    return;
                }
            }
            overrides.put(source, target);
        }
    }

    private static void setNameOverrides(TransitionState state, ArrayList<String> sourceNames, ArrayList<String> targetNames) {
        if (sourceNames != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < sourceNames.size()) {
                    setNameOverride(state.nameOverrides, sourceNames.get(i2), targetNames.get(i2));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private void setBackNameOverrides(TransitionState state, ArrayMap<String, View> namedViews, boolean isEnd) {
        int size = this.mSharedElementTargetNames == null ? 0 : this.mSharedElementTargetNames.size();
        for (int i = 0; i < size; i++) {
            String str = this.mSharedElementSourceNames.get(i);
            View view = namedViews.get(this.mSharedElementTargetNames.get(i));
            if (view != null) {
                String transitionName = FragmentTransitionCompat21.getTransitionName(view);
                if (isEnd) {
                    setNameOverride(state.nameOverrides, str, transitionName);
                } else {
                    setNameOverride(state.nameOverrides, transitionName, str);
                }
            }
        }
    }

    private void setNameOverrides(TransitionState state, ArrayMap<String, View> namedViews, boolean isEnd) {
        int size = namedViews.size();
        for (int i = 0; i < size; i++) {
            String keyAt = namedViews.keyAt(i);
            String transitionName = FragmentTransitionCompat21.getTransitionName(namedViews.valueAt(i));
            if (isEnd) {
                setNameOverride(state.nameOverrides, keyAt, transitionName);
            } else {
                setNameOverride(state.nameOverrides, transitionName, keyAt);
            }
        }
    }

    public class TransitionState {
        public View nonExistentView;
        public ArrayMap<String, String> nameOverrides = new ArrayMap<>();
        public ArrayList<View> hiddenFragmentViews = new ArrayList<>();
        public FragmentTransitionCompat21.EpicenterView enteringEpicenterView = new FragmentTransitionCompat21.EpicenterView();

        public TransitionState() {
        }
    }
}
