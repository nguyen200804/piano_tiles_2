package com.cmplay.tiles4_cn.wxapi;

import android.content.Context;
import com.cmplay.sharebase.a;
import com.cmplay.sharebase.a.c;
import com.cmplay.sharebase.b.b;
import com.cmplay.sharebase.b.d;
import com.cmplay.sharebase.e;
import com.cmplay.sharebase.f;
import com.cmplay.sharebase.g;
import com.cmplay.tiles4_cn.wxapi.auth.WechatAuth;
import com.cmplay.wechat.R;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.SendAuth;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WechatHelper implements c, d {
    private b mCallback;
    private WechatAuth mWechatAuth;

    @Override // com.cmplay.sharebase.b.d
    public void onShareWechat(Context context, g content) {
        new WeChatShareApi(context).shareContent(content, 0);
    }

    @Override // com.cmplay.sharebase.b.d
    public void onShareWechatTimeline(Context context, g content) {
        new WeChatShareApi(context).shareContent(content, 1);
    }

    static final class WechatHelperHolder {
        static final WechatHelper INSTANCE = new WechatHelper();

        WechatHelperHolder() {
        }
    }

    public static WechatHelper getInstance() {
        return WechatHelperHolder.INSTANCE;
    }

    private WechatHelper() {
        this.mWechatAuth = null;
        this.mCallback = null;
        e a2 = e.a();
        a2.a((d) this);
        a2.a((c) this);
    }

    public void auth(Context context, String appkey, String appSecret) {
        if (this.mWechatAuth == null) {
            this.mWechatAuth = new WechatAuth(context, appkey, appSecret);
        }
        this.mWechatAuth.authLogin();
    }

    public void refreshToken(Context context, String appkey, String appSecret) {
        if (this.mWechatAuth == null) {
            this.mWechatAuth = new WechatAuth(context, appkey, appSecret);
        }
        this.mWechatAuth.refreshToken(true);
    }

    public void onResp(BaseResp resp) {
        int i = 3;
        switch (resp.errCode) {
            case -2:
                i = 2;
                break;
            case 0:
                i = 1;
                break;
        }
        if (resp.getType() == 1) {
            if (this.mWechatAuth != null) {
                this.mWechatAuth.responseCode((SendAuth.Resp) resp);
            }
        } else {
            b c = e.a().c();
            if (c != null) {
                c.a(i);
            }
        }
    }

    public void requestUserInfo(Context context, com.cmplay.sharebase.a.d resp) {
        String packageName = context.getPackageName();
        String a2 = a.a(packageName);
        if (this.mWechatAuth == null) {
            this.mWechatAuth = new WechatAuth(context, a2, a.b(packageName));
        }
        f.a c = f.a().c(context, a2);
        if (c != null) {
            this.mWechatAuth.accessUserInfo(c.f1593a, c.d, resp);
        } else {
            resp.a(false, context.getString(R.string.checked_not_login));
        }
    }
}
