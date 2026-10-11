.class public Lorg/cocos2dx/lib/FramePacer;
.super Ljava/lang/Object;
.source "FramePacer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;

# PATCH: VSync-driven frame pacer.
# The game advances its logic once per rendered frame, so it must render at ~60 FPS.
# On a 120Hz panel this requests a render on every 2nd VSync (elapsed >= 12.5ms),
# giving perfectly even 16.67ms frames instead of the jittery Thread.sleep() throttle.
# On a 60Hz panel it renders on every VSync.

# static fields
.field private static sInstance:Lorg/cocos2dx/lib/FramePacer;

# instance fields
.field private mView:Landroid/opengl/GLSurfaceView;
.field private mLast:J
.field private mRunning:Z


.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# Must be called on the UI thread (Choreographer needs a Looper).
.method public static start(Landroid/opengl/GLSurfaceView;)V
    .locals 3

    sget-object v0, Lorg/cocos2dx/lib/FramePacer;->sInstance:Lorg/cocos2dx/lib/FramePacer;
    if-nez v0, :have_instance
    new-instance v0, Lorg/cocos2dx/lib/FramePacer;
    invoke-direct {v0}, Lorg/cocos2dx/lib/FramePacer;-><init>()V
    sput-object v0, Lorg/cocos2dx/lib/FramePacer;->sInstance:Lorg/cocos2dx/lib/FramePacer;

    :have_instance
    iput-object p0, v0, Lorg/cocos2dx/lib/FramePacer;->mView:Landroid/opengl/GLSurfaceView;
    const-wide/16 v1, 0x0
    iput-wide v1, v0, Lorg/cocos2dx/lib/FramePacer;->mLast:J

    iget-boolean v1, v0, Lorg/cocos2dx/lib/FramePacer;->mRunning:Z
    if-nez v1, :done
    const/4 v1, 0x1
    iput-boolean v1, v0, Lorg/cocos2dx/lib/FramePacer;->mRunning:Z
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;
    move-result-object v1
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :done
    return-void
.end method

.method public static stop()V
    .locals 2

    sget-object v0, Lorg/cocos2dx/lib/FramePacer;->sInstance:Lorg/cocos2dx/lib/FramePacer;
    if-eqz v0, :done
    const/4 v1, 0x0
    iput-boolean v1, v0, Lorg/cocos2dx/lib/FramePacer;->mRunning:Z
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;
    move-result-object v1
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :done
    return-void
.end method

.method public doFrame(J)V
    .locals 6

    iget-boolean v0, p0, Lorg/cocos2dx/lib/FramePacer;->mRunning:Z
    if-eqz v0, :ret

    iget-wide v0, p0, Lorg/cocos2dx/lib/FramePacer;->mLast:J
    sub-long v2, p1, v0

    # 4ms threshold: render on every VSync (60Hz / 90Hz / 120Hz)
    const-wide/32 v4, 0x3d0900
    cmp-long v4, v2, v4
    if-ltz v4, :schedule

    iput-wide p1, p0, Lorg/cocos2dx/lib/FramePacer;->mLast:J
    iget-object v0, p0, Lorg/cocos2dx/lib/FramePacer;->mView:Landroid/opengl/GLSurfaceView;
    if-eqz v0, :schedule
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :schedule
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;
    move-result-object v0
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :ret
    return-void
.end method
