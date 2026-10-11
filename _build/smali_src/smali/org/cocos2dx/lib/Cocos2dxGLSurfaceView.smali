.class public Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "Cocos2dxGLSurfaceView.java"


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field public static mPositionX:F

.field public static mPositionY:F

.field private static sCocos2dxTextInputWraper:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

.field private mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const-class v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->TAG:Ljava/lang/String;

    .line 59
    sput v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mPositionX:F

    .line 61
    sput v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mPositionY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->initView()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxEditText;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

    return-object v0
.end method

.method static synthetic access$100()Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    return-object v0
.end method

.method static synthetic access$200()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    return-object v0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    .prologue
    .line 400
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 401
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 402
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method private static dumpMotionEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v0, 0x0

    .line 424
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOWN"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "UP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MOVE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CANCEL"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "OUTSIDE"

    aput-object v3, v1, v2

    const-string v2, "POINTER_DOWN"

    aput-object v2, v1, v6

    const-string v2, "POINTER_UP"

    aput-object v2, v1, v7

    const/4 v2, 0x7

    const-string v3, "7?"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8?"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9?"

    aput-object v3, v1, v2

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 427
    and-int/lit16 v4, v3, 0xff

    .line 428
    const-string v5, "event ACTION_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_1

    .line 430
    :cond_0
    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_1
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 435
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, ")="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 440
    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_3
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method private getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method public static openIMEKeyboard()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 394
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    return-void
.end method

.method public static queueAccelerometer(FFFJ)V
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "timestamp"    # J

    .prologue
    .line 128
    sget-object v6, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;

    move v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$2;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$13;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method public getCocos2dxEditText()Lorg/cocos2dx/lib/Cocos2dxEditText;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

    return-object v0
.end method

.method public getCocos2dxRenderer()Lorg/cocos2dx/lib/Cocos2dxRenderer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    return-object v0
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 83
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 84
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    .line 86
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 406
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$12;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$12;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "pKeyCode"    # I
    .param p2, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    sparse-switch p1, :sswitch_data_0

    .line 380
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 363
    :sswitch_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->mVideoHandler:Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->sendEmptyMessage(I)Z

    .line 372
    :sswitch_1
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$11;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$11;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 378
    const/4 v0, 0x1

    goto :goto_0

    .line 361
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x52 -> :sswitch_1
        0x55 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lorg/cocos2dx/lib/FramePacer;->stop()V

    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderMode(I)V

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    # PATCH: render on demand, paced by VSync (FramePacer) instead of continuously
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderMode(I)V

    invoke-static {p0}, Lorg/cocos2dx/lib/FramePacer;->start(Landroid/opengl/GLSurfaceView;)V

    .line 170
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "pNewSurfaceWidth"    # I
    .param p2, "pNewSurfaceHeight"    # I
    .param p3, "pOldSurfaceWidth"    # I
    .param p4, "pOldSurfaceHeight"    # I

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->setScreenWidthAndHeight(II)V

    .line 357
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 194
    new-array v3, v2, [I

    .line 195
    new-array v4, v2, [F

    .line 196
    new-array v5, v2, [F

    .line 197
    const-string v0, ""

    move v0, v1

    .line 198
    :goto_0
    if-ge v0, v2, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v3, v0

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aput v6, v4, v0

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    aput v6, v5, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 206
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 211
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$5;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 230
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 231
    aget v2, v4, v1

    .line 232
    aget v1, v5, v1

    .line 233
    sput v2, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mPositionX:F

    .line 234
    sput v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mPositionY:F

    .line 236
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;

    invoke-direct {v3, p0, v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$6;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 254
    :pswitch_3
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$7;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I[I[F[F)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 274
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 279
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 298
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 299
    aget v2, v4, v1

    .line 300
    aget v1, v5, v1

    .line 302
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;

    invoke-direct {v3, p0, v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$9;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 320
    :pswitch_6
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$10;-><init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;I[I[F[F)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V
    .locals 2
    .param p1, "pCocos2dxEditText"    # Lorg/cocos2dx/lib/Cocos2dxEditText;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

    .line 155
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lorg/cocos2dx/lib/Cocos2dxTextInputWraper;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setCocos2dxGLSurfaceView(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)V

    .line 158
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 160
    :cond_0
    return-void
.end method

.method public setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lorg/cocos2dx/lib/Cocos2dxRenderer;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    .line 138
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 139
    return-void
.end method
