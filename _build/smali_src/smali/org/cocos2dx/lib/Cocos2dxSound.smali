.class public Lorg/cocos2dx/lib/Cocos2dxSound;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;,
        Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;,
        Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;
    }
.end annotation


# static fields
.field private static final INVALID_SOUND_ID:I = -0x1

.field private static final INVALID_STREAM_ID:I = -0x1

.field private static LOAD_TIME_OUT:I = 0x0

.field private static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x20

.field private static final MAX_SIMULTANEOUS_STREAMS_I9100:I = 0x3

.field private static final MAX_SIMULTANEOUS_STREAMS_NUM_SCALE:I = 0x5

.field private static final MUSIC_CFG_ASSET_PATH:Ljava/lang/String; = "res/musicsrc.json"

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "Cocos2dxSound"


# instance fields
.field private eraseSoundByTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLeftVolume:F

.field private mMusicDecodePath:Ljava/lang/String;

.field private final mPathSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPlayWhenLoadedEffects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;",
            ">;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSoundPool:Landroid/media/SoundPool;

.field private streamQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    const/16 v0, 0x1f4

    sput v0, Lorg/cocos2dx/lib/Cocos2dxSound;->LOAD_TIME_OUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPlayWhenLoadedEffects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mMusicDecodePath:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->streamQueue:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    .line 199
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->readMusicCfgFromAsset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getMusicVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/music/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mMusicDecodePath:Ljava/lang/String;

    .line 202
    const-string v0, "wavemix-info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound decode path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mMusicDecodePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData()V

    .line 207
    return-void

    .line 204
    :cond_0
    const-string v0, "wavemix-info"

    const-string v1, "sound decode path detect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPlayWhenLoadedEffects:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZFFF)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I

    move-result v0

    return v0
.end method

