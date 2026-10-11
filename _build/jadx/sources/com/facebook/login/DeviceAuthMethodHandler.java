package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class DeviceAuthMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.DeviceAuthMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    };
    private static ScheduledThreadPoolExecutor c;

    DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        b(request);
        return true;
    }

    private void b(LoginClient.Request request) {
        DeviceAuthDialog deviceAuthDialog = new DeviceAuthDialog();
        deviceAuthDialog.show(this.f3310b.b().getSupportFragmentManager(), "login_with_facebook");
        deviceAuthDialog.a(request);
    }

    public void e_() {
        this.f3310b.a(LoginClient.Result.a(this.f3310b.c(), "User canceled log in."));
    }

    public void a(Exception exc) {
        this.f3310b.a(LoginClient.Result.a(this.f3310b.c(), null, exc.getMessage()));
    }

    public void a(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, com.facebook.c cVar, Date date, Date date2) {
        this.f3310b.a(LoginClient.Result.a(this.f3310b.c(), new AccessToken(str, str2, str3, collection, collection2, cVar, date, date2)));
    }

    public static synchronized ScheduledThreadPoolExecutor b() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            if (c == null) {
                c = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = c;
        }
        return scheduledThreadPoolExecutor;
    }

    protected DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String c() {
        return "device_auth";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }
}
