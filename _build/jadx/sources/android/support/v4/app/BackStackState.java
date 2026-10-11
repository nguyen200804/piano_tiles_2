package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.BackStackRecord;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* compiled from: BackStackRecord.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator<BackStackState>() { // from class: android.support.v4.app.BackStackState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel in) {
            return new BackStackState(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int size) {
            return new BackStackState[size];
        }
    };
    final int mBreadCrumbShortTitleRes;
    final CharSequence mBreadCrumbShortTitleText;
    final int mBreadCrumbTitleRes;
    final CharSequence mBreadCrumbTitleText;
    final int mIndex;
    final String mName;
    final int[] mOps;
    final ArrayList<String> mSharedElementSourceNames;
    final ArrayList<String> mSharedElementTargetNames;
    final int mTransition;
    final int mTransitionStyle;

    public BackStackState(BackStackRecord bse) {
        int i = 0;
        for (BackStackRecord.Op op = bse.mHead; op != null; op = op.next) {
            if (op.removed != null) {
                i += op.removed.size();
            }
        }
        this.mOps = new int[i + (bse.mNumOp * 7)];
        if (!bse.mAddToBackStack) {
            throw new IllegalStateException("Not on back stack");
        }
        int i2 = 0;
        for (BackStackRecord.Op op2 = bse.mHead; op2 != null; op2 = op2.next) {
            int i3 = i2 + 1;
            this.mOps[i2] = op2.cmd;
            int i4 = i3 + 1;
            this.mOps[i3] = op2.fragment != null ? op2.fragment.mIndex : -1;
            int i5 = i4 + 1;
            this.mOps[i4] = op2.enterAnim;
            int i6 = i5 + 1;
            this.mOps[i5] = op2.exitAnim;
            int i7 = i6 + 1;
            this.mOps[i6] = op2.popEnterAnim;
            int i8 = i7 + 1;
            this.mOps[i7] = op2.popExitAnim;
            if (op2.removed != null) {
                int size = op2.removed.size();
                int i9 = i8 + 1;
                this.mOps[i8] = size;
                int i10 = 0;
                while (i10 < size) {
                    this.mOps[i9] = op2.removed.get(i10).mIndex;
                    i10++;
                    i9++;
                }
                i2 = i9;
            } else {
                i2 = i8 + 1;
                this.mOps[i8] = 0;
            }
        }
        this.mTransition = bse.mTransition;
        this.mTransitionStyle = bse.mTransitionStyle;
        this.mName = bse.mName;
        this.mIndex = bse.mIndex;
        this.mBreadCrumbTitleRes = bse.mBreadCrumbTitleRes;
        this.mBreadCrumbTitleText = bse.mBreadCrumbTitleText;
        this.mBreadCrumbShortTitleRes = bse.mBreadCrumbShortTitleRes;
        this.mBreadCrumbShortTitleText = bse.mBreadCrumbShortTitleText;
        this.mSharedElementSourceNames = bse.mSharedElementSourceNames;
        this.mSharedElementTargetNames = bse.mSharedElementTargetNames;
    }

    public BackStackState(Parcel in) {
        this.mOps = in.createIntArray();
        this.mTransition = in.readInt();
        this.mTransitionStyle = in.readInt();
        this.mName = in.readString();
        this.mIndex = in.readInt();
        this.mBreadCrumbTitleRes = in.readInt();
        this.mBreadCrumbTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        this.mBreadCrumbShortTitleRes = in.readInt();
        this.mBreadCrumbShortTitleText = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(in);
        this.mSharedElementSourceNames = in.createStringArrayList();
        this.mSharedElementTargetNames = in.createStringArrayList();
    }

    public BackStackRecord instantiate(FragmentManagerImpl fm) {
        BackStackRecord backStackRecord = new BackStackRecord(fm);
        int i = 0;
        int i2 = 0;
        while (i2 < this.mOps.length) {
            BackStackRecord.Op op = new BackStackRecord.Op();
            int i3 = i2 + 1;
            op.cmd = this.mOps[i2];
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i + " base fragment #" + this.mOps[i3]);
            }
            int i4 = i3 + 1;
            int i5 = this.mOps[i3];
            if (i5 >= 0) {
                op.fragment = fm.mActive.get(i5);
            } else {
                op.fragment = null;
            }
            int i6 = i4 + 1;
            op.enterAnim = this.mOps[i4];
            int i7 = i6 + 1;
            op.exitAnim = this.mOps[i6];
            int i8 = i7 + 1;
            op.popEnterAnim = this.mOps[i7];
            int i9 = i8 + 1;
            op.popExitAnim = this.mOps[i8];
            int i10 = i9 + 1;
            int i11 = this.mOps[i9];
            if (i11 > 0) {
                op.removed = new ArrayList<>(i11);
                int i12 = 0;
                while (i12 < i11) {
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " set remove fragment #" + this.mOps[i10]);
                    }
                    op.removed.add(fm.mActive.get(this.mOps[i10]));
                    i12++;
                    i10++;
                }
            }
            backStackRecord.mEnterAnim = op.enterAnim;
            backStackRecord.mExitAnim = op.exitAnim;
            backStackRecord.mPopEnterAnim = op.popEnterAnim;
            backStackRecord.mPopExitAnim = op.popExitAnim;
            backStackRecord.addOp(op);
            i++;
            i2 = i10;
        }
        backStackRecord.mTransition = this.mTransition;
        backStackRecord.mTransitionStyle = this.mTransitionStyle;
        backStackRecord.mName = this.mName;
        backStackRecord.mIndex = this.mIndex;
        backStackRecord.mAddToBackStack = true;
        backStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
        backStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
        backStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
        backStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
        backStackRecord.mSharedElementSourceNames = this.mSharedElementSourceNames;
        backStackRecord.mSharedElementTargetNames = this.mSharedElementTargetNames;
        backStackRecord.bumpBackStackNesting(1);
        return backStackRecord;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeIntArray(this.mOps);
        dest.writeInt(this.mTransition);
        dest.writeInt(this.mTransitionStyle);
        dest.writeString(this.mName);
        dest.writeInt(this.mIndex);
        dest.writeInt(this.mBreadCrumbTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbTitleText, dest, 0);
        dest.writeInt(this.mBreadCrumbShortTitleRes);
        TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, dest, 0);
        dest.writeStringList(this.mSharedElementSourceNames);
        dest.writeStringList(this.mSharedElementTargetNames);
    }
}
