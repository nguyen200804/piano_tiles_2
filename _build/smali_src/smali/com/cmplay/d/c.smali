.class public Lcom/cmplay/d/c;
.super Ljava/lang/Object;
.source "MainSceneListener.java"

# interfaces
.implements Lcom/cmplay/d/a$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public a(Lcom/cmplay/d/a$a;)V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/cmplay/d/a;->a()Lcom/cmplay/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/d/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/d/c;->a()V

    .line 21
    invoke-static {}, Lcom/cmplay/tile2/GameApp;->g()Lcom/cmplay/tile2/GameApp;

    move-result-object v0

    new-instance v1, Lcom/cmplay/d/c$1;

    invoke-direct {v1, p0}, Lcom/cmplay/d/c$1;-><init>(Lcom/cmplay/d/c;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/tile2/GameApp;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
