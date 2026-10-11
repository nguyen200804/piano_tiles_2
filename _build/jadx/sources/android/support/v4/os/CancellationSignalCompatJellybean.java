package android.support.v4.os;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class CancellationSignalCompatJellybean {
    CancellationSignalCompatJellybean() {
    }

    public static Object create() {
        return new android.os.CancellationSignal();
    }

    public static void cancel(Object cancellationSignalObj) {
        ((android.os.CancellationSignal) cancellationSignalObj).cancel();
    }
}
