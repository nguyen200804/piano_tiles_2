package com.cmplay.tiles4_cn.uc.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.cmplay.sharebase.a;
import com.cmplay.tiles4_cn.wxapi.WechatHelper;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WXEntryActivity extends Activity implements IWXAPIEventHandler {

    /* renamed from: a, reason: collision with root package name */
    private IWXAPI f1697a;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String a2 = a.a(getPackageName());
        this.f1697a = WXAPIFactory.createWXAPI(this, a2, false);
        this.f1697a.registerApp(a2);
        this.f1697a.handleIntent(getIntent(), this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.f1697a.handleIntent(intent, this);
    }

    @Override // com.tencent.mm.sdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
        Log.d("WXEntryActivity", "onReq ,content is " + baseReq.toString());
    }

    @Override // com.tencent.mm.sdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        Log.d("WXEntryActivity", "onResp ,result code is " + baseResp.errCode + ", err string is " + baseResp.errStr);
        WechatHelper.getInstance().onResp(baseResp);
        finish();
    }
}
