package android.support.v4.app;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class BaseFragmentActivityEclair extends BaseFragmentActivityDonut {
    BaseFragmentActivityEclair() {
    }

    @Override // android.support.v4.app.BaseFragmentActivityDonut
    void onBackPressedNotHandled() {
        super.onBackPressed();
    }
}
