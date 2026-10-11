package android.support.v4.app;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class RemoteInputCompatApi20 {
    RemoteInputCompatApi20() {
    }

    static RemoteInputCompatBase.RemoteInput[] toCompat(android.app.RemoteInput[] srcArray, RemoteInputCompatBase.RemoteInput.Factory factory) {
        if (srcArray == null) {
            return null;
        }
        RemoteInputCompatBase.RemoteInput[] newArray = factory.newArray(srcArray.length);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= srcArray.length) {
                return newArray;
            }
            android.app.RemoteInput remoteInput = srcArray[i2];
            newArray[i2] = factory.build(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), remoteInput.getExtras());
            i = i2 + 1;
        }
    }

    static android.app.RemoteInput[] fromCompat(RemoteInputCompatBase.RemoteInput[] srcArray) {
        if (srcArray == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr = new android.app.RemoteInput[srcArray.length];
        for (int i = 0; i < srcArray.length; i++) {
            RemoteInputCompatBase.RemoteInput remoteInput = srcArray[i];
            remoteInputArr[i] = new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras()).build();
        }
        return remoteInputArr;
    }

    static Bundle getResultsFromIntent(Intent intent) {
        return android.app.RemoteInput.getResultsFromIntent(intent);
    }

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] remoteInputs, Intent intent, Bundle results) {
        android.app.RemoteInput.addResultsToIntent(fromCompat(remoteInputs), intent, results);
    }
}
