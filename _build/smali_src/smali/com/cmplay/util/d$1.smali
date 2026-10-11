.class final Lcom/cmplay/util/d$1;
.super Ljava/lang/Object;
.source "CNodeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/d;->a(Lcom/cmplay/util/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/d$a;


# direct methods
.method constructor <init>(Lcom/cmplay/util/d$a;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cmplay/util/d$1;->a:Lcom/cmplay/util/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cmplay/tile2/ui/AppActivity;

    .line 27
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/cmplay/tile2/ui/AppActivity;->a:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/cmplay/util/d$1$1;

    invoke-direct {v0, p0}, Lcom/cmplay/util/d$1$1;-><init>(Lcom/cmplay/util/d$1;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/cmplay/util/d;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/util/d$1;->a:Lcom/cmplay/util/d$a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
