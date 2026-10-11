package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.R;
import com.facebook.login.LoginClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LoginFragment extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    private String f3304a;

    /* renamed from: b, reason: collision with root package name */
    private LoginClient f3305b;
    private LoginClient.Request c;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null) {
            this.f3305b = (LoginClient) savedInstanceState.getParcelable("loginClient");
            this.f3305b.a(this);
        } else {
            this.f3305b = new LoginClient(this);
        }
        this.f3305b.a(new LoginClient.b() { // from class: com.facebook.login.LoginFragment.1
            @Override // com.facebook.login.LoginClient.b
            public void a(LoginClient.Result result) {
                LoginFragment.this.a(result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a(activity);
            if (activity.getIntent() != null) {
                Intent intent = activity.getIntent();
                intent.setExtrasClassLoader(LoginClient.Request.class.getClassLoader());
                this.c = (LoginClient.Request) intent.getParcelableExtra("request");
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.f3305b.f();
        super.onDestroy();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        final View inflate = inflater.inflate(R.layout.com_facebook_login_fragment, container, false);
        this.f3305b.a(new LoginClient.a() { // from class: com.facebook.login.LoginFragment.2
            @Override // com.facebook.login.LoginClient.a
            public void a() {
                inflate.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(0);
            }

            @Override // com.facebook.login.LoginClient.a
            public void b() {
                inflate.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LoginClient.Result result) {
        this.c = null;
        int i = result.f3300a == LoginClient.Result.a.CANCEL ? 0 : -1;
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (isAdded()) {
            getActivity().setResult(i, intent);
            getActivity().finish();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f3304a == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            getActivity().finish();
        } else {
            this.f3305b.a(this.c);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        getActivity().findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        this.f3305b.a(requestCode, resultCode, data);
    }

    @Override // android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putParcelable("loginClient", this.f3305b);
    }

    private void a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            this.f3304a = callingActivity.getPackageName();
        }
    }

    LoginClient a() {
        return this.f3305b;
    }
}
