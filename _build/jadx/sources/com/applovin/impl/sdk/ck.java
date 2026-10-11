package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ck extends au {

    /* renamed from: a, reason: collision with root package name */
    private final String f494a;

    /* renamed from: b, reason: collision with root package name */
    private final Map f495b;
    private final AppLovinPostbackListener c;
    private int d;
    private int i;
    private int j;

    public ck(AppLovinSdkImpl appLovinSdkImpl, String str, Map map, AppLovinPostbackListener appLovinPostbackListener) {
        super("TaskDispatchPostback", appLovinSdkImpl);
        this.j = -1;
        this.f494a = str;
        this.c = appLovinPostbackListener;
        this.f495b = map;
    }

    public void a(int i) {
        this.d = i;
    }

    public void b(int i) {
        this.i = i;
    }

    public void c(int i) {
        this.j = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!AppLovinSdkUtils.isValidString(this.f494a)) {
            this.f.getLogger().i("TaskDispatchPostback", "Requested URL is not valid; nothing to do...");
            this.c.onPostbackFailure(this.f494a, AppLovinErrorCodes.INVALID_URL);
        } else {
            bh bhVar = new bh(this, "RepeatTaskDispatchPostback", this.d < 0 ? ((Integer) this.f.a(av.aG)).intValue() : this.d, this.f);
            bhVar.a(this.i);
            bhVar.run();
        }
    }
}
