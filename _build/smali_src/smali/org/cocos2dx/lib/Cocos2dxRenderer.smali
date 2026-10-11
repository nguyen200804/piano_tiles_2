.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;
    }
.end annotation


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J


# instance fields
.field private mLastTickInNanoSeconds:J

.field private mNativeInitCompleted:Z

.field private mReporter:Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;)V
    .locals 1
    .param p1, "reporter"    # Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 66
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mReporter:Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;

    .line 67
    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(II)V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2
    .param p0, "animationInterval"    # D

    .prologue
    .line 74
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    .line 75
    return-void
.end method

.method public static native touchLog(Ljava/lang/String;)V
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0
    .param p1, "ids"    # [I
    .param p2, "xs"    # [F
    .param p3, "ys"    # [F

    .prologue
    .line 150
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    .line 151
    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 142
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    .line 143
    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0
    .param p1, "ids"    # [I
    .param p2, "xs"    # [F
    .param p3, "ys"    # [F

    .prologue
    .line 154
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    .line 155
    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 146
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    .line 147
    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 189
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 190
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 158
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyDown(I)Z

    .line 159
    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterBackground()V

    .line 172
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    goto :goto_0
.end method

.method public handleOnResume()V
    .locals 0

    .prologue
    .line 176
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterForeground()V

    .line 177
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 178
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 106
    sget-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    long-to-double v0, v0

    const-wide v2, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 107
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    .line 124
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 110
    iget-wide v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v2

    .line 112
    sget-wide v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 114
    :try_start_0
    sget-wide v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 122
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "GL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 97
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnSurfaceChanged(II)V

    .line 98
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "GL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "EGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mReporter:Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;

    invoke-interface {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer$ReportGL;->ReportGL(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 89
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mNativeInitCompleted:Z

    .line 92
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 93
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .prologue
    .line 78
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 79
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    .line 80
    return-void
.end method
