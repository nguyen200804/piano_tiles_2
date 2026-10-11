package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewAdUrlGenerator extends AdUrlGenerator {
    private final boolean e;

    public WebViewAdUrlGenerator(Context context, boolean isStorePictureSupported) {
        super(context);
        this.e = isStorePictureSupported;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String serverHostname) {
        a(serverHostname, Constants.AD_HANDLER);
        k("6");
        a(ClientMetadata.getInstance(this.f4114a));
        a(true);
        b(this.e);
        return a();
    }
}
