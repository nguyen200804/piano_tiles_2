package com.cmplay.util;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;
import org.cocos2dx.lib.Cocos2dxHelper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NativeUtil {
    private static final int ACTION_CONSUME_ORDER = 4;
    private static final int ACTION_GET_PRICE = 0;
    private static final int ACTION_INIT_PAYMENT = 1;
    private static final int ACTION_PURCHASE = 3;
    private static final int ACTION_QUERY_ORDERS = 2;
    public static final String ADDGOLD_SOURCE_CARD_INSTALL = "gold_source_card_install";
    public static final String ADDGOLD_SOURCE_GIFT_CONVERT = "gold_source_gift_convert";
    public static final String ADDGOLD_SOURCE_MSGBOX_REMIND_GIFT = "gold_source_msgbox_add_remind_gift";
    public static final String ADDGOLG_SOURCE_H5 = "gold_source_h5";
    public static final int AD_CANCEL = 3;
    public static final int AD_CANNOT_SHOW = 5;
    public static final int AD_CLOSE = 4;
    public static final int AD_COMPLETED = 2;
    public static final int AD_SHOW = 1;
    private static final String KEY_DECODE_SIMPLE_TIME = "decode_simple_time";
    private static final String KEY_USER_ENABLE_MIX = "user_enable_mix";
    private static final int MAIN_SHOW = 1001;
    private static final int NOTIFY_ACTION = 1003;
    private static final int NOTIFY_STATE = 1002;
    private static final String PHONE_CFG_ASSET_PATH = "res/phonecfg.json";
    private static final String PHONE_CFG_FILE_PATH = "phonecfg.json";
    private static final String SOUND_MIXSHARE_PREF_NAME = "com.cmplay.tiles4.soundmix";
    private static final int UI_GAMEING = 4;
    private static final int UI_HALL = 2;
    private static final int UI_HOME = 0;
    private static final int UI_MUSIC = 1;
    private static final int UI_RESULT = 5;
    private static final int UI_SETTING = 3;
    private static final String WAVEMIX_TAG = "wavemix-info";
    private static r sDelegate = new s();

    public static native void DiamondToLogFile(String str);

    public static native void H5Login();

    public static native void ShareSuccessAddDiamondByChallengeMusic();

    public static native void adStatusCallback(int i);

    public static native void adStatusCallback(int i, int i2, int i3);

    public static native void addDiamonds(int i, int i2);

    public static native void addOfferWallReward(int i);

    public static native void androidLoadedEnd();

    public static native void appInstallNotify(String str);

    public static native void backKeyClicked();

    public static native boolean canMusicUnlockedInMessegeBox(int i, int i2);

    public static native boolean canShowMsgById(String str);

    public static native void checkDiffAccount();

    public static native void checkTencentUrlLogin();

    public static native void cloudUpdateNotify();

    public static native void costCurCoin(int i);

    public static native void costCurHP(int i);

    public static native void doNotificationAction(int i, String str);

    public static native void doPostFeedbackInfo(String str);

    public static native boolean gameInit();

    public static native void gameRequestCallback(int i, int i2);

    public static native String getAlbumPersonalText();

    public static native boolean getChallengeCopyAllFinishStatus();

    public static native int getChallengeCurrentScore();

    public static native int getChallengeLevel();

    public static native int getChallengePassScore();

    public static native int getChallengeStatus();

    public static native int getCostPay(int i);

    public static native int getCurCoin(boolean z);

    public static native int getCurHP(boolean z);

    public static native int getDiamond(boolean z);

    public static native String getFaceBookId();

    public static native int getGameStartTimes();

    public static native String getHallLevel();

    public static native float getHighestAchievement();

    public static native String getInnerUUID();

    public static native int getInstallTime();

    public static native String getLanguageTextByKey(String str);

    public static native String getMsgPicNameByUrl(String str);

    public static native String getNetUUid();

    public static native void getPhoneCode(String str);

    public static native String getPlayerInfo();

    public static native void getPriceCallback(String str);

    public static native float getRankPercent();

    public static native int getRanking();

    public static native int getRecommendSongMid();

    public static native String getScore();

    public static native int getScoreLevel();

    public static native String getShareDescription();

    public static native String getShareUIBgImageInfo();

    public static native String getSinglesRankingJson();

    public static native String getSongName();

    public static native int getSongOrder();

    public static native void getSubscribeInfoCallback(String str);

    public static native int getTodayPlayTimes(int i);

    public static native int getTodaySpecialSongMid();

    public static native String getTopChartsJson();

    public static native void halloweenCallback(int i, int i2);

    public static native boolean hasSongBeenPlayed(int i);

    public static native boolean isFBEverLoginBefore();

    public static native boolean isFirstPurchase();

    public static native boolean isHolidayEnable();

    public static native boolean isHolidayEntryShow();

    public static native boolean isLoginGameCenter();

    public static native boolean isUnlockMusicByMid(int i);

    public static native void loginCallback(int i, int i2, String str);

    public static native void mobileLogin(String str, String str2);

    public static native void mobileLoginDialogClose();

    public static native void modifyDiamond(boolean z, int i, String str, int i2);

    public static native void modifyEnergy(boolean z, int i);

    public static native void modifyGold(boolean z, int i, String str);

    public static native void notifyAttentionWechatPublicSuccess();

    public static native void notifyCheckRecommendInstalled();

    public static native void notifyNetWorkChange(int i);

    public static native void notifySelectImageResult(boolean z, String str);

    public static native void notifySendRedPacketSuccess(boolean z);

    public static native void notifyStatusChanged();

    public static native void notifyTokenChanged(int i, String str);

    public static native void notifyWiredHeadState(boolean z);

    public static native void onCdFragmentDataChanged();

    public static native void onCloudDataChanged();

    public static native void onEditTextDone(String str);

    public static native void onExchangeFinish();

    public static native void onFamilyGamesPushUpdate();

    public static native void onLevelingDataChanged();

    public static native void onNotificationRemoved(int i, long j, String str);

    public static native void onNotificationShow(int i, String str);

    public static native void onOpenScreenClose();

    public static native void onSettingsPushUpdate();

    public static native void onShareH5ViewClosed();

    public static native void onUploadDebugInfoRes(int i);

    public static native void openGetWeekRaceDiamondPage(String str);

    public static native void payCallback(int i);

    public static native void payCallback(int i, int i2);

    public static native void playSoundEffect(String str, String str2);

    public static native void pushDialogNotify(int i);

    public static native boolean pushGotoBattleNotify(int i);

    public static native void pushRankNotify(int i);

    public static native void pushTabNotify(int i);

    public static native void pushUnlockMusicNotify(int i, int i2, int i3);

    public static native void pushUnlockMusicNotify(int i, int i2, int i3, boolean z);

    public static native void pushVipStoreNotify();

    public static native void receiveFriendInviteUserId(String str);

    public static native void refreshSDKMessage();

    public static native void refreshTencentTokenCallback(boolean z, int i);

    private static native void reportData1(String str, String str2, boolean z);

    public static native void reportHttpException(int i, String str, String str2, int i2, int i3, String str3);

    public static native void reportLoginBtnPV();

    public static native void reportMessagePush(String str, String str2, int i);

    public static native void reportShareData(int i, int i2, int i3, int i4, int i5);

    public static native void reportTabshowForSorry(int i, int i2);

    public static native void reportTabshowOfShare(int i, int i2, int i3);

    public static native void reportTask();

    public static native void reportWhitetile2Class(int i, int i2, int i3, int i4);

    public static native void reqInvitableFriendsCallback(int i, String str);

    public static native void reqMeFriendsCallback(int i, String str);

    public static native void reqMeInfoCallback(int i, String str, boolean z);

    public static native void reqPlayGamesUserInfoCallBack(String str);

    public static native void resetPublicData();

    public static native void scheduleNotification(int i);

    public static native void scheduleNotifications();

    public static native void sendConsumeInfo(String str, String str2);

    public static native void sendEmailCallback(int i);

    public static native void sendOrderInfo(String str, String str2, int i);

    public static native void sendShowExpireDialog();

    public static native void sendSubscribeState(int i, String str);

    public static native void setBaiduThirdPay(boolean z);

    public static native void setIsInGame(boolean z);

    public static native void shareCallback(int i, int i2);

    public static native void showNotificationNative(int i, String str, String str2, String str3);

    public static native void showTencentLoginNoticeDialog(int i);

    public static native void startVerificTransaction();

    public static native void subscribePayCallback(String str, String str2, String str3);

    public static native boolean touchGhost();

    private NativeUtil() {
    }

    public static boolean reportData(String tableName, String tableContent, boolean isForce) {
        boolean z = Cocos2dxHelper.sInited || Cocos2dxHelper.sInited_service;
        if (z) {
            reportData1(tableName, tableContent, isForce);
        }
        return z;
    }

    public static String getUUID() {
        return sDelegate.a();
    }

    public static String readFile(String fileName) {
        return sDelegate.k(fileName);
    }

    public static String getHardware() {
        return sDelegate.l();
    }

    public static void startMessageBox(int from) {
        sDelegate.w(from);
    }

    public static boolean isNotShowLoadingInPurchasing() {
        return sDelegate.ar();
    }

    public static int getVirtualButton() {
        return sDelegate.X();
    }

    public static void sendWebLoginstatus(String status) {
        sDelegate.p(status);
    }

    public static String getpkName() {
        return sDelegate.u();
    }

    public static int getUserEnableMix() {
        return sDelegate.ah();
    }

    public static boolean ShareMusicTrack(String track, int mid, int scene) {
        return sDelegate.a(track, mid, scene);
    }

    public static void onBackKeyClicked() {
        sDelegate.S();
    }

    public static String getProduct() {
        return sDelegate.j();
    }

    public static void loginInReqFriendPermission() {
        sDelegate.af();
    }

    public static void setLanguage(String language, String country) {
        sDelegate.c(language, country);
    }

    public static int getPlatformType() {
        return sDelegate.aE();
    }

    public static int getSdkVer() {
        return sDelegate.q();
    }

    public static void onGetPriceCallback(String res) {
        sDelegate.i(res);
    }

    public static String getDevice() {
        return sDelegate.h();
    }

    public static boolean isWeiboInstalled() {
        return sDelegate.M();
    }

    public static void showGiftConvertDialog() {
        sDelegate.aD();
    }

    public static void loginGameCenterSuccess(int type, boolean isSuccess) {
        sDelegate.a(type, isSuccess);
    }

    public static void onPayCallback(int type) {
        sDelegate.f(type);
    }

    public static String readPhoneCfgFromAsset() {
        return sDelegate.Z();
    }

    public static void notifyCurrentMsgIconInvalid() {
        sDelegate.ao();
    }

    public static boolean isWiredHeadsetOn() {
        return sDelegate.aa();
    }

    public static int getDecodeSimpleTime() {
        return sDelegate.ai();
    }

    public static void startWebView() {
        sDelegate.aq();
    }

    public static boolean isTwitterInstalled() {
        return sDelegate.K();
    }

    public static void reqInvitableFriendsCallbackOnGLThread(int platformType, String json) {
        sDelegate.e(platformType, json);
    }

    public static void openRanking(int sceneType, String jsonData) {
        sDelegate.f(sceneType, jsonData);
    }

    public static void playGamesOver() {
        sDelegate.ak();
    }

    public static void doRateUs() {
        sDelegate.Q();
    }

    public static void adPrepare(int adType) {
        sDelegate.t(adType);
    }

    public static void onDiamondModify(boolean isSuccess, int from) {
        sDelegate.a(isSuccess, from);
    }

    public static boolean isInstalled(String pkName) {
        return sDelegate.a(pkName);
    }

    public static void startWebView(String url) {
        sDelegate.d(url);
    }

    public static String getStringValue(int func_tion, String section, String key, String defValue) {
        return sDelegate.c(func_tion, section, key, defValue);
    }

    public static void energyShare(int shareType) {
        sDelegate.a(shareType);
    }

    public static void sendEmailCallbackOnGLThread(int type) {
        sDelegate.d(type);
    }

    public static int getMessageCountWithRedDot() {
        return sDelegate.al();
    }

    public static void toastTip(String content) {
        sDelegate.h(content);
    }

    public static void toastTipAtCenter(String content, boolean isLong) {
        sDelegate.a(content, isLong);
    }

    public static void onCLanguage() {
        sDelegate.U();
    }

    public static String getMcc() {
        return sDelegate.b();
    }

    public static int getTadId() {
        return sDelegate.aF();
    }

    public static String getPhoneCfg() {
        return sDelegate.ab();
    }

    public static void loginIn(int platformType) {
        sDelegate.h(platformType);
    }

    public static String getChannel() {
        return sDelegate.v();
    }

    public static boolean isBaidu() {
        return sDelegate.bx();
    }

    public static boolean isXiaoMi() {
        return sDelegate.by();
    }

    public static void exitBaidu() {
        sDelegate.bz();
    }

    public static boolean isFacebookInstalled() {
        return sDelegate.I();
    }

    public static void sendNotifyUpdate() {
        sDelegate.aI();
    }

    public static void setNotifyUpdateFlag() {
        sDelegate.aJ();
    }

    public static int getPurchaseChannelType() {
        return sDelegate.aN();
    }

    public static String getID() {
        return sDelegate.m();
    }

    public static long getLongValue(int func_tion, String section, String key, long defValue) {
        return sDelegate.a(func_tion, section, key, defValue);
    }

    public static boolean isNotVerifyStateInPurchasing() {
        return sDelegate.as();
    }

    public static String getFilesDir() {
        return sDelegate.R();
    }

    public static void reqMeInfo(int platformType) {
        sDelegate.l(platformType);
    }

    public static String getVersionCode() {
        return sDelegate.r();
    }

    public static void onSendOrderInfo(String token, String json) {
        sDelegate.b(token, json);
    }

    public static void onSendSubscribeState(int subscribedState, String json) {
        sDelegate.c(subscribedState, json);
    }

    public static void onGetSubscribeInfoCallback(String json) {
        sDelegate.j(json);
    }

    public static void onSubscribePayCallback(String signature, String json, String gpids) {
        sDelegate.b(signature, json, gpids);
    }

    public static void setExitGameShow(boolean showed) {
        sDelegate.c(showed);
    }

    public static String getYYBInfo() {
        return sDelegate.aL();
    }

    public static String getData(int func_tion, String section) {
        return sDelegate.k(func_tion, section);
    }

    public static String getCountryCode() {
        return sDelegate.e();
    }

    public static String getOSVersion() {
        return sDelegate.t();
    }

    public static void onDebugInfoUploadRes(int nRes) {
        sDelegate.x(nRes);
    }

    public static void socialShare(String score, String songName, String imgPath, int shareType) {
        sDelegate.a(score, songName, imgPath, shareType);
    }

    public static void preSalesShare() {
        sDelegate.F();
    }

    public static long getActiveResumeEndTime() {
        return sDelegate.ax();
    }

    public static void showAd(int ads_type, int reportFrom, int askWin) {
        sDelegate.a(ads_type, reportFrom, askWin);
    }

    public static String getBoard() {
        return sDelegate.n();
    }

    public static void wechatPublicRewardCallback() {
        sDelegate.aB();
    }

    public static boolean startGooglePlay(String pkgName) {
        return sDelegate.c(pkgName);
    }

    public static String getCDbgPath() {
        return sDelegate.C();
    }

    public static String getDisplay() {
        return sDelegate.i();
    }

    public static String getNetWork() {
        return sDelegate.x();
    }

    public static String getWIFILocalIpAdress() {
        return sDelegate.bd();
    }

    public static void notifyPurchaseVerifyResult(int resultCode) {
        sDelegate.A(resultCode);
    }

    public static String getOrderId() {
        return sDelegate.aM();
    }

    public static void showFeedback(boolean positive) {
        sDelegate.a(positive);
    }

    public static void notifyWiredHeadStateToNative(boolean on) {
        sDelegate.b(on);
    }

    public static String getCurrentMessageIcon() {
        return sDelegate.an();
    }

    public static void notifyTokenChangedOnGLThread(int platform, String accessToken) {
        sDelegate.a(platform, accessToken);
    }

    public static boolean hasUpgradeInfo() {
        return sDelegate.aH();
    }

    public static void onGameExit() {
        sDelegate.ap();
    }

    public static void openMainPage(String url) {
        sDelegate.f(url);
    }

    public static void openBrowser(String url) {
        sDelegate.g(url);
    }

    public static void launchShareActivity(int type) {
        sDelegate.e(type);
    }

    public static void launchLoveShareActivity(int type) {
        sDelegate.I(type);
    }

    public static void launchChristmasShareActivity() {
        sDelegate.aZ();
    }

    public static void launchSongMixShareActivity(String shareTitle, String shareDescription) {
        sDelegate.d(shareTitle, shareDescription);
    }

    public static void showFeedbackH5() {
        sDelegate.ay();
    }

    public static void shareCallbackOnGLThread(int type, int result) {
        sDelegate.b(type, result);
    }

    public static String getVersionName() {
        return sDelegate.s();
    }

    public static int getLoginPlatform() {
        return sDelegate.aO();
    }

    public static void gameRequestCallbackOnGLThread(int type, int result) {
        sDelegate.c(type, result);
    }

    public static void scanPlayerPhoneInfo() {
        sDelegate.au();
    }

    public static String getGoogleIds() {
        return sDelegate.T();
    }

    public static void sendCheckUpdate(boolean isInitiative) {
        sDelegate.e(isInitiative);
    }

    public static String doAction(int type, String id) {
        return sDelegate.b(type, id);
    }

    public static String doAction(int type, String arg, String arg2, String arg3) {
        return sDelegate.b(type, arg, arg2, arg3);
    }

    public static void uploadDebugInfo(String debugType, String userid, String socalid) {
        sDelegate.c(debugType, userid, socalid);
    }

    public static boolean isFBUserHaveFriendsPermission() {
        return sDelegate.ae();
    }

    public static boolean isPayOpen() {
        return sDelegate.aK();
    }

    public static void savePlayerPhoneInfo(String filePath) {
        sDelegate.o(filePath);
    }

    public static void reqInviteAbleFriends(int platformType) {
        sDelegate.n(platformType);
    }

    public static void reqPlayGamesUserInfo() {
        sDelegate.ad();
    }

    public static void reqPlayGamesUserInfoCallBackOnGLThread(String json) {
        sDelegate.m(json);
    }

    public static long getAppInitEndTime() {
        return sDelegate.aw();
    }

    public static String getChildChannel() {
        return sDelegate.w();
    }

    public static String getUserPictureById(String facebookId) {
        return sDelegate.n(facebookId);
    }

    public static String[] test() {
        return new String[]{"111", "222"};
    }

    public static void reqMeInfoCallbackOnGLThread(int platformType, String json, boolean isLoginH5) {
        sDelegate.a(platformType, json, isLoginH5);
    }

    public static void sendFBGameRequest(int sceneType, String idsToInvite) {
        sDelegate.i(sceneType, idsToInvite);
    }

    public static String getCodeName() {
        return sDelegate.k();
    }

    public static void costDiamond(int count) {
        sDelegate.u(count);
    }

    public static void collectionWallClickShareBtn(int songId, String songName, String bannerDesc, String h5Desc) {
        sDelegate.a(songId, songName, bannerDesc, h5Desc);
    }

    public static void collectionWallShare() {
        sDelegate.D();
    }

    public static void resultPageClickShare(int scene, int shareContentType) {
        sDelegate.a(scene, shareContentType);
    }

    public static String getLanguageCode() {
        return sDelegate.d();
    }

    public static String getMnc() {
        return sDelegate.c();
    }

    public static String getManufacturer() {
        return sDelegate.o();
    }

    public static void setCardClick(String cardData) {
        sDelegate.r(cardData);
    }

    public static void notifyUIChange(int id) {
        sDelegate.v(id);
    }

    public static void selectImage() {
        sDelegate.B();
    }

    public static void gotoGooglePlay(String url) {
        sDelegate.b(url);
    }

    public static int getPositionY() {
        return sDelegate.A();
    }

    public static String getCloudPhoneConfigVersion() {
        return sDelegate.ag();
    }

    public static void setMessAndRecommend() {
        sDelegate.az();
    }

    public static void reqMeFriendsCallbackOnGLThread(int platformType, String json) {
        sDelegate.d(platformType, json);
    }

    public static void restartApp() {
        sDelegate.ac();
    }

    public static void setCardShow(int cardId) {
        sDelegate.z(cardId);
    }

    public static void resultPageClickShare() {
        sDelegate.E();
    }

    public static void onSendConsumeInfo(String token, String json) {
        sDelegate.a(token, json);
    }

    public static void rankingShare(int sceneType, String imgPath) {
        sDelegate.g(sceneType, imgPath);
    }

    public static void subscriptionClickShare(int vipId) {
        sDelegate.o(vipId);
    }

    public static void subscriptionShare(int sceneType, String imgPath) {
        sDelegate.h(sceneType, imgPath);
    }

    public static void clickHalloweenShare(int status, int halloweenLevel) {
        sDelegate.d(status, halloweenLevel);
    }

    public static void halloweenShare(int sceneType, String imgPath, String msg) {
        sDelegate.a(sceneType, imgPath, msg);
    }

    public static void pictureShare(int sceneType, String imgPath, String msg) {
        sDelegate.b(sceneType, imgPath, msg);
    }

    public static void reportVipUserState(int vipUserState) {
        sDelegate.p(vipUserState);
    }

    public static void reportLevelChange(int level) {
        sDelegate.q(level);
    }

    public static boolean isLeaveH5() {
        return sDelegate.at();
    }

    public static void showAttentionWeChatPublicDialog() {
        sDelegate.aA();
    }

    public static int setDecodeSimpleTime(int time) {
        return sDelegate.s(time);
    }

    public static String getModel() {
        return sDelegate.g();
    }

    public static void inviteFriends(int sceneType) {
        sDelegate.b(sceneType);
    }

    public static void inviteTencentFriends(int sceneType) {
        sDelegate.c(sceneType);
    }

    public static void onAddOfferWallReward(int num) {
        sDelegate.g(num);
    }

    public static String getAndroidId() {
        return sDelegate.p();
    }

    public static double getDoubleValue(int func_tion, String section, String key, double defValue) {
        return sDelegate.a(func_tion, section, key, defValue);
    }

    public static int setUserEnableMix(int mix) {
        return sDelegate.r(mix);
    }

    public static void checkUpdate(boolean isInitiative) {
        sDelegate.d(isInitiative);
    }

    public static void postFeedbackInfo(String info) {
        sDelegate.q(info);
    }

    public static boolean isNetworkAvailable() {
        return sDelegate.y();
    }

    public static void receiveFriendInviteUserIdOnGLThread(String friendUserId) {
        sDelegate.s(friendUserId);
    }

    public static void loginOut(int platformType) {
        sDelegate.i(platformType);
    }

    public static boolean isWeChatInstalled() {
        return sDelegate.L();
    }

    public static boolean isMessengerInstalled() {
        return sDelegate.J();
    }

    public static String UrlDecode(String str) {
        return sDelegate.u(str);
    }

    public static String getBrand() {
        return sDelegate.f();
    }

    public static void sendEmail(String address, String subject, String content) {
        sDelegate.a(address, subject, content);
    }

    public static String UrlEncode(String str) {
        return sDelegate.t(str);
    }

    public static int getShareABTestType() {
        return sDelegate.V();
    }

    public static boolean canAdShow(int adType, int reportFrom, int askWin, boolean isClicked) {
        return sDelegate.a(adType, reportFrom, askWin, isClicked);
    }

    public static void openApp(String pkName) {
        sDelegate.e(pkName);
    }

    public static boolean isLogin(int platformType) {
        return sDelegate.j(platformType);
    }

    public static long getAppStartTime() {
        return sDelegate.av();
    }

    public static boolean isMessageSDKEnable() {
        return sDelegate.am();
    }

    public static void loginCallbackOnGLThread(int platformType, int result, String errorInfo) {
        sDelegate.a(platformType, result, errorInfo);
    }

    public static String getCardShowData(int sceneType) {
        return sDelegate.y(sceneType);
    }

    public static int getAndroidIdLast() {
        return sDelegate.aj();
    }

    public static boolean getBooleanValue(int func_tion, String section, String key, boolean defValue) {
        return sDelegate.a(func_tion, section, key, defValue);
    }

    public static String getToken(int platformType) {
        return sDelegate.k(platformType);
    }

    public static void notifyAttentionWechatPulicOnGLThread() {
        sDelegate.aC();
    }

    public static void showRecommendSuccessToast() {
        sDelegate.P();
    }

    public static int getPhoneCfgVer(String strCfg) {
        return sDelegate.l(strCfg);
    }

    public static String getAppId() {
        return sDelegate.Y();
    }

    public static int getIntValue(int func_tion, String section, String key, int defValue) {
        return sDelegate.a(func_tion, section, key, defValue);
    }

    public static int getPositionX() {
        return sDelegate.z();
    }

    public static void reqMeFriends(int platformType) {
        sDelegate.m(platformType);
    }

    public static boolean isHaveVirtualButton() {
        return sDelegate.W();
    }

    public static void onClickUpdate() {
        sDelegate.aG();
    }

    public static boolean isSupportWexinShare() {
        return sDelegate.N();
    }

    public static boolean isSupportQQ() {
        return sDelegate.O();
    }

    public static boolean getTencentSlientTokenVaild(int platform) {
        return sDelegate.B(platform);
    }

    public static boolean getTencentNotSlientTokenVaild(int platform) {
        return sDelegate.C(platform);
    }

    public static void refreshTencentSlientToken(int platform) {
        sDelegate.D(platform);
    }

    public static void refreshTencentNotSlientToken(int platform) {
        sDelegate.E(platform);
    }

    public static void showFirstLoginRewardTips(int num) {
        sDelegate.F(num);
    }

    public static AssetManager getAssetManager() {
        return sDelegate.aP();
    }

    public static boolean hadGetWechatPublicReward() {
        return sDelegate.aQ();
    }

    public static boolean getLoginSelectAccount() {
        return sDelegate.aR();
    }

    public static void setLoginSelectAccount(boolean res) {
        sDelegate.f(res);
    }

    public static boolean switchUser(boolean arg) {
        return sDelegate.g(arg);
    }

    public static void launchSpringShareActivity(int from) {
        sDelegate.H(from);
    }

    public static String getPhoneModel() {
        return sDelegate.aU();
    }

    public static String getCpuName() {
        return sDelegate.aV();
    }

    public static boolean getIsQuickLoad() {
        return sDelegate.aW();
    }

    public static void initAdsAndSoOn() {
        sDelegate.aX();
    }

    public static void notifyUnLockSuccess(String songName) {
        sDelegate.v(songName);
    }

    public static void stGotoBattleNotifyMsg(int mid, int result) {
        sDelegate.e(mid, result);
    }

    public static void sendUnLockSuccess(int mid, int result) {
        sDelegate.f(mid, result);
    }

    public static void startUnLockSongs(String datas) {
        sDelegate.w(datas);
    }

    public static void startGetUnLockState(String ids) {
        sDelegate.x(ids);
    }

    public static void recordInterstitialAd(int status, int count) {
        sDelegate.g(status, count);
    }

    public static boolean isReportService() {
        return sDelegate.aY();
    }

    public static File getLogcat(Context ctx) {
        return sDelegate.a(ctx);
    }

    public static String getOpenFileList() {
        return sDelegate.be();
    }

    public static void startWebView(String url, int type) {
        sDelegate.a(url, type);
    }

    public static boolean isGPAvailable() {
        return sDelegate.G();
    }

    public static String[] getDatas(int func_tion, String section) {
        return sDelegate.j(func_tion, section);
    }

    public static int getSelectTencentAccountPlatform() {
        return sDelegate.aS();
    }

    public static void loadCloudData() {
        sDelegate.ba();
    }

    public static void startLevel() {
        sDelegate.bb();
    }

    public static void endLevel() {
        sDelegate.bc();
    }

    public static void throwDebugException(String reason) {
        sDelegate.y(reason);
    }

    public static int getSoundOutputSampleReate() {
        return sDelegate.bf();
    }

    public static void showEnergyNotify(String msg) {
        sDelegate.z(msg);
    }

    public static boolean isHasGooglePlayServices() {
        return sDelegate.H();
    }

    public static int getABTestType() {
        return sDelegate.bg();
    }

    public static int getScreenWidth() {
        return sDelegate.bh();
    }

    public static int getScreenHeight() {
        return sDelegate.bi();
    }

    public static void onWeekRaceStart(String weekRaceId, long notifyInterval) {
        sDelegate.a(weekRaceId, notifyInterval);
    }

    public static void onWeekRaceEnd(String weekRaceId) {
        sDelegate.A(weekRaceId);
    }

    public static void onGetWeekRaceDiamond(String weekRaceId) {
        sDelegate.B(weekRaceId);
    }

    public static void setSharedPreferenceBoolean(String key, boolean value) {
        sDelegate.b(key, value);
    }

    public static void setSharedPreferenceInt(String key, int value) {
        sDelegate.b(key, value);
    }

    public static void setSharedPreferenceLong(String key, long value) {
        sDelegate.b(key, value);
    }

    public static void scheduleNotification(int notificationId, String title, String content, String extraData, String date, int interval) {
        sDelegate.a(notificationId, title, content, extraData, date, interval);
    }

    public static void showNotification(int notificationId, String title, String content, String extraData) {
        sDelegate.d(notificationId, title, content, extraData);
    }

    public static void scheduleClearNotification(int notificationId, String date) {
        sDelegate.l(notificationId, date);
    }

    public static void clearNotification(int notificationId) {
        sDelegate.J(notificationId);
    }

    public static void cancelNotificationSchedule(int notificationId) {
        sDelegate.K(notificationId);
    }

    public static String getStringByTid(String tid) {
        return sDelegate.C(tid);
    }

    public static boolean hasAccelerometerSensor() {
        return sDelegate.bj();
    }

    public static void gotoSpotify(String songUri) {
        sDelegate.D(songUri);
    }

    public static boolean isSongUnlocked(int mid) {
        return sDelegate.M(mid);
    }

    public static int getSongUnlockFlag(int mid) {
        return sDelegate.N(mid);
    }

    public static int getTotalPssUsed() {
        return sDelegate.bF();
    }

    public static void downloadAPP(String datajson) {
        sDelegate.E(datajson);
    }

    public static void CMBillingGameExit() {
        sDelegate.bm();
    }

    public static boolean isCMBilling() {
        return sDelegate.bk();
    }

    public static boolean isCMBillingActivity() {
        return sDelegate.bl();
    }

    public static void showMobileLoginDialog() {
        sDelegate.bn();
    }

    public static void mobileLoginCallback(int resCode) {
        sDelegate.L(resCode);
    }

    public static void mobileLoginExit() {
        sDelegate.bp();
    }

    public static int getABCTestCode() {
        return sDelegate.bo();
    }

    public static int getTencentUrlLoginPlatform() {
        return sDelegate.aT();
    }

    public static void setTencentUrlLoginPlaform(int platform) {
        sDelegate.G(platform);
    }

    public static void onActiveDataReported(boolean isNewUser) {
        sDelegate.h(isNewUser);
    }

    public static void showWeekActivityGuide() {
        sDelegate.bq();
    }

    public static boolean showCountdownWidget() {
        return sDelegate.br();
    }

    public static boolean isMobileChannel() {
        return sDelegate.bs();
    }

    public static boolean isHasSimCard() {
        return sDelegate.bt();
    }

    public static boolean isSupportMobilePay() {
        return sDelegate.bu();
    }

    public static boolean isSupportThirdPartyPay() {
        return sDelegate.bv();
    }

    public static boolean isAliBabaChannel() {
        return sDelegate.bw();
    }

    public static boolean isSupportShare() {
        return sDelegate.bA();
    }

    public static void setShareAddDiamond(boolean isAddDiamond) {
        sDelegate.i(isAddDiamond);
    }

    public static boolean isSupportWechatPay() {
        return sDelegate.bC();
    }

    public static void openXiaoMiActivity() {
        sDelegate.bD();
    }

    public static boolean isXiaomiActAvailable() {
        return sDelegate.bE();
    }

    public static boolean isSupportScreenShotShare() {
        return sDelegate.bB();
    }

    public static void notifyLevelingDataChanged() {
        sDelegate.bG();
    }

    public static boolean canShowOpenScreen(boolean isNewUrser, int scence) {
        return sDelegate.b(isNewUrser, scence);
    }

    public static void showOpenScreen() {
        sDelegate.bH();
    }

    public static void closeOpenScreen() {
        sDelegate.bI();
    }

    public static boolean canShowInsertScreen() {
        return sDelegate.bJ();
    }

    public static void showInsertScreen() {
        sDelegate.bK();
    }

    public static boolean canShowResultCard() {
        return sDelegate.bL();
    }

    public static String getResultCardData() {
        return sDelegate.bM();
    }

    public static void clickResultCard(String jsonData) {
        sDelegate.F(jsonData);
    }

    public static boolean canShowSettingCardRedDot() {
        return sDelegate.bN();
    }

    public static boolean canShowSettingCard() {
        return sDelegate.bO();
    }

    public static String getSettingCardData() {
        return sDelegate.bP();
    }

    public static void clickSettingCard(String jsonData) {
        sDelegate.G(jsonData);
    }

    public static boolean canShowFamilyGamesRedDot() {
        return sDelegate.bQ();
    }

    public static boolean canShowFamilyGamesCard() {
        return sDelegate.bR();
    }

    public static String getFamilyGamesData() {
        return sDelegate.bS();
    }

    public static void clickFamilyGameCard(String jsonData) {
        sDelegate.H(jsonData);
    }

    public static boolean isInnerPushAppInstalled(String jsonDataForShow) {
        return sDelegate.I(jsonDataForShow);
    }

    public static boolean isUIProcess() {
        return sDelegate.bT();
    }

    public static boolean isServiceProcess() {
        return sDelegate.bU();
    }

    public static void notifyCdFragmentDataChanged() {
        sDelegate.bV();
    }

    public static void appsflyerReportCustomerEvent(String eventName, String jsonValue) {
        sDelegate.e(eventName, jsonValue);
    }

    public String getCloudConfigVersion() {
        return sDelegate.bW();
    }

    public static void redpacketShare(String url, String title, String description, String imageUrl, int sceneType, int shareType) {
        sDelegate.a(url, title, description, imageUrl, sceneType, shareType);
    }

    public static void notifyPublicDataChange() {
        sDelegate.bX();
    }

    public static void notifyCloudDataChanged() {
        sDelegate.bY();
    }

    public static void showEditTextDialog(int inputType, String titleText) {
        sDelegate.m(inputType, titleText);
    }

    public static void enterLuckyWheel(String peerId) {
        sDelegate.J(peerId);
    }
}
