package com.facebook.login;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.GraphRequest;
import com.facebook.R;
import com.facebook.i;
import com.facebook.internal.aa;
import com.facebook.k;
import com.facebook.l;
import com.facebook.login.LoginClient;
import com.facebook.o;
import com.facebook.q;
import com.facebook.s;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Date;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DeviceAuthDialog extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    private ProgressBar f3282a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f3283b;
    private DeviceAuthMethodHandler c;
    private volatile o e;
    private volatile ScheduledFuture f;
    private volatile RequestState g;
    private Dialog h;
    private AtomicBoolean d = new AtomicBoolean();
    private boolean i = false;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        RequestState requestState;
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        this.c = (DeviceAuthMethodHandler) ((LoginFragment) ((FacebookActivity) getActivity()).a()).a().g();
        if (savedInstanceState != null && (requestState = (RequestState) savedInstanceState.getParcelable("request_state")) != null) {
            a(requestState);
        }
        return onCreateView;
    }

    @Override // android.support.v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.h = new Dialog(getActivity(), R.style.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f3282a = (ProgressBar) inflate.findViewById(R.id.progress_bar);
        this.f3283b = (TextView) inflate.findViewById(R.id.confirmation_code);
        ((Button) inflate.findViewById(R.id.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                DeviceAuthDialog.this.d();
            }
        });
        ((TextView) inflate.findViewById(R.id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(R.string.com_facebook_device_auth_instructions)));
        this.h.setContentView(inflate);
        return this.h;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        super.onDismiss(dialog);
        if (!this.i) {
            d();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        if (this.g != null) {
            outState.putParcelable("request_state", this.g);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.i = true;
        this.d.set(true);
        super.onDestroy();
        if (this.e != null) {
            this.e.cancel(true);
        }
        if (this.f != null) {
            this.f.cancel(true);
        }
    }

    public void a(LoginClient.Request request) {
        Bundle bundle = new Bundle();
        bundle.putString(VastExtensionXmlManager.TYPE, "device_code");
        bundle.putString("client_id", l.i());
        bundle.putString("scope", TextUtils.join(",", request.a()));
        new GraphRequest(null, "oauth/device", bundle, s.POST, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.2
            @Override // com.facebook.GraphRequest.b
            public void a(q qVar) {
                if (qVar.a() != null) {
                    DeviceAuthDialog.this.a(qVar.a().e());
                    return;
                }
                JSONObject b2 = qVar.b();
                RequestState requestState = new RequestState();
                try {
                    requestState.a(b2.getString("user_code"));
                    requestState.b(b2.getString("code"));
                    requestState.a(b2.getLong("interval"));
                    DeviceAuthDialog.this.a(requestState);
                } catch (JSONException e) {
                    DeviceAuthDialog.this.a(new i(e));
                }
            }
        }).j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RequestState requestState) {
        this.g = requestState;
        this.f3283b.setText(requestState.a());
        this.f3283b.setVisibility(0);
        this.f3282a.setVisibility(8);
        if (requestState.d()) {
            b();
        } else {
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.g.b(new Date().getTime());
        this.e = c().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f = DeviceAuthMethodHandler.b().schedule(new Runnable() { // from class: com.facebook.login.DeviceAuthDialog.3
            @Override // java.lang.Runnable
            public void run() {
                DeviceAuthDialog.this.a();
            }
        }, this.g.c(), TimeUnit.SECONDS);
    }

    private GraphRequest c() {
        Bundle bundle = new Bundle();
        bundle.putString(VastExtensionXmlManager.TYPE, "device_token");
        bundle.putString("client_id", l.i());
        bundle.putString("code", this.g.b());
        return new GraphRequest(null, "oauth/device", bundle, s.POST, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.4
            @Override // com.facebook.GraphRequest.b
            public void a(q qVar) {
                if (!DeviceAuthDialog.this.d.get()) {
                    k a2 = qVar.a();
                    if (a2 != null) {
                        String d = a2.d();
                        if (d.equals("authorization_pending") || d.equals("slow_down")) {
                            DeviceAuthDialog.this.b();
                            return;
                        } else if (d.equals("authorization_declined") || d.equals("code_expired")) {
                            DeviceAuthDialog.this.d();
                            return;
                        } else {
                            DeviceAuthDialog.this.a(qVar.a().e());
                            return;
                        }
                    }
                    try {
                        DeviceAuthDialog.this.a(qVar.b().getString("access_token"));
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new i(e));
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions");
        new GraphRequest(new AccessToken(str, l.i(), "0", null, null, null, null, null), "me", bundle, s.GET, new GraphRequest.b() { // from class: com.facebook.login.DeviceAuthDialog.5
            @Override // com.facebook.GraphRequest.b
            public void a(q qVar) {
                if (!DeviceAuthDialog.this.d.get()) {
                    if (qVar.a() != null) {
                        DeviceAuthDialog.this.a(qVar.a().e());
                        return;
                    }
                    try {
                        JSONObject b2 = qVar.b();
                        String string = b2.getString(FacebookAdapter.KEY_ID);
                        aa.e a2 = aa.a(b2);
                        DeviceAuthDialog.this.c.a(str, l.i(), string, a2.a(), a2.b(), com.facebook.c.DEVICE_AUTH, null, null);
                        DeviceAuthDialog.this.h.dismiss();
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.a(new i(e));
                    }
                }
            }
        }).j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(i iVar) {
        if (this.d.compareAndSet(false, true)) {
            this.c.a(iVar);
            this.h.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.d.compareAndSet(false, true)) {
            if (this.c != null) {
                this.c.e_();
            }
            this.h.dismiss();
        }
    }

    private static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.login.DeviceAuthDialog.RequestState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        private String f3290a;

        /* renamed from: b, reason: collision with root package name */
        private String f3291b;
        private long c;
        private long d;

        RequestState() {
        }

        public String a() {
            return this.f3290a;
        }

        public void a(String str) {
            this.f3290a = str;
        }

        public String b() {
            return this.f3291b;
        }

        public void b(String str) {
            this.f3291b = str;
        }

        public long c() {
            return this.c;
        }

        public void a(long j) {
            this.c = j;
        }

        public void b(long j) {
            this.d = j;
        }

        protected RequestState(Parcel in) {
            this.f3290a = in.readString();
            this.f3291b = in.readString();
            this.c = in.readLong();
            this.d = in.readLong();
        }

        public boolean d() {
            return this.d != 0 && (new Date().getTime() - this.d) - (this.c * 1000) < 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.f3290a);
            dest.writeString(this.f3291b);
            dest.writeLong(this.c);
            dest.writeLong(this.d);
        }
    }
}
