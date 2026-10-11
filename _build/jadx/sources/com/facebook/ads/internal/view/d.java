package com.facebook.ads.internal.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.facebook.ads.AudienceNetworkActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface d {

    public interface a {
        void a(View view);

        void a(String str);

        void a(String str, com.facebook.ads.internal.g.q qVar);
    }

    void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity);

    void a(Bundle bundle);

    void a(a aVar);

    void h();

    void i();

    void onDestroy();
}