.method private clamp(FFF)F
    .locals 1
    .param p1, "value"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 520
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private doPlayEffect(Ljava/lang/String;IZFFF)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "soundId"    # I
    .param p3, "loop"    # Z
    .param p4, "pitch"    # F
    .param p5, "pan"    # F
    .param p6, "gain"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 524
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    mul-float/2addr v0, p6

    invoke-direct {p0, p5, v7, v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v1

    sub-float v1, v5, v1

    mul-float/2addr v1, v0

    .line 525
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    mul-float/2addr v0, p6

    neg-float v2, p5

    invoke-direct {p0, v2, v7, v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v2

    sub-float v2, v5, v2

    mul-float v3, v0, v2

    .line 526
    mul-float v0, v5, p4

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v2, v4}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v6

    .line 529
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-direct {p0, v1, v7, v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v2

    invoke-direct {p0, v3, v7, v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->clamp(FFF)F

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    const/4 v5, -0x1

    :goto_0
    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v1

    .line 530
    if-nez v1, :cond_0

    .line 531
    const-string v0, "wavemix-info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paly sound failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 536
    if-nez v0, :cond_1

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    return v1

    .line 529
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    .line 211
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getCloudConfigGetter()Lorg/cocos2dx/lib/ICloudConfigGetter;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "section_cocos2dx_sound_pool"

    const-string v4, "max_streams"

    const/16 v5, 0x20

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/cocos2dx/lib/ICloudConfigGetter;->getIntValue(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 215
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getCpuNum()I

    move-result v0

    .line 217
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GT-I9100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move v0, v1

    .line 223
    :goto_0
    if-le v0, v2, :cond_0

    .line 227
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/16 v2, 0x1f4

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    .line 229
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 231
    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 232
    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 233
    return-void

    .line 220
    :cond_1
    mul-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public checkBass()V
    .locals 4

    .prologue
    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;

    .line 109
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->checkErase()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 111
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->getStreamID()I

    move-result v0

    .line 112
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->streamQueue:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 113
    if-ltz v2, :cond_0

    .line 115
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->streamQueue:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 106
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method public createSoundIDFromAsset(Ljava/lang/String;)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 486
    .line 489
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 512
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    .line 516
    :cond_1
    return v0

    .line 494
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mMusicDecodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mMusicDecodePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 496
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 498
    const/4 v0, 0x1

    .line 499
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    move v8, v0

    move v0, v2

    move v2, v8

    .line 502
    :goto_1
    if-nez v2, :cond_0

    .line 503
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 508
    const-string v2, "Cocos2dxSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public end()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 423
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 424
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 425
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 426
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPlayWhenLoadedEffects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 428
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 429
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 431
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData()V

    .line 432
    return-void
.end method

.method public eraseBassByStreamID(I)V
    .locals 4
    .param p1, "streamID"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;

    .line 97
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->getStreamID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 99
    invoke-virtual {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->setIsItemUsed(Z)V

    .line 95
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getMusicVer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strCfg"    # Ljava/lang/String;

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 475
    if-eqz v1, :cond_0

    .line 476
    const-string v2, "src_vesion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    const-string v2, "src_vesion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    :cond_0
    :goto_0
    return-object v0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public insertItemToBassList(IF)V
    .locals 3
    .param p1, "nstreamid"    # I
    .param p2, "playtime"    # F

    .prologue
    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;

    .line 127
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->isItemUsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->setStopBassInfo(IF)V

    .line 136
    :goto_1
    return-void

    .line 124
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;-><init>()V

    .line 134
    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxSound$TimerForStop;->setStopBassInfo(IF)V

    .line 135
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->eraseSoundByTime:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onEnterBackground()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 547
    return-void
.end method

.method public onEnterForeground()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 551
    return-void
.end method

.method public pauseAllEffects()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 355
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 358
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_0

    .line 362
    :cond_1
    return-void
.end method

.method public pauseEffect(I)V
    .locals 1
    .param p1, "steamID"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 346
    return-void
.end method

.method public playEffect(Ljava/lang/String;ZFFFF)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "loop"    # Z
    .param p3, "pitch"    # F
    .param p4, "pan"    # F
    .param p5, "gain"    # F
    .param p6, "fPlayTime"    # F

    .prologue
    const/4 v1, -0x1

    .line 276
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 277
    const-string v2, "shengmingplayeffect"

    const-string v3, "shengmingplayeffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz v0, :cond_1

    .line 284
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->streamQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->streamQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 286
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZFFF)I

    move-result v0

    .line 291
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->streamQueue:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_0
    return v0

    .line 306
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 308
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 310
    goto :goto_0

    .line 313
    :cond_2
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;ZFFF)V

    .line 314
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPlayWhenLoadedEffects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    monitor-enter v0

    .line 318
    :try_start_0
    sget v1, Lorg/cocos2dx/lib/Cocos2dxSound;->LOAD_TIME_OUT:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    iget v0, v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->effectID:I

    .line 325
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPlayWhenLoadedEffects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->updateAssets(Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->notifyFileLoaded(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 242
    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundIDFromAsset(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 246
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 248
    :cond_2
    const-string v1, "wavemix-info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloading soud faild: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readMusicCfgFromAsset()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 436
    const-string v0, ""

    .line 437
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    .line 438
    const/4 v4, 0x0

    .line 441
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "res/musicsrc.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 443
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 444
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 446
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 447
    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 454
    if-eqz v2, :cond_0

    .line 456
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 461
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 463
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 468
    :cond_1
    :goto_3
    return-object v0

    .line 449
    :cond_2
    :try_start_5
    const-string v1, "UTF-8"

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 454
    if-eqz v2, :cond_3

    .line 456
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 461
    :cond_3
    :goto_4
    if-eqz v3, :cond_1

    .line 463
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 464
    :catch_1
    move-exception v1

    goto :goto_3

    .line 457
    :catch_2
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 457
    :catch_3
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 454
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_4

    .line 456
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 461
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 463
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 465
    :cond_5
    :goto_7
    throw v0

    .line 457
    :catch_4
    move-exception v1

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 464
    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_7

    .line 454
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 451
    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public resumeAllEffects()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 372
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 376
    :cond_1
    return-void
.end method

.method public resumeEffect(I)V
    .locals 1
    .param p1, "steamID"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 350
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 6
    .param p1, "volume"    # F

    .prologue
    .line 401
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 402
    const/4 p1, 0x0

    .line 404
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 405
    const/high16 p1, 0x3f800000    # 1.0f

    .line 408
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 411
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 416
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0

    .line 420
    :cond_3
    return-void
.end method

.method public stopAllEffects()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 386
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 393
    return-void
.end method

.method public stopEffect(I)V
    .locals 3
    .param p1, "steamID"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 335
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 337
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 342
    :cond_1
    return-void
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 260
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 267
    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 269
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    return-void
.end method
