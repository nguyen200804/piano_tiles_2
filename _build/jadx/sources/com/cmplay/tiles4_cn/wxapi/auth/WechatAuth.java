package com.cmplay.tiles4_cn.wxapi.auth;

import android.content.Context;
import android.text.TextUtils;
import com.cmplay.sharebase.a.a;
import com.cmplay.sharebase.d;
import com.cmplay.sharebase.e;
import com.cmplay.sharebase.f;
import com.cmplay.wechat.R;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.common.Constants;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.SendAuth;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WechatAuth {
    private static final String TAG = "WechatAuth";
    private static final String URL_ACCESS_USER_INFO = "https://api.weixin.qq.com/sns/userinfo?access_token=%s&openid=%s";
    private static final String URL_REFRESH_TOKEN = "https://api.weixin.qq.com/sns/oauth2/refresh_token?appid=%s&grant_type=refresh_token&refresh_token=%s";
    private static final String URL_REQUEST_TOKEN = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code";
    private IWXAPI mApi;
    private String mAppKey;
    private String mAppSecret;
    private Context mContext;

    public WechatAuth(Context context, String appKey, String appSecret) {
        this.mApi = null;
        this.mContext = context;
        this.mApi = WXAPIFactory.createWXAPI(context, appKey, true);
        this.mApi.registerApp(appKey);
        this.mAppKey = appKey;
        this.mAppSecret = appSecret;
    }

    public void authLogin() {
        f.a c = f.a().c(this.mContext, this.mAppKey);
        if (c == null) {
            requestCode();
            return;
        }
        if (c.f1594b < System.currentTimeMillis()) {
            refreshToken();
        } else {
            a d = e.a().d();
            if (d != null) {
                d.a(0);
            }
        }
        d.a(TAG, "unionid=" + c.e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestCode() {
        d.a("DL", " request code");
        a d = e.a().d();
        if (d != null) {
            d.a();
        }
        SendAuth.Req req = new SendAuth.Req();
        req.scope = "snsapi_userinfo";
        req.state = "cmcm_piano_tiles2_for_gp";
        this.mApi.sendReq(req);
    }

    public void responseCode(SendAuth.Resp resp) {
        a d = e.a().d();
        switch (resp.errCode) {
            case BaseResp.ErrCode.ERR_AUTH_DENIED /* -4 */:
                if (d != null) {
                    d.a(2);
                    break;
                }
                break;
            case -2:
                if (d != null) {
                    d.a(1);
                    break;
                }
                break;
            case 0:
                d.a(TAG, String.format("response code result :code %s,country %s,lang %s, state %s,url %s,openId %s ", resp.code, resp.country, resp.lang, resp.state, resp.url, resp.openId));
                requestToken(resp.code);
                break;
        }
    }

    public void requestToken(final String code) {
        new Thread() { // from class: com.cmplay.tiles4_cn.wxapi.auth.WechatAuth.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String httpGet = WechatAuth.httpGet(String.format(WechatAuth.URL_REQUEST_TOKEN, WechatAuth.this.mAppKey, WechatAuth.this.mAppSecret, code));
                if (TextUtils.isEmpty(httpGet)) {
                    a d = e.a().d();
                    if (d != null) {
                        d.a(2);
                        return;
                    }
                    return;
                }
                if (httpGet.contains("errcode")) {
                    a d2 = e.a().d();
                    if (d2 != null) {
                        d2.a(2);
                        return;
                    }
                    return;
                }
                f a2 = f.a();
                a2.d(WechatAuth.this.mContext, WechatAuth.this.mAppKey);
                d.a(WechatAuth.TAG, "result is " + httpGet);
                f.a a3 = a2.a(WechatAuth.this.mContext, WechatAuth.this.mAppKey, httpGet);
                a2.b(WechatAuth.this.mContext, WechatAuth.this.mAppKey);
                a d3 = e.a().d();
                if (d3 != null) {
                    d3.a(0);
                    d.a(WechatAuth.TAG, "unionid=" + a3.e);
                }
            }
        }.start();
    }

    public void refreshToken() {
        refreshToken(false);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.cmplay.tiles4_cn.wxapi.auth.WechatAuth$2] */
    public void accessUserInfo(final String accessToken, final String openid, final com.cmplay.sharebase.a.d resp) {
        new Thread() { // from class: com.cmplay.tiles4_cn.wxapi.auth.WechatAuth.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                f a2 = f.a();
                long b2 = a2.b(WechatAuth.this.mContext);
                long currentTimeMillis = System.currentTimeMillis();
                if (TextUtils.isEmpty(a2.a(WechatAuth.this.mContext)) || currentTimeMillis - b2 > 0) {
                    String httpGet = WechatAuth.httpGet(String.format(WechatAuth.URL_ACCESS_USER_INFO, accessToken, openid));
                    if (TextUtils.isEmpty(httpGet)) {
                        if (resp != null) {
                            resp.a(false, WechatAuth.this.mContext.getString(R.string.network_error));
                            return;
                        }
                        return;
                    }
                    if (httpGet.contains("errorcode")) {
                        if (resp != null) {
                            resp.a(false, WechatAuth.this.mContext.getString(R.string.data_error));
                            return;
                        }
                        return;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(httpGet);
                        String optString = jSONObject.optString("nickname", "");
                        if (TextUtils.isEmpty(optString)) {
                            if (resp != null) {
                                resp.a(false, WechatAuth.this.mContext.getString(R.string.data_error));
                                return;
                            }
                            return;
                        }
                        String optString2 = jSONObject.optString("unionid", "");
                        String optString3 = jSONObject.optString("headimgurl", "");
                        int length = optString3.length();
                        if (optString3.endsWith("0")) {
                            optString3 = ((Object) optString3.subSequence(0, length - 2)) + "96";
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put(FacebookAdapter.KEY_ID, optString2);
                        jSONObject3.put(MediationMetaData.KEY_NAME, optString);
                        jSONObject3.put("url", optString3);
                        jSONObject2.put("data", jSONObject3);
                        String jSONObject4 = jSONObject2.toString();
                        a2.a(WechatAuth.this.mContext, jSONObject4);
                        a2.a(WechatAuth.this.mContext, System.currentTimeMillis());
                        if (resp != null) {
                            resp.a(true, jSONObject4);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        if (resp != null) {
                            resp.a(false, WechatAuth.this.mContext.getString(R.string.parse_json_error));
                        }
                    }
                }
            }
        }.start();
    }

    public static String httpGet(String httpUrl) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(httpUrl).openConnection();
            httpURLConnection.setDoOutput(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200 || responseCode == 201) {
                StringBuffer stringBuffer = new StringBuffer();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"), 2048);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (!TextUtils.isEmpty(readLine)) {
                        stringBuffer.append(readLine);
                    } else {
                        bufferedReader.close();
                        httpURLConnection.disconnect();
                        return stringBuffer.toString();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public void refreshToken(final boolean isJustRefreshToken) {
        new Thread() { // from class: com.cmplay.tiles4_cn.wxapi.auth.WechatAuth.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                f a2 = f.a();
                f.a c = a2.c(WechatAuth.this.mContext, WechatAuth.this.mAppKey);
                if (c != null) {
                    String httpGet = WechatAuth.httpGet(String.format(WechatAuth.URL_REFRESH_TOKEN, WechatAuth.this.mAppKey, c.c));
                    a d = e.a().d();
                    if (TextUtils.isEmpty(httpGet)) {
                        if (d != null && !isJustRefreshToken) {
                            d.a(2);
                            return;
                        }
                        return;
                    }
                    if (httpGet.contains("errcode")) {
                        if (!isJustRefreshToken) {
                            WechatAuth.this.requestCode();
                            return;
                        }
                        return;
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(httpGet);
                        c.f1593a = jSONObject.optString("access_token", null);
                        c.c = jSONObject.optString("refresh_token", null);
                        c.d = jSONObject.optString("openid", null);
                        c.f1594b = (jSONObject.optInt("expires_in", 0) * 1000) + System.currentTimeMillis();
                        c.f = System.currentTimeMillis();
                        a2.a(WechatAuth.this.mContext, WechatAuth.this.mAppKey, c);
                        if (d != null && !isJustRefreshToken) {
                            d.a(0);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                        if (d != null && !isJustRefreshToken) {
                            d.a(2);
                        }
                    }
                }
            }
        }.start();
    }
}
