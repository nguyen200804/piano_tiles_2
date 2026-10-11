.class public Lcom/cmplay/util/NativeUtil;
.super Ljava/lang/Object;
.source "NativeUtil.java"


# static fields
.field private static final ACTION_CONSUME_ORDER:I = 0x4

.field private static final ACTION_GET_PRICE:I = 0x0

.field private static final ACTION_INIT_PAYMENT:I = 0x1

.field private static final ACTION_PURCHASE:I = 0x3

.field private static final ACTION_QUERY_ORDERS:I = 0x2

.field public static final ADDGOLD_SOURCE_CARD_INSTALL:Ljava/lang/String; = "gold_source_card_install"

.field public static final ADDGOLD_SOURCE_GIFT_CONVERT:Ljava/lang/String; = "gold_source_gift_convert"

.field public static final ADDGOLD_SOURCE_MSGBOX_REMIND_GIFT:Ljava/lang/String; = "gold_source_msgbox_add_remind_gift"

.field public static final ADDGOLG_SOURCE_H5:Ljava/lang/String; = "gold_source_h5"

.field public static final AD_CANCEL:I = 0x3

.field public static final AD_CANNOT_SHOW:I = 0x5

.field public static final AD_CLOSE:I = 0x4

.field public static final AD_COMPLETED:I = 0x2

.field public static final AD_SHOW:I = 0x1

.field private static final KEY_DECODE_SIMPLE_TIME:Ljava/lang/String; = "decode_simple_time"

.field private static final KEY_USER_ENABLE_MIX:Ljava/lang/String; = "user_enable_mix"

.field private static final MAIN_SHOW:I = 0x3e9

.field private static final NOTIFY_ACTION:I = 0x3eb

.field private static final NOTIFY_STATE:I = 0x3ea

.field private static final PHONE_CFG_ASSET_PATH:Ljava/lang/String; = "res/phonecfg.json"

.field private static final PHONE_CFG_FILE_PATH:Ljava/lang/String; = "phonecfg.json"

.field private static final SOUND_MIXSHARE_PREF_NAME:Ljava/lang/String; = "com.cmplay.tiles4.soundmix"

.field private static final UI_GAMEING:I = 0x4

.field private static final UI_HALL:I = 0x2

.field private static final UI_HOME:I = 0x0

.field private static final UI_MUSIC:I = 0x1

.field private static final UI_RESULT:I = 0x5

.field private static final UI_SETTING:I = 0x3

.field private static final WAVEMIX_TAG:Ljava/lang/String; = "wavemix-info"

.field private static sDelegate:Lcom/cmplay/util/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 609
    new-instance v0, Lcom/cmplay/util/s;

    invoke-direct {v0}, Lcom/cmplay/util/s;-><init>()V

    sput-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static CMBillingGameExit()V
    .locals 1

    .prologue
    .line 1775
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bm()V

    .line 1776
    return-void
.end method

.method public static native DiamondToLogFile(Ljava/lang/String;)V
.end method

.method public static native H5Login()V
.end method

.method public static ShareMusicTrack(Ljava/lang/String;II)Z
    .locals 1
    .param p0, "track"    # Ljava/lang/String;
    .param p1, "mid"    # I
    .param p2, "scene"    # I

    .prologue
    .line 658
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static native ShareSuccessAddDiamondByChallengeMusic()V
.end method

.method public static UrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1406
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static UrlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1421
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static adPrepare(I)V
    .locals 1
    .param p0, "adType"    # I

    .prologue
    .line 773
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->t(I)V

    .line 774
    return-void
.end method

.method public static native adStatusCallback(I)V
.end method

.method public static native adStatusCallback(III)V
.end method

.method public static native addDiamonds(II)V
.end method

.method public static native addOfferWallReward(I)V
.end method

.method public static native androidLoadedEnd()V
.end method

.method public static native appInstallNotify(Ljava/lang/String;)V
.end method

.method public static appsflyerReportCustomerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 2033
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    return-void
.end method

.method public static native backKeyClicked()V
.end method

.method public static canAdShow(IIIZ)Z
    .locals 1
    .param p0, "adType"    # I
    .param p1, "reportFrom"    # I
    .param p2, "askWin"    # I
    .param p3, "isClicked"    # Z

    .prologue
    .line 1431
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->a(IIIZ)Z

    move-result v0

    return v0
.end method

.method public static native canMusicUnlockedInMessegeBox(II)Z
.end method

.method public static canShowFamilyGamesCard()Z
    .locals 1

    .prologue
    .line 1992
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bR()Z

    move-result v0

    return v0
.end method

.method public static canShowFamilyGamesRedDot()Z
    .locals 1

    .prologue
    .line 1984
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bQ()Z

    move-result v0

    return v0
.end method

.method public static canShowInsertScreen()Z
    .locals 1

    .prologue
    .line 1913
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bJ()Z

    move-result v0

    return v0
.end method

.method public static native canShowMsgById(Ljava/lang/String;)Z
.end method

.method public static canShowOpenScreen(ZI)Z
    .locals 1
    .param p0, "isNewUrser"    # Z
    .param p1, "scence"    # I

    .prologue
    .line 1897
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->b(ZI)Z

    move-result v0

    return v0
.end method

.method public static canShowResultCard()Z
    .locals 1

    .prologue
    .line 1928
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bL()Z

    move-result v0

    return v0
.end method

.method public static canShowSettingCard()Z
    .locals 1

    .prologue
    .line 1960
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bO()Z

    move-result v0

    return v0
.end method

.method public static canShowSettingCardRedDot()Z
    .locals 1

    .prologue
    .line 1952
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bN()Z

    move-result v0

    return v0
.end method

.method public static cancelNotificationSchedule(I)V
    .locals 1
    .param p0, "notificationId"    # I

    .prologue
    .line 1743
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->K(I)V

    .line 1744
    return-void
.end method

.method public static native checkDiffAccount()V
.end method

.method public static native checkTencentUrlLogin()V
.end method

.method public static checkUpdate(Z)V
    .locals 1
    .param p0, "isInitiative"    # Z

    .prologue
    .line 1371
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->d(Z)V

    .line 1372
    return-void
.end method

