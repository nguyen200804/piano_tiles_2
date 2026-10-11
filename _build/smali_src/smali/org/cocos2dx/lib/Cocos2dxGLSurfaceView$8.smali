.class Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;
.super Ljava/lang/Object;
.source "Cocos2dxGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field final synthetic val$idPointerUp:I

.field final synthetic val$xPointerUp:F

.field final synthetic val$yPointerUp:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;IFF)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 282
    const-string v0, "java:"

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ACTION_POINTER_UP id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->touchLog(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->this$0:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->access$300(Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;)Lorg/cocos2dx/lib/Cocos2dxRenderer;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$idPointerUp:I

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$xPointerUp:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView$8;->val$yPointerUp:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->handleActionUp(IFF)V

    .line 292
    return-void
.end method
