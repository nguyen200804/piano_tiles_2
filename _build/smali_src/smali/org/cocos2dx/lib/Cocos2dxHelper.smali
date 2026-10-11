.class public Lorg/cocos2dx/lib/Cocos2dxHelper;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "Cocos2dxPrefsFile"

.field private static final RUNNABLES_PER_FRAME:I = 0x5

.field private static mCpuNum:I

.field private static onActivityResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sAccelerometerEnabled:Z

.field private static sActivity:Landroid/app/Activity;

.field private static sActivityVisible:Z

.field private static sAssetManager:Landroid/content/res/AssetManager;

.field private static sCloudCfgGetter:Lorg/cocos2dx/lib/ICloudConfigGetter;

.field private static sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

.field private static sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

.field private static sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field private static sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

.field private static sContext:Landroid/content/Context;

.field private static sFileDirectory:Ljava/lang/String;

.field public static sInited:Z

.field public static sInited_service:Z

.field private static sPackageName:Ljava/lang/String;

.field private static sSharedPreferenceImpl:Lcom/cmplay/util/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    .line 76
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->onActivityResultListeners:Ljava/util/Set;

    .line 77
    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCloudCfgGetter:Lorg/cocos2dx/lib/ICloudConfigGetter;

    .line 88
    sput-boolean v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    .line 90
    sput-boolean v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited_service:Z

    .line 92
    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    .line 525
    sput v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    return-void
.end method

.method static synthetic access$000([B)V
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 54
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V

    return-void
.end method

.method public static addOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 180
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->onActivityResultListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public static disableAccelerometer()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 241
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 242
    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 231
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 232
    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->end()V

    .line 343
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->end()V

    .line 344
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getBoolForKey(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 424
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCloudConfigGetter()Lorg/cocos2dx/lib/ICloudConfigGetter;
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCloudCfgGetter:Lorg/cocos2dx/lib/ICloudConfigGetter;

    return-object v0
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuNum()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 528
    sget v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    if-lez v0, :cond_0

    .line 529
    sget v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    .line 557
    :goto_0
    return v0

    .line 532
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 534
    :cond_1
    sput v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    .line 535
    sget v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    goto :goto_0

    .line 538
    :cond_2
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxHelper$2;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_4

    .line 552
    :cond_3
    sput v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    .line 553
    sget v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    goto :goto_0

    .line 556
    :cond_4
    array-length v0, v0

    sput v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    .line 557
    sget v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mCpuNum:I

    goto :goto_0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDPI()I
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 402
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_0

    .line 405
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 409
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleForKey(Ljava/lang/String;D)D
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 443
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    double-to-float v1, p1

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static getFloatForKey(Ljava/lang/String;F)F
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 436
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getIntegerForKey(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 430
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongForKey(Ljava/lang/String;J)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 495
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 500
    .restart local p1    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getOnActivityResultListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->onActivityResultListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getSharedPreferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "Cocos2dxPrefsFile"

    return-object v0
.end method

.method public static getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 449
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 95
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, p0

    .line 98
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    .line 100
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->getGameRoot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    .line 112
    :goto_0
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    .line 115
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    .line 116
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    .line 118
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V

    .line 120
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 121
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    .line 124
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    .line 127
    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, ""

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public static initByService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    sget-boolean v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited_service:Z

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 139
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->getGameRoot()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    .line 151
    :goto_0
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    .line 154
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    .line 155
    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    .line 157
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V

    .line 159
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 160
    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited_service:Z

    .line 165
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_2
    const-string v2, ""

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isActivityVisible()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivityVisible:Z

    return v0
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method public static native nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method public static onEnterBackground()V
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->onEnterBackground()V

    .line 362
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->onEnterBackground()V

    .line 363
    return-void
.end method

.method public static onEnterForeground()V
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->onEnterForeground()V

    .line 367
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->onEnterForeground()V

    .line 368
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivityVisible:Z

    .line 355
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 358
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivityVisible:Z

    .line 348
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 351
    :cond_0
    return-void
.end method

.method public static openURL(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static pauseAllEffects()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseAllEffects()V

    .line 331
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    .line 274
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 310
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseEffect(I)V

    .line 311
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pPath"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 265
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public static playEffect(Ljava/lang/String;ZFFFF)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z
    .param p2, "pitch"    # F
    .param p3, "pan"    # F
    .param p4, "gain"    # F
    .param p5, "fPlayTime"    # F

    .prologue
    .line 301
    const-string v0, "shengmingplayeffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shengmingplayeffect1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;ZFFFF)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p0, "pPath"    # Ljava/lang/String;

    .prologue
    .line 261
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public static native registerExceptionHandler()V
.end method

.method public static resumeAllEffects()V
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeAllEffects()V

    .line 335
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    .line 270
    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 306
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeEffect(I)V

    .line 307
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->rewindBackgroundMusic()V

    .line 282
    return-void
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .locals 1
    .param p0, "interval"    # F

    .prologue
    .line 236
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->setInterval(F)V

    .line 237
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 293
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->setBackgroundVolume(F)V

    .line 294
    return-void
.end method

.method public static setBoolForKey(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 457
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Z)V

    .line 458
    return-void
.end method

.method public static setCloudConfigGetter(Lorg/cocos2dx/lib/ICloudConfigGetter;)V
    .locals 0
    .param p0, "cloudConfigGetter"    # Lorg/cocos2dx/lib/ICloudConfigGetter;

    .prologue
    .line 561
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCloudCfgGetter:Lorg/cocos2dx/lib/ICloudConfigGetter;

    .line 562
    return-void
.end method

.method public static setDoubleForKey(Ljava/lang/String;D)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 482
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    double-to-float v1, p1

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;F)V

    .line 483
    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 3
    .param p0, "pResult"    # Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 386
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxHelper$1;

    invoke-direct {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$1;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 322
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->setEffectsVolume(F)V

    .line 323
    return-void
.end method

.method public static setFloatForKey(Ljava/lang/String;F)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 473
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;F)V

    .line 474
    return-void
.end method

.method public static setIntegerForKey(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 465
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;I)V

    .line 466
    return-void
.end method

.method public static setKeepScreenOn(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 245
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setKeepScreenOn(Z)V

    .line 246
    return-void
.end method

.method public static setLongForKey(Ljava/lang/String;J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 508
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public static setSharedPreferenceImpl(Lcom/cmplay/util/k;)V
    .locals 0
    .param p0, "impl"    # Lcom/cmplay/util/k;

    .prologue
    .line 168
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    .line 169
    return-void
.end method

.method public static setStringForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 490
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sSharedPreferenceImpl:Lcom/cmplay/util/k;

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 375
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-interface {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private static showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pInputMode"    # I
    .param p3, "pInputFlag"    # I
    .param p4, "pReturnType"    # I
    .param p5, "pMaxLength"    # I

    .prologue
    .line 379
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 380
    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopAllEffects()V

    .line 339
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    .line 278
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 314
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    .line 315
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 372
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 326
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    .line 327
    return-void
.end method