.method public static clearNotification(I)V
    .locals 1
    .param p0, "notificationId"    # I

    .prologue
    .line 1739
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->J(I)V

    .line 1740
    return-void
.end method

.method public static clickFamilyGameCard(Ljava/lang/String;)V
    .locals 1
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 2008
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->H(Ljava/lang/String;)V

    .line 2009
    return-void
.end method

.method public static clickHalloweenShare(II)V
    .locals 1
    .param p0, "status"    # I
    .param p1, "halloweenLevel"    # I

    .prologue
    .line 1303
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->d(II)V

    .line 1304
    return-void
.end method

.method public static clickResultCard(Ljava/lang/String;)V
    .locals 1
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 1944
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->F(Ljava/lang/String;)V

    .line 1945
    return-void
.end method

.method public static clickSettingCard(Ljava/lang/String;)V
    .locals 1
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 1976
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->G(Ljava/lang/String;)V

    .line 1977
    return-void
.end method

.method public static closeOpenScreen()V
    .locals 1

    .prologue
    .line 1905
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bI()V

    .line 1906
    return-void
.end method

.method public static native cloudUpdateNotify()V
.end method

.method public static collectionWallClickShareBtn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "songId"    # I
    .param p1, "songName"    # Ljava/lang/String;
    .param p2, "bannerDesc"    # Ljava/lang/String;
    .param p3, "h5Desc"    # Ljava/lang/String;

    .prologue
    .line 1202
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method public static collectionWallShare()V
    .locals 1

    .prologue
    .line 1206
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->D()V

    .line 1207
    return-void
.end method

.method public static native costCurCoin(I)V
.end method

.method public static native costCurHP(I)V
.end method

.method public static costDiamond(I)V
    .locals 1
    .param p0, "count"    # I

    .prologue
    .line 1198
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->u(I)V

    .line 1199
    return-void
.end method

