package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.internal.ac;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FacebookDialogFragment extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    private Dialog f3152a;

    public void a(Dialog dialog) {
        this.f3152a = dialog;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        ac jVar;
        super.onCreate(savedInstanceState);
        if (this.f3152a == null) {
            FragmentActivity activity = getActivity();
            Bundle d = v.d(activity.getIntent());
            if (!d.getBoolean("is_fallback", false)) {
                String string = d.getString("action");
                Bundle bundle = d.getBundle("params");
                if (aa.a(string)) {
                    aa.a("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
                    activity.finish();
                    return;
                }
                jVar = new ac.a(activity, string, bundle).a(new ac.c() { // from class: com.facebook.internal.FacebookDialogFragment.1
                    @Override // com.facebook.internal.ac.c
                    public void a(Bundle bundle2, com.facebook.i iVar) {
                        FacebookDialogFragment.this.a(bundle2, iVar);
                    }
                }).a();
            } else {
                String string2 = d.getString("url");
                if (aa.a(string2)) {
                    aa.a("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
                    activity.finish();
                    return;
                } else {
                    jVar = new j(activity, string2, String.format("fb%s://bridge/", com.facebook.l.i()));
                    jVar.a(new ac.c() { // from class: com.facebook.internal.FacebookDialogFragment.2
                        @Override // com.facebook.internal.ac.c
                        public void a(Bundle bundle2, com.facebook.i iVar) {
                            FacebookDialogFragment.this.a(bundle2);
                        }
                    });
                }
            }
            this.f3152a = jVar;
        }
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        if (this.f3152a == null) {
            a((Bundle) null, (com.facebook.i) null);
            setShowsDialog(false);
        }
        return this.f3152a;
    }

    @Override // android.support.v4.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (this.f3152a instanceof ac) {
            ((ac) this.f3152a).d();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle, com.facebook.i iVar) {
        FragmentActivity activity = getActivity();
        activity.setResult(iVar == null ? -1 : 0, v.a(activity.getIntent(), bundle, iVar));
        activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle) {
        FragmentActivity activity = getActivity();
        Intent intent = new Intent();
        if (bundle == null) {
            bundle = new Bundle();
        }
        intent.putExtras(bundle);
        activity.setResult(-1, intent);
        activity.finish();
    }
}
