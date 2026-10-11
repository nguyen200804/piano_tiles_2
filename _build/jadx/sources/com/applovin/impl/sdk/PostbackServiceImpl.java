package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinPostbackService;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PostbackServiceImpl implements AppLovinPostbackService {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f402a;

    PostbackServiceImpl(AppLovinSdkImpl appLovinSdkImpl) {
        this.f402a = appLovinSdkImpl;
    }

    @Override // com.applovin.sdk.AppLovinPostbackService
    public void dispatchPostbackAsync(String str, AppLovinPostbackListener appLovinPostbackListener) {
        dispatchPostbackAsync(str, null, appLovinPostbackListener);
    }

    public void dispatchPostbackAsync(String str, Map map, int i, int i2, int i3, AppLovinPostbackListener appLovinPostbackListener) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            this.f402a.getLogger().e("PostbackService", "Requested a postback dispatch for an empty URL; nothing to do...");
            if (appLovinPostbackListener != null) {
                appLovinPostbackListener.onPostbackFailure(str, AppLovinErrorCodes.INVALID_URL);
                return;
            }
            return;
        }
        ck ckVar = new ck(this.f402a, str, map, appLovinPostbackListener);
        ckVar.b(i2);
        ckVar.a(i);
        ckVar.c(i3);
        this.f402a.a().a(ckVar, bp.POSTBACKS);
    }

    public void dispatchPostbackAsync(String str, Map map, AppLovinPostbackListener appLovinPostbackListener) {
        if (!AppLovinSdkUtils.isValidString(str)) {
            this.f402a.getLogger().d("PostbackService", "Ignoring enqueued postback request to invalid URL");
        } else {
            this.f402a.a().a(new ck(this.f402a, str, map, new ap(this, appLovinPostbackListener)), bp.POSTBACKS);
        }
    }
}