.method public static doAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1122
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doAction(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Ljava/lang/String;

    .prologue
    .line 1127
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native doNotificationAction(ILjava/lang/String;)V
.end method

.method public static native doPostFeedbackInfo(Ljava/lang/String;)V
.end method

.method public static doRateUs()V
    .locals 1

    .prologue
    .line 768
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->Q()V

    .line 769
    return-void
.end method

.method public static downloadAPP(Ljava/lang/String;)V
    .locals 1
    .param p0, "datajson"    # Ljava/lang/String;

    .prologue
    .line 1771
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->E(Ljava/lang/String;)V

    .line 1772
    return-void
.end method

.method public static endLevel()V
    .locals 1

    .prologue
    .line 1661
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bc()V

    .line 1662
    return-void
.end method

.method public static energyShare(I)V
    .locals 1
    .param p0, "shareType"    # I

    .prologue
    .line 798
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->a(I)V

    .line 799
    return-void
.end method

.method public static enterLuckyWheel(Ljava/lang/String;)V
    .locals 1
    .param p0, "peerId"    # Ljava/lang/String;

    .prologue
    .line 2058
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->J(Ljava/lang/String;)V

    .line 2059
    return-void
.end method

.method public static exitBaidu()V
    .locals 1

    .prologue
    .line 856
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bz()V

    .line 857
    return-void
.end method

.method public static native gameInit()Z
.end method

.method public static native gameRequestCallback(II)V
.end method

.method public static gameRequestCallbackOnGLThread(II)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "result"    # I

    .prologue
    .line 1104
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->c(II)V

    .line 1105
    return-void
.end method

.method public static getABCTestCode()I
    .locals 1

    .prologue
    .line 1801
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bo()I

    move-result v0

    return v0
.end method

.method public static getABTestType()I
    .locals 1

    .prologue
    .line 1683
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bg()I

    move-result v0

    return v0
.end method

.method public static getActiveResumeEndTime()J
    .locals 2

    .prologue
    .line 965
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ax()J

    move-result-wide v0

    return-wide v0
.end method

.method public static native getAlbumPersonalText()Ljava/lang/String;
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidIdLast()I
    .locals 1

    .prologue
    .line 1466
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aj()I

    move-result v0

    return v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1496
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInitEndTime()J
    .locals 2

    .prologue
    .line 1164
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppStartTime()J
    .locals 2

    .prologue
    .line 1446
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->av()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 1553
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aP()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanValue(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .prologue
    .line 1471
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1411
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCDbgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCardShowData(I)Ljava/lang/String;
    .locals 1
    .param p0, "sceneType"    # I

    .prologue
    .line 1461
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getChallengeCopyAllFinishStatus()Z
.end method

.method public static native getChallengeCurrentScore()I
.end method

.method public static native getChallengeLevel()I
.end method

.method public static native getChallengePassScore()I
.end method

.method public static native getChallengeStatus()I
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChildChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCloudPhoneConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1193
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getCostPay(I)I
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getCurCoin(Z)I
.end method

.method public static native getCurHP(Z)I
.end method

.method public static getCurrentMessageIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->an()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getData(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 937
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDatas(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 1646
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->j(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDecodeSimpleTime()I
    .locals 1

    .prologue
    .line 738
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ai()I

    move-result v0

    return v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getDiamond(Z)I
.end method

.method public static getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 995
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDoubleValue(ILjava/lang/String;Ljava/lang/String;D)D
    .locals 7
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # D

    .prologue
    .line 1361
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static native getFaceBookId()Ljava/lang/String;
.end method

.method public static getFamilyGamesData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2000
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getGameStartTimes()I
.end method

.method public static getGoogleIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getHallLevel()Ljava/lang/String;
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getHighestAchievement()F
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getInnerUUID()Ljava/lang/String;
.end method

.method public static native getInstallTime()I
.end method

.method public static getIntValue(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 1501
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getIsQuickLoad()Z
    .locals 1

    .prologue
    .line 1594
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aW()Z

    move-result v0

    return v0
.end method

.method public static getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1215
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getLogcat(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1630
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginPlatform()I
    .locals 1

    .prologue
    .line 1099
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aO()I

    move-result v0

    return v0
.end method

.method public static getLoginSelectAccount()Z
    .locals 1

    .prologue
    .line 1561
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aR()Z

    move-result v0

    return v0
.end method

.method public static getLongValue(ILjava/lang/String;Ljava/lang/String;J)J
    .locals 7
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .prologue
    .line 883
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 826
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageCountWithRedDot()I
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->al()I

    move-result v0

    return v0
.end method

.method public static getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getMsgPicNameByUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getNetUUid()Ljava/lang/String;
.end method

.method public static getNetWork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenFileList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1634
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->be()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneCfg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneCfgVer(Ljava/lang/String;)I
    .locals 1
    .param p0, "strCfg"    # Ljava/lang/String;

    .prologue
    .line 1491
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->l(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native getPhoneCode(Ljava/lang/String;)V
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1586
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatformType()I
    .locals 1

    .prologue
    .line 683
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aE()I

    move-result v0

    return v0
.end method

.method public static native getPlayerInfo()Ljava/lang/String;
.end method

.method public static getPositionX()I
    .locals 1

    .prologue
    .line 1506
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->z()I

    move-result v0

    return v0
.end method

.method public static getPositionY()I
    .locals 1

    .prologue
    .line 1250
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->A()I

    move-result v0

    return v0
.end method

.method public static native getPriceCallback(Ljava/lang/String;)V
.end method

.method public static getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchaseChannelType()I
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aN()I

    move-result v0

    return v0
.end method

.method public static native getRankPercent()F
.end method

.method public static native getRanking()I
.end method

.method public static native getRecommendSongMid()I
.end method

.method public static getResultCardData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1936
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getScore()Ljava/lang/String;
.end method

.method public static native getScoreLevel()I
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 1687
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bi()I

    move-result v0

    return v0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 1686
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bh()I

    move-result v0

    return v0
.end method

.method public static getSdkVer()I
    .locals 1

    .prologue
    .line 688
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->q()I

    move-result v0

    return v0
.end method

.method public static getSelectTencentAccountPlatform()I
    .locals 1

    .prologue
    .line 1650
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aS()I

    move-result v0

    return v0
.end method

.method public static getSettingCardData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1968
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShareABTestType()I
    .locals 1

    .prologue
    .line 1426
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->V()I

    move-result v0

    return v0
.end method

.method public static native getShareDescription()Ljava/lang/String;
.end method

.method public static native getShareUIBgImageInfo()Ljava/lang/String;
.end method

.method public static native getSinglesRankingJson()Ljava/lang/String;
.end method

.method public static native getSongName()Ljava/lang/String;
.end method

.method public static native getSongOrder()I
.end method

.method public static getSongUnlockFlag(I)I
    .locals 1
    .param p0, "mid"    # I

    .prologue
    .line 1763
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->N(I)I

    move-result v0

    return v0
.end method

.method public static getSoundOutputSampleReate()I
    .locals 1

    .prologue
    .line 1668
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bf()I

    move-result v0

    return v0
.end method

.method public static getStringByTid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tid"    # Ljava/lang/String;

    .prologue
    .line 1747
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "func_tion"    # I
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 793
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getSubscribeInfoCallback(Ljava/lang/String;)V
.end method

.method public static getTadId()I
    .locals 1

    .prologue
    .line 831
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aF()I

    move-result v0

    return v0
.end method

.method public static getTencentNotSlientTokenVaild(I)Z
    .locals 1
    .param p0, "platform"    # I

    .prologue
    .line 1537
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->C(I)Z

    move-result v0

    return v0
.end method

.method public static getTencentSlientTokenVaild(I)Z
    .locals 1
    .param p0, "platform"    # I

    .prologue
    .line 1533
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->B(I)Z

    move-result v0

    return v0
.end method

.method public static getTencentUrlLoginPlatform()I
    .locals 1

    .prologue
    .line 1804
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aT()I

    move-result v0

    return v0
.end method

.method public static native getTodayPlayTimes(I)I
.end method

.method public static native getTodaySpecialSongMid()I
.end method

.method public static getToken(I)Ljava/lang/String;
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 1476
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->k(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getTopChartsJson()Ljava/lang/String;
.end method

.method public static getTotalPssUsed()I
    .locals 1

    .prologue
    .line 1767
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bF()I

    move-result v0

    return v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserEnableMix()I
    .locals 1

    .prologue
    .line 653
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ah()I

    move-result v0

    return v0
.end method

.method public static getUserPictureById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "facebookId"    # Ljava/lang/String;

    .prologue
    .line 1174
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualButton()I
    .locals 1

    .prologue
    .line 638
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->X()I

    move-result v0

    return v0
.end method

.method public static getWIFILocalIpAdress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYYBInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getpkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gotoGooglePlay(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1245
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->b(Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method public static gotoSpotify(Ljava/lang/String;)V
    .locals 1
    .param p0, "songUri"    # Ljava/lang/String;

    .prologue
    .line 1755
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->D(Ljava/lang/String;)V

    .line 1756
    return-void
.end method

.method public static hadGetWechatPublicReward()Z
    .locals 1

    .prologue
    .line 1557
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aQ()Z

    move-result v0

    return v0
.end method

.method public static native halloweenCallback(II)V
.end method

.method public static halloweenShare(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sceneType"    # I
    .param p1, "imgPath"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1307
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method public static hasAccelerometerSensor()Z
    .locals 1

    .prologue
    .line 1751
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bj()Z

    move-result v0

    return v0
.end method

.method public static native hasSongBeenPlayed(I)Z
.end method

.method public static hasUpgradeInfo()Z
    .locals 1

    .prologue
    .line 1038
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aH()Z

    move-result v0

    return v0
.end method

.method public static initAdsAndSoOn()V
    .locals 1

    .prologue
    .line 1598
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aX()V

    .line 1599
    return-void
.end method

.method public static inviteFriends(I)V
    .locals 1
    .param p0, "sceneType"    # I

    .prologue
    .line 1343
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->b(I)V

    .line 1344
    return-void
.end method

.method public static inviteTencentFriends(I)V
    .locals 1
    .param p0, "sceneType"    # I

    .prologue
    .line 1347
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->c(I)V

    .line 1348
    return-void
.end method

.method public static isAliBabaChannel()Z
    .locals 1

    .prologue
    .line 1856
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bw()Z

    move-result v0

    return v0
.end method

.method public static isBaidu()Z
    .locals 1

    .prologue
    .line 850
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bx()Z

    move-result v0

    return v0
.end method

.method public static isCMBilling()Z
    .locals 1

    .prologue
    .line 1778
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bk()Z

    move-result v0

    return v0
.end method

.method public static isCMBillingActivity()Z
    .locals 1

    .prologue
    .line 1782
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bl()Z

    move-result v0

    return v0
.end method

.method public static native isFBEverLoginBefore()Z
.end method

.method public static isFBUserHaveFriendsPermission()Z
    .locals 1

    .prologue
    .line 1137
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ae()Z

    move-result v0

    return v0
.end method

.method public static isFacebookInstalled()Z
    .locals 1

    .prologue
    .line 860
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->I()Z

    move-result v0

    return v0
.end method

.method public static native isFirstPurchase()Z
.end method

.method public static isGPAvailable()Z
    .locals 1

    .prologue
    .line 1642
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->G()Z

    move-result v0

    return v0
.end method

.method public static isHasGooglePlayServices()Z
    .locals 1

    .prologue
    .line 1679
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->H()Z

    move-result v0

    return v0
.end method

.method public static isHasSimCard()Z
    .locals 1

    .prologue
    .line 1836
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bt()Z

    move-result v0

    return v0
.end method

.method public static isHaveVirtualButton()Z
    .locals 1

    .prologue
    .line 1516
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->W()Z

    move-result v0

    return v0
.end method

.method public static native isHolidayEnable()Z
.end method

.method public static native isHolidayEntryShow()Z
.end method

.method public static isInnerPushAppInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "jsonDataForShow"    # Ljava/lang/String;

    .prologue
    .line 2017
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->I(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkName"    # Ljava/lang/String;

    .prologue
    .line 783
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLeaveH5()Z
    .locals 1

    .prologue
    .line 1323
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->at()Z

    move-result v0

    return v0
.end method

.method public static isLogin(I)Z
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 1441
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->j(I)Z

    move-result v0

    return v0
.end method

.method public static native isLoginGameCenter()Z
.end method

.method public static isMessageSDKEnable()Z
    .locals 1

    .prologue
    .line 1451
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->am()Z

    move-result v0

    return v0
.end method

.method public static isMessengerInstalled()Z
    .locals 1

    .prologue
    .line 1401
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->J()Z

    move-result v0

    return v0
.end method

.method public static isMobileChannel()Z
    .locals 1

    .prologue
    .line 1828
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bs()Z

    move-result v0

    return v0
.end method

.method public static isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 1381
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->y()Z

    move-result v0

    return v0
.end method

.method public static isNotShowLoadingInPurchasing()Z
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ar()Z

    move-result v0

    return v0
.end method

.method public static isNotVerifyStateInPurchasing()Z
    .locals 1

    .prologue
    .line 888
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->as()Z

    move-result v0

    return v0
.end method

.method public static isPayOpen()Z
    .locals 1

    .prologue
    .line 1142
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aK()Z

    move-result v0

    return v0
.end method

.method public static isReportService()Z
    .locals 1

    .prologue
    .line 1626
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aY()Z

    move-result v0

    return v0
.end method

.method public static isServiceProcess()Z
    .locals 1

    .prologue
    .line 2025
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bU()Z

    move-result v0

    return v0
.end method

.method public static isSongUnlocked(I)Z
    .locals 1
    .param p0, "mid"    # I

    .prologue
    .line 1759
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->M(I)Z

    move-result v0

    return v0
.end method

.method public static isSupportMobilePay()Z
    .locals 1

    .prologue
    .line 1844
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bu()Z

    move-result v0

    return v0
.end method

.method public static isSupportQQ()Z
    .locals 1

    .prologue
    .line 1529
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->O()Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenShotShare()Z
    .locals 1

    .prologue
    .line 1889
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bB()Z

    move-result v0

    return v0
.end method

.method public static isSupportShare()Z
    .locals 1

    .prologue
    .line 1866
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bA()Z

    move-result v0

    return v0
.end method

.method public static isSupportThirdPartyPay()Z
    .locals 1

    .prologue
    .line 1852
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bv()Z

    move-result v0

    return v0
.end method

.method public static isSupportWechatPay()Z
    .locals 1

    .prologue
    .line 1877
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bC()Z

    move-result v0

    return v0
.end method

.method public static isSupportWexinShare()Z
    .locals 1

    .prologue
    .line 1525
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->N()Z

    move-result v0

    return v0
.end method

.method public static isTwitterInstalled()Z
    .locals 1

    .prologue
    .line 748
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->K()Z

    move-result v0

    return v0
.end method

.method public static isUIProcess()Z
    .locals 1

    .prologue
    .line 2021
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bT()Z

    move-result v0

    return v0
.end method

.method public static native isUnlockMusicByMid(I)Z
.end method

.method public static isWeChatInstalled()Z
    .locals 1

    .prologue
    .line 1396
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->L()Z

    move-result v0

    return v0
.end method

.method public static isWeiboInstalled()Z
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->M()Z

    move-result v0

    return v0
.end method

.method public static isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 733
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aa()Z

    move-result v0

    return v0
.end method

.method public static isXiaoMi()Z
    .locals 1

    .prologue
    .line 853
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->by()Z

    move-result v0

    return v0
.end method

.method public static isXiaomiActAvailable()Z
    .locals 1

    .prologue
    .line 1885
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bE()Z

    move-result v0

    return v0
.end method

.method public static launchChristmasShareActivity()V
    .locals 1

    .prologue
    .line 1076
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aZ()V

    .line 1077
    return-void
.end method

.method public static launchLoveShareActivity(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1072
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->I(I)V

    .line 1073
    return-void
.end method

.method public static launchShareActivity(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1064
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->e(I)V

    .line 1065
    return-void
.end method

.method public static launchSongMixShareActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "shareTitle"    # Ljava/lang/String;
    .param p1, "shareDescription"    # Ljava/lang/String;

    .prologue
    .line 1080
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    return-void
.end method

.method public static launchSpringShareActivity(I)V
    .locals 1
    .param p0, "from"    # I

    .prologue
    .line 1582
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->H(I)V

    .line 1583
    return-void
.end method

.method public static loadCloudData()V
    .locals 1

    .prologue
    .line 1654
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ba()V

    .line 1655
    return-void
.end method

.method public static native loginCallback(IILjava/lang/String;)V
.end method

.method public static loginCallbackOnGLThread(IILjava/lang/String;)V
    .locals 1
    .param p0, "platformType"    # I
    .param p1, "result"    # I
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 1456
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(IILjava/lang/String;)V

    .line 1457
    return-void
.end method

.method public static loginGameCenterSuccess(IZ)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "isSuccess"    # Z

    .prologue
    .line 713
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(IZ)V

    .line 714
    return-void
.end method

.method public static loginIn(I)V
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 841
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->h(I)V

    .line 842
    return-void
.end method

.method public static loginInReqFriendPermission()V
    .locals 1

    .prologue
    .line 673
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->af()V

    .line 674
    return-void
.end method

.method public static loginOut(I)V
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 1391
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->i(I)V

    .line 1392
    return-void
.end method

.method public static native mobileLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static mobileLoginCallback(I)V
    .locals 1
    .param p0, "resCode"    # I

    .prologue
    .line 1790
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->L(I)V

    .line 1791
    return-void
.end method

.method public static native mobileLoginDialogClose()V
.end method

.method public static mobileLoginExit()V
    .locals 1

    .prologue
    .line 1797
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bp()V

    .line 1798
    return-void
.end method

.method public static native modifyDiamond(ZILjava/lang/String;I)V
.end method

.method public static native modifyEnergy(ZI)V
.end method

.method public static native modifyGold(ZILjava/lang/String;)V
.end method

.method public static native notifyAttentionWechatPublicSuccess()V
.end method

.method public static notifyAttentionWechatPulicOnGLThread()V
    .locals 1

    .prologue
    .line 1481
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aC()V

    .line 1482
    return-void
.end method

.method public static notifyCdFragmentDataChanged()V
    .locals 1

    .prologue
    .line 2029
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bV()V

    .line 2030
    return-void
.end method

.method public static native notifyCheckRecommendInstalled()V
.end method

.method public static notifyCloudDataChanged()V
    .locals 1

    .prologue
    .line 2050
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bY()V

    .line 2051
    return-void
.end method

.method public static notifyCurrentMsgIconInvalid()V
    .locals 1

    .prologue
    .line 728
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ao()V

    .line 729
    return-void
.end method

.method public static notifyLevelingDataChanged()V
    .locals 1

    .prologue
    .line 1893
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bG()V

    .line 1894
    return-void
.end method

.method public static native notifyNetWorkChange(I)V
.end method

.method public static notifyPublicDataChange()V
    .locals 1

    .prologue
    .line 2044
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bX()V

    .line 2045
    return-void
.end method

.method public static notifyPurchaseVerifyResult(I)V
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    .line 1008
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->A(I)V

    .line 1009
    return-void
.end method

.method public static native notifySelectImageResult(ZLjava/lang/String;)V
.end method

.method public static native notifySendRedPacketSuccess(Z)V
.end method

.method public static native notifyStatusChanged()V
.end method

.method public static native notifyTokenChanged(ILjava/lang/String;)V
.end method

.method public static notifyTokenChangedOnGLThread(ILjava/lang/String;)V
    .locals 1
    .param p0, "platform"    # I
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 1033
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(ILjava/lang/String;)V

    .line 1034
    return-void
.end method

.method public static notifyUIChange(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 1235
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->v(I)V

    .line 1236
    return-void
.end method

.method public static notifyUnLockSuccess(Ljava/lang/String;)V
    .locals 1
    .param p0, "songName"    # Ljava/lang/String;

    .prologue
    .line 1602
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->v(Ljava/lang/String;)V

    .line 1603
    return-void
.end method

.method public static native notifyWiredHeadState(Z)V
.end method

.method public static notifyWiredHeadStateToNative(Z)V
    .locals 1
    .param p0, "on"    # Z

    .prologue
    .line 1023
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->b(Z)V

    .line 1024
    return-void
.end method

.method public static onActiveDataReported(Z)V
    .locals 1
    .param p0, "isNewUser"    # Z

    .prologue
    .line 1812
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->h(Z)V

    .line 1813
    return-void
.end method

.method public static onAddOfferWallReward(I)V
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 1351
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->g(I)V

    .line 1352
    return-void
.end method

.method public static onBackKeyClicked()V
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->S()V

    .line 664
    return-void
.end method

.method public static onCLanguage()V
    .locals 1

    .prologue
    .line 821
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->U()V

    .line 822
    return-void
.end method

.method public static native onCdFragmentDataChanged()V
.end method

.method public static onClickUpdate()V
    .locals 1

    .prologue
    .line 1521
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aG()V

    .line 1522
    return-void
.end method

.method public static native onCloudDataChanged()V
.end method

.method public static onDebugInfoUploadRes(I)V
    .locals 1
    .param p0, "nRes"    # I

    .prologue
    .line 952
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->x(I)V

    .line 953
    return-void
.end method

.method public static onDiamondModify(ZI)V
    .locals 1
    .param p0, "isSuccess"    # Z
    .param p1, "from"    # I

    .prologue
    .line 778
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(ZI)V

    .line 779
    return-void
.end method

.method public static native onEditTextDone(Ljava/lang/String;)V
.end method

.method public static native onExchangeFinish()V
.end method

.method public static native onFamilyGamesPushUpdate()V
.end method

.method public static onGameExit()V
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ap()V

    .line 1044
    return-void
.end method

.method public static onGetPriceCallback(Ljava/lang/String;)V
    .locals 1
    .param p0, "res"    # Ljava/lang/String;

    .prologue
    .line 693
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->i(Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public static onGetSubscribeInfoCallback(Ljava/lang/String;)V
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 920
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->j(Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public static onGetWeekRaceDiamond(Ljava/lang/String;)V
    .locals 1
    .param p0, "weekRaceId"    # Ljava/lang/String;

    .prologue
    .line 1711
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->B(Ljava/lang/String;)V

    .line 1712
    return-void
.end method

.method public static native onLevelingDataChanged()V
.end method

.method public static native onNotificationRemoved(IJLjava/lang/String;)V
.end method

.method public static native onNotificationShow(ILjava/lang/String;)V
.end method

.method public static native onOpenScreenClose()V
.end method

.method public static onPayCallback(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 718
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->f(I)V

    .line 719
    return-void
.end method

.method public static onSendConsumeInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1286
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method public static onSendOrderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 908
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public static onSendSubscribeState(ILjava/lang/String;)V
    .locals 1
    .param p0, "subscribedState"    # I
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 916
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->c(ILjava/lang/String;)V

    .line 917
    return-void
.end method

.method public static native onSettingsPushUpdate()V
.end method

.method public static native onShareH5ViewClosed()V
.end method

.method public static onSubscribePayCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "gpids"    # Ljava/lang/String;

    .prologue
    .line 923
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public static native onUploadDebugInfoRes(I)V
.end method

.method public static onWeekRaceEnd(Ljava/lang/String;)V
    .locals 1
    .param p0, "weekRaceId"    # Ljava/lang/String;

    .prologue
    .line 1703
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->A(Ljava/lang/String;)V

    .line 1704
    return-void
.end method

.method public static onWeekRaceStart(Ljava/lang/String;J)V
    .locals 1
    .param p0, "weekRaceId"    # Ljava/lang/String;
    .param p1, "notifyInterval"    # J

    .prologue
    .line 1695
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(Ljava/lang/String;J)V

    .line 1696
    return-void
.end method

.method public static openApp(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkName"    # Ljava/lang/String;

    .prologue
    .line 1436
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->e(Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method public static openBrowser(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1056
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->g(Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method public static native openGetWeekRaceDiamondPage(Ljava/lang/String;)V
.end method

.method public static openMainPage(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1048
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->f(Ljava/lang/String;)V

    .line 1049
    return-void
.end method

.method public static openRanking(ILjava/lang/String;)V
    .locals 1
    .param p0, "sceneType"    # I
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 758
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->f(ILjava/lang/String;)V

    .line 759
    return-void
.end method

.method public static openXiaoMiActivity()V
    .locals 1

    .prologue
    .line 1881
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bD()V

    .line 1882
    return-void
.end method

.method public static native payCallback(I)V
.end method

.method public static native payCallback(II)V
.end method

.method public static pictureShare(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sceneType"    # I
    .param p1, "imgPath"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1311
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method public static playGamesOver()V
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ak()V

    .line 764
    return-void
.end method

.method public static native playSoundEffect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static postFeedbackInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 1376
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->q(Ljava/lang/String;)V

    .line 1377
    return-void
.end method

.method public static preSalesShare()V
    .locals 1

    .prologue
    .line 961
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->F()V

    .line 962
    return-void
.end method

.method public static native pushDialogNotify(I)V
.end method

.method public static native pushGotoBattleNotify(I)Z
.end method

.method public static native pushRankNotify(I)V
.end method

.method public static native pushTabNotify(I)V
.end method

.method public static native pushUnlockMusicNotify(III)V
.end method

.method public static native pushUnlockMusicNotify(IIIZ)V
.end method

.method public static native pushVipStoreNotify()V
.end method

.method public static rankingShare(ILjava/lang/String;)V
    .locals 1
    .param p0, "sceneType"    # I
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 1291
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->g(ILjava/lang/String;)V

    .line 1292
    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 618
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readPhoneCfgFromAsset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native receiveFriendInviteUserId(Ljava/lang/String;)V
.end method

.method public static receiveFriendInviteUserIdOnGLThread(Ljava/lang/String;)V
    .locals 1
    .param p0, "friendUserId"    # Ljava/lang/String;

    .prologue
    .line 1386
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->s(Ljava/lang/String;)V

    .line 1387
    return-void
.end method

.method public static recordInterstitialAd(II)V
    .locals 1
    .param p0, "status"    # I
    .param p1, "count"    # I

    .prologue
    .line 1621
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->g(II)V

    .line 1622
    return-void
.end method

.method public static redpacketShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "imageUrl"    # Ljava/lang/String;
    .param p4, "sceneType"    # I
    .param p5, "shareType"    # I

    .prologue
    .line 2040
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/cmplay/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2041
    return-void
.end method

.method public static native refreshSDKMessage()V
.end method

.method public static refreshTencentNotSlientToken(I)V
    .locals 1
    .param p0, "platform"    # I

    .prologue
    .line 1545
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->E(I)V

    .line 1546
    return-void
.end method

.method public static refreshTencentSlientToken(I)V
    .locals 1
    .param p0, "platform"    # I

    .prologue
    .line 1541
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->D(I)V

    .line 1542
    return-void
.end method

.method public static native refreshTencentTokenCallback(ZI)V
.end method

.method public static reportData(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "tableContent"    # Ljava/lang/String;
    .param p2, "isForce"    # Z

    .prologue
    .line 33
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited_service:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0, p1, p2}, Lcom/cmplay/util/NativeUtil;->reportData1(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    :cond_1
    return v0

    .line 33
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native reportData1(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static native reportHttpException(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public static reportLevelChange(I)V
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 1319
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->q(I)V

    .line 1320
    return-void
.end method

.method public static native reportLoginBtnPV()V
.end method

.method public static native reportMessagePush(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native reportShareData(IIIII)V
.end method

.method public static native reportTabshowForSorry(II)V
.end method

.method public static native reportTabshowOfShare(III)V
.end method

.method public static native reportTask()V
.end method

.method public static reportVipUserState(I)V
    .locals 1
    .param p0, "vipUserState"    # I

    .prologue
    .line 1315
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->p(I)V

    .line 1316
    return-void
.end method

.method public static native reportWhitetile2Class(IIII)V
.end method

.method public static native reqInvitableFriendsCallback(ILjava/lang/String;)V
.end method

.method public static reqInvitableFriendsCallbackOnGLThread(ILjava/lang/String;)V
    .locals 1
    .param p0, "platformType"    # I
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 753
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->e(ILjava/lang/String;)V

    .line 754
    return-void
.end method

.method public static reqInviteAbleFriends(I)V
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 1152
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->n(I)V

    .line 1153
    return-void
.end method

.method public static reqMeFriends(I)V
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 1511
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->m(I)V

    .line 1512
    return-void
.end method

.method public static native reqMeFriendsCallback(ILjava/lang/String;)V
.end method

.method public static reqMeFriendsCallbackOnGLThread(ILjava/lang/String;)V
    .locals 1
    .param p0, "platformType"    # I
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 1265
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->d(ILjava/lang/String;)V

    .line 1266
    return-void
.end method

.method public static reqMeInfo(I)V
    .locals 1
    .param p0, "platformType"    # I

    .prologue
    .line 898
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->l(I)V

    .line 899
    return-void
.end method

.method public static native reqMeInfoCallback(ILjava/lang/String;Z)V
.end method

.method public static reqMeInfoCallbackOnGLThread(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "platformType"    # I
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "isLoginH5"    # Z

    .prologue
    .line 1183
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Z)V

    .line 1184
    return-void
.end method

.method public static reqPlayGamesUserInfo()V
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ad()V

    .line 1157
    return-void
.end method

.method public static native reqPlayGamesUserInfoCallBack(Ljava/lang/String;)V
.end method

.method public static reqPlayGamesUserInfoCallBackOnGLThread(Ljava/lang/String;)V
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 1160
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->m(Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method public static native resetPublicData()V
.end method

.method public static restartApp()V
    .locals 1

    .prologue
    .line 1271
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ac()V

    .line 1272
    return-void
.end method

.method public static resultPageClickShare()V
    .locals 1

    .prologue
    .line 1281
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->E()V

    .line 1282
    return-void
.end method

.method public static resultPageClickShare(II)V
    .locals 1
    .param p0, "scene"    # I
    .param p1, "shareContentType"    # I

    .prologue
    .line 1210
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(II)V

    .line 1211
    return-void
.end method

.method public static savePlayerPhoneInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1147
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->o(Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method public static scanPlayerPhoneInfo()V
    .locals 1

    .prologue
    .line 1109
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->au()V

    .line 1110
    return-void
.end method

.method public static scheduleClearNotification(ILjava/lang/String;)V
    .locals 1
    .param p0, "notificationId"    # I
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 1735
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->l(ILjava/lang/String;)V

    .line 1736
    return-void
.end method

.method public static native scheduleNotification(I)V
.end method

.method public static scheduleNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "notificationId"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "interval"    # I

    .prologue
    .line 1727
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/cmplay/util/r;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1728
    return-void
.end method

.method public static native scheduleNotifications()V
.end method

.method public static selectImage()V
    .locals 1

    .prologue
    .line 1240
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->B()V

    .line 1241
    return-void
.end method

.method public static sendCheckUpdate(Z)V
    .locals 1
    .param p0, "isInitiative"    # Z

    .prologue
    .line 1118
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->e(Z)V

    .line 1119
    return-void
.end method

.method public static native sendConsumeInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1416
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method public static native sendEmailCallback(I)V
.end method

.method public static sendEmailCallbackOnGLThread(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 803
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->d(I)V

    .line 804
    return-void
.end method

.method public static sendFBGameRequest(ILjava/lang/String;)V
    .locals 1
    .param p0, "sceneType"    # I
    .param p1, "idsToInvite"    # Ljava/lang/String;

    .prologue
    .line 1188
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->i(ILjava/lang/String;)V

    .line 1189
    return-void
.end method

.method public static sendNotifyUpdate()V
    .locals 1

    .prologue
    .line 865
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aI()V

    .line 866
    return-void
.end method

.method public static native sendOrderInfo(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native sendShowExpireDialog()V
.end method

.method public static native sendSubscribeState(ILjava/lang/String;)V
.end method

.method public static sendUnLockSuccess(II)V
    .locals 1
    .param p0, "mid"    # I
    .param p1, "result"    # I

    .prologue
    .line 1610
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->f(II)V

    .line 1611
    return-void
.end method

.method public static sendWebLoginstatus(Ljava/lang/String;)V
    .locals 1
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 643
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->p(Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public static native setBaiduThirdPay(Z)V
.end method

.method public static setCardClick(Ljava/lang/String;)V
    .locals 1
    .param p0, "cardData"    # Ljava/lang/String;

    .prologue
    .line 1230
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->r(Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method public static setCardShow(I)V
    .locals 1
    .param p0, "cardId"    # I

    .prologue
    .line 1276
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->z(I)V

    .line 1277
    return-void
.end method

.method public static setDecodeSimpleTime(I)I
    .locals 1
    .param p0, "time"    # I

    .prologue
    .line 1333
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->s(I)I

    move-result v0

    return v0
.end method

.method public static setExitGameShow(Z)V
    .locals 1
    .param p0, "showed"    # Z

    .prologue
    .line 927
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->c(Z)V

    .line 928
    return-void
.end method

.method public static native setIsInGame(Z)V
.end method

.method public static setLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 678
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public static setLoginSelectAccount(Z)V
    .locals 1
    .param p0, "res"    # Z

    .prologue
    .line 1565
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->f(Z)V

    .line 1566
    return-void
.end method

.method public static setMessAndRecommend()V
    .locals 1

    .prologue
    .line 1260
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->az()V

    .line 1261
    return-void
.end method

.method public static setNotifyUpdateFlag()V
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aJ()V

    .line 870
    return-void
.end method

.method public static setShareAddDiamond(Z)V
    .locals 1
    .param p0, "isAddDiamond"    # Z

    .prologue
    .line 1869
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->i(Z)V

    .line 1870
    return-void
.end method

.method public static setSharedPreferenceBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 1715
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->b(Ljava/lang/String;Z)V

    .line 1716
    return-void
.end method

.method public static setSharedPreferenceInt(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 1719
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->b(Ljava/lang/String;I)V

    .line 1720
    return-void
.end method

.method public static setSharedPreferenceLong(Ljava/lang/String;J)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 1723
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->b(Ljava/lang/String;J)V

    .line 1724
    return-void
.end method

.method public static setTencentUrlLoginPlaform(I)V
    .locals 1
    .param p0, "platform"    # I

    .prologue
    .line 1808
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->G(I)V

    .line 1809
    return-void
.end method

.method public static setUserEnableMix(I)I
    .locals 1
    .param p0, "mix"    # I

    .prologue
    .line 1366
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->r(I)I

    move-result v0

    return v0
.end method

.method public static native shareCallback(II)V
.end method

.method public static shareCallbackOnGLThread(II)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "result"    # I

    .prologue
    .line 1089
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->b(II)V

    .line 1090
    return-void
.end method

.method public static showAd(III)V
    .locals 1
    .param p0, "ads_type"    # I
    .param p1, "reportFrom"    # I
    .param p2, "askWin"    # I

    .prologue
    .line 970
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->a(III)V

    .line 971
    return-void
.end method

.method public static showAttentionWeChatPublicDialog()V
    .locals 1

    .prologue
    .line 1328
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aA()V

    .line 1329
    return-void
.end method

.method public static showCountdownWidget()Z
    .locals 1

    .prologue
    .line 1820
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->br()Z

    move-result v0

    return v0
.end method

.method public static showEditTextDialog(ILjava/lang/String;)V
    .locals 1
    .param p0, "inputType"    # I
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 2054
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->m(ILjava/lang/String;)V

    .line 2055
    return-void
.end method

.method public static showEnergyNotify(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1671
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->z(Ljava/lang/String;)V

    .line 1672
    return-void
.end method

.method public static showFeedback(Z)V
    .locals 1
    .param p0, "positive"    # Z

    .prologue
    .line 1018
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->a(Z)V

    .line 1019
    return-void
.end method

.method public static showFeedbackH5()V
    .locals 1

    .prologue
    .line 1084
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->ay()V

    .line 1085
    return-void
.end method

.method public static showFirstLoginRewardTips(I)V
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 1549
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->F(I)V

    .line 1550
    return-void
.end method

.method public static showGiftConvertDialog()V
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aD()V

    .line 709
    return-void
.end method

.method public static showInsertScreen()V
    .locals 1

    .prologue
    .line 1920
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bK()V

    .line 1921
    return-void
.end method

.method public static showMobileLoginDialog()V
    .locals 1

    .prologue
    .line 1786
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bn()V

    .line 1787
    return-void
.end method

.method public static showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "notificationId"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 1731
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    return-void
.end method

.method public static native showNotificationNative(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static showOpenScreen()V
    .locals 1

    .prologue
    .line 1901
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bH()V

    .line 1902
    return-void
.end method

.method public static showRecommendSuccessToast()V
    .locals 1

    .prologue
    .line 1486
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->P()V

    .line 1487
    return-void
.end method

.method public static native showTencentLoginNoticeDialog(I)V
.end method

.method public static showWeekActivityGuide()V
    .locals 1

    .prologue
    .line 1816
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bq()V

    .line 1817
    return-void
.end method

.method public static socialShare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "score"    # Ljava/lang/String;
    .param p1, "songName"    # Ljava/lang/String;
    .param p2, "imgPath"    # Ljava/lang/String;
    .param p3, "shareType"    # I

    .prologue
    .line 957
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/cmplay/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 958
    return-void
.end method

.method public static stGotoBattleNotifyMsg(II)V
    .locals 1
    .param p0, "mid"    # I
    .param p1, "result"    # I

    .prologue
    .line 1606
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->e(II)V

    .line 1607
    return-void
.end method

.method public static startGetUnLockState(Ljava/lang/String;)V
    .locals 1
    .param p0, "ids"    # Ljava/lang/String;

    .prologue
    .line 1617
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->x(Ljava/lang/String;)V

    .line 1618
    return-void
.end method

.method public static startGooglePlay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 985
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static startLevel()V
    .locals 1

    .prologue
    .line 1657
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bb()V

    .line 1658
    return-void
.end method

.method public static startMessageBox(I)V
    .locals 1
    .param p0, "from"    # I

    .prologue
    .line 628
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->w(I)V

    .line 629
    return-void
.end method

.method public static startUnLockSongs(Ljava/lang/String;)V
    .locals 1
    .param p0, "datas"    # Ljava/lang/String;

    .prologue
    .line 1614
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->w(Ljava/lang/String;)V

    .line 1615
    return-void
.end method

.method public static native startVerificTransaction()V
.end method

.method public static startWebView()V
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aq()V

    .line 744
    return-void
.end method

.method public static startWebView(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 788
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->d(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public static startWebView(Ljava/lang/String;I)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 1638
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(Ljava/lang/String;I)V

    .line 1639
    return-void
.end method

.method public static native subscribePayCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static subscriptionClickShare(I)V
    .locals 1
    .param p0, "vipId"    # I

    .prologue
    .line 1295
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->o(I)V

    .line 1296
    return-void
.end method

.method public static subscriptionShare(ILjava/lang/String;)V
    .locals 1
    .param p0, "sceneType"    # I
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 1299
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->h(ILjava/lang/String;)V

    .line 1300
    return-void
.end method

.method public static switchUser(Z)Z
    .locals 1
    .param p0, "arg"    # Z

    .prologue
    .line 1569
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->g(Z)Z

    move-result v0

    return v0
.end method

.method public static test()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1178
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "111"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "222"

    aput-object v2, v0, v1

    .line 1179
    return-object v0
.end method

.method public static throwDebugException(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 1665
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->y(Ljava/lang/String;)V

    .line 1666
    return-void
.end method

.method public static toastTip(Ljava/lang/String;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 813
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0}, Lcom/cmplay/util/r;->h(Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public static toastTipAtCenter(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "isLong"    # Z

    .prologue
    .line 817
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/r;->a(Ljava/lang/String;Z)V

    .line 818
    return-void
.end method

.method public static native touchGhost()Z
.end method

.method public static uploadDebugInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "debugType"    # Ljava/lang/String;
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "socalid"    # Ljava/lang/String;

    .prologue
    .line 1132
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0, p0, p1, p2}, Lcom/cmplay/util/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    return-void
.end method

.method public static wechatPublicRewardCallback()V
    .locals 1

    .prologue
    .line 980
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->aB()V

    .line 981
    return-void
.end method


# virtual methods
.method public getCloudConfigVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2037
    sget-object v0, Lcom/cmplay/util/NativeUtil;->sDelegate:Lcom/cmplay/util/r;

    invoke-interface {v0}, Lcom/cmplay/util/r;->bW()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
