package android.support.v4.app;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class RemoteInputCompatJellybean {
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    private static final String KEY_ALLOW_FREE_FORM_INPUT = "allowFreeFormInput";
    private static final String KEY_CHOICES = "choices";
    private static final String KEY_EXTRAS = "extras";
    private static final String KEY_LABEL = "label";
    private static final String KEY_RESULT_KEY = "resultKey";
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";

    RemoteInputCompatJellybean() {
    }

    static RemoteInputCompatBase.RemoteInput fromBundle(Bundle data, RemoteInputCompatBase.RemoteInput.Factory factory) {
        return factory.build(data.getString(KEY_RESULT_KEY), data.getCharSequence(KEY_LABEL), data.getCharSequenceArray(KEY_CHOICES), data.getBoolean(KEY_ALLOW_FREE_FORM_INPUT), data.getBundle(KEY_EXTRAS));
    }

    static Bundle toBundle(RemoteInputCompatBase.RemoteInput remoteInput) {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_RESULT_KEY, remoteInput.getResultKey());
        bundle.putCharSequence(KEY_LABEL, remoteInput.getLabel());
        bundle.putCharSequenceArray(KEY_CHOICES, remoteInput.getChoices());
        bundle.putBoolean(KEY_ALLOW_FREE_FORM_INPUT, remoteInput.getAllowFreeFormInput());
        bundle.putBundle(KEY_EXTRAS, remoteInput.getExtras());
        return bundle;
    }

    static RemoteInputCompatBase.RemoteInput[] fromBundleArray(Bundle[] bundles, RemoteInputCompatBase.RemoteInput.Factory factory) {
        if (bundles == null) {
            return null;
        }
        RemoteInputCompatBase.RemoteInput[] newArray = factory.newArray(bundles.length);
        for (int i = 0; i < bundles.length; i++) {
            newArray[i] = fromBundle(bundles[i], factory);
        }
        return newArray;
    }

    static Bundle[] toBundleArray(RemoteInputCompatBase.RemoteInput[] remoteInputs) {
        if (remoteInputs == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[remoteInputs.length];
        for (int i = 0; i < remoteInputs.length; i++) {
            bundleArr[i] = toBundle(remoteInputs[i]);
        }
        return bundleArr;
    }

    static Bundle getResultsFromIntent(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType("text/vnd.android.intent") && description.getLabel().equals("android.remoteinput.results")) {
            return (Bundle) clipData.getItemAt(0).getIntent().getExtras().getParcelable("android.remoteinput.resultsData");
        }
        return null;
    }

    static void addResultsToIntent(RemoteInputCompatBase.RemoteInput[] remoteInputs, Intent intent, Bundle results) {
        Bundle bundle = new Bundle();
        for (RemoteInputCompatBase.RemoteInput remoteInput : remoteInputs) {
            Object obj = results.get(remoteInput.getResultKey());
            if (obj instanceof CharSequence) {
                bundle.putCharSequence(remoteInput.getResultKey(), (CharSequence) obj);
            }
        }
        Intent intent2 = new Intent();
        intent2.putExtra("android.remoteinput.resultsData", bundle);
        intent.setClipData(ClipData.newIntent("android.remoteinput.results", intent2));
    }
}
