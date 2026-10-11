.class public Lorg/cocos2dx/lib/Cocos2dxVideoView;
.super Landroid/view/SurfaceView;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    }
.end annotation


# static fields
.field private static final EVENT_COMPLETED:I = 0x3

.field private static final EVENT_PAUSED:I = 0x1

.field private static final EVENT_PLAYING:I = 0x0

.field private static final EVENT_STOPPED:I = 0x2

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private assetResourceRoot:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isAssetRouse:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mFullScreenEnabled:Z

.field protected mFullScreenHeight:I

.field protected mFullScreenWidth:I

.field private mKeepRatio:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNeedResume:Z

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field protected mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field protected mViewHeight:I

.field protected mViewLeft:I

.field private mViewTag:I

.field protected mViewTop:I

.field protected mViewWidth:I

.field protected mVisibleHeight:I

.field protected mVisibleLeft:I

.field protected mVisibleTop:I

.field protected mVisibleWidth:I


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;I)V
    .locals 3
    .param p1, "activity"    # Lorg/cocos2dx/lib/Cocos2dxActivity;
    .param p2, "tag"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "VideoView"

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    .line 64
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 65
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 68
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 69
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 70
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 71
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 81
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 83
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 84
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 85
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 86
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 88
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 89
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 90
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 91
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 93
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    .line 94
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenWidth:I

    .line 95
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenHeight:I

    .line 97
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 172
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    .line 213
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 214
    iput-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 215
    const-string v0, "assets/"

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->assetResourceRoot:Ljava/lang/String;

    .line 330
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 381
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 394
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 420
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 444
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 499
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 541
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 102
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    .line 103
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 104
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->initVideoView()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1302(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$202(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$602(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$700(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 42
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    return v0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 191
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 192
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 193
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusable(Z)V

    .line 194
    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setFocusableInTouchMode(Z)V

    .line 195
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 196
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 197
    return-void
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 264
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 278
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    invoke-direct {p0, v7}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    .line 288
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 289
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 290
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 291
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 292
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 293
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 295
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 296
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 297
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 300
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    .line 302
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 304
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 309
    :goto_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 318
    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 319
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 306
    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCocos2dxActivity:Lorg/cocos2dx/lib/Cocos2dxActivity;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 321
    :catch_1
    move-exception v0

    .line 322
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 324
    iput v6, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 325
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 577
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 579
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 580
    if-eqz p1, :cond_0

    .line 581
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 584
    :cond_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 244
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mUri:Landroid/net/Uri;

    .line 245
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 246
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    .line 247
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    .line 248
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->openVideo()V

    .line 249
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->requestLayout()V

    .line 250
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->invalidate()V

    .line 251
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x1

    return v0
.end method

.method public fixSize()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-eqz v0, :cond_0

    .line 339
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    goto :goto_0
.end method

.method public fixSize(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v3, -0x2

    .line 346
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 347
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    if-eqz v0, :cond_2

    .line 348
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v0, p4

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v1, p3

    if-le v0, v1, :cond_1

    .line 349
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 350
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v0, p3

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    .line 355
    :cond_0
    :goto_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 356
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 371
    :goto_1
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 373
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 375
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 376
    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 377
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 378
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    return-void

    .line 351
    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v0, p4

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    mul-int/2addr v1, p3

    if-ge v0, v1, :cond_0

    .line 352
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    mul-int/2addr v0, p4

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 353
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_0

    .line 358
    :cond_2
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 359
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 360
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 361
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_1

    .line 365
    :cond_3
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleLeft:I

    .line 366
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleTop:I

    .line 367
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    .line 368
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    goto :goto_1
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 680
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentBufferPercentage:I

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 649
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 655
    :goto_0
    return v0

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 652
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    goto :goto_0

    .line 654
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    .line 655
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 686
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 109
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    if-nez v0, :cond_1

    .line 110
    :cond_0
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    .line 111
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setMeasuredDimension(II)V

    .line 115
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVisibleHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->pause()V

    .line 210
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->resume()V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 598
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 601
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 602
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 607
    :cond_0
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 608
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 2
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 144
    .line 145
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 146
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 148
    sparse-switch v1, :sswitch_data_0

    .line 169
    .end local p1    # "desiredSize":I
    :goto_0
    :sswitch_0
    return p1

    .line 161
    .restart local p1    # "desiredSize":I
    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    move p1, v0

    .line 166
    goto :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public restart()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 638
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 640
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 641
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 642
    iput v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 644
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 629
    const/4 v0, 0x3

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 630
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 635
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 668
    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 672
    :goto_0
    return-void

    .line 670
    :cond_0
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setFullScreenEnabled(ZII)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    if-eq v0, p1, :cond_1

    .line 133
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenEnabled:Z

    .line 134
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 135
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenWidth:I

    .line 136
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mFullScreenHeight:I

    .line 139
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 141
    :cond_1
    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mKeepRatio:Z

    .line 334
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize()V

    .line 335
    return-void
.end method

.method public setOnCompletionListener(Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;)V
    .locals 0
    .param p1, "l"    # Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    .prologue
    .line 525
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    .line 526
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 538
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 539
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 514
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 515
    return-void
.end method

.method public setVideoFileName(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->assetResourceRoot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->assetResourceRoot:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_0
    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chukong/cocosplay/client/CocosPlayClient;->isDemo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->updateAssets(Ljava/lang/String;)V

    .line 223
    :cond_1
    invoke-static {p1}, Lcom/chukong/cocosplay/client/CocosPlayClient;->notifyFileLoaded(Ljava/lang/String;)V

    .line 224
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 226
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_2
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fileName:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 231
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public setVideoRect(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I

    .prologue
    .line 121
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    .line 122
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    .line 123
    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    .line 124
    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    .line 126
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 127
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewLeft:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTop:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewWidth:I

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->fixSize(IIII)V

    .line 129
    :cond_0
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isAssetRouse:Z

    .line 237
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 238
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 176
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    .line 178
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mSeekWhenPrepared:I

    .line 186
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 187
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mNeedResume:Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 587
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 589
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 590
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 594
    :cond_0
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 595
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 611
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->stopPlayback()V

    .line 614
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mOnVideoEventListener:Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mViewTag:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 619
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 256
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 258
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mCurrentState:I

    .line 259
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView;->mTargetState:I

    .line 261
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->release(Z)V

    .line 623
    return-void
.end method
