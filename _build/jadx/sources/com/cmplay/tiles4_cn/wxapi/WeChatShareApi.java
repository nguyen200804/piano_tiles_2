package com.cmplay.tiles4_cn.wxapi;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.sharebase.a;
import com.cmplay.sharebase.g;
import com.tencent.mm.sdk.modelmsg.SendMessageToWX;
import com.tencent.mm.sdk.modelmsg.WXImageObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXWebpageObject;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class WeChatShareApi {
    private IWXAPI mApi = null;
    private Context mContext;

    public WeChatShareApi(Context context) {
        this.mContext = context;
    }

    public void shareContent(g content, int sence) {
        String packageName = this.mContext.getPackageName();
        Log.d("Wechat", "check pkg is " + packageName);
        String a2 = a.a(packageName);
        this.mApi = WXAPIFactory.createWXAPI(this.mContext, a2, true);
        this.mApi.registerApp(a2);
        SendMessageToWX.Req req = new SendMessageToWX.Req();
        WXMediaMessage wXMediaMessage = new WXMediaMessage();
        String d = content.d();
        if (!TextUtils.isEmpty(d) && new File(d).exists()) {
            WXImageObject wXImageObject = new WXImageObject();
            wXImageObject.imagePath = d;
            wXMediaMessage.mediaObject = wXImageObject;
        }
        if (wXMediaMessage.mediaObject == null) {
            WXWebpageObject wXWebpageObject = new WXWebpageObject();
            wXWebpageObject.webpageUrl = content.a();
            wXMediaMessage.mediaObject = wXWebpageObject;
        }
        wXMediaMessage.setThumbImage(content.c());
        wXMediaMessage.title = content.e();
        wXMediaMessage.description = content.b();
        req.transaction = String.valueOf(System.currentTimeMillis());
        req.message = wXMediaMessage;
        req.scene = sence;
        this.mApi.sendReq(req);
    }
}
