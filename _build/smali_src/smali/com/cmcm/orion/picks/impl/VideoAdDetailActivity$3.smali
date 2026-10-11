.class final Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$3;
.super Ljava/lang/Object;
.source "VideoAdDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$3;->a:Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 205
    invoke-static {}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a()Lcom/cmcm/orion/picks/impl/g;

    move-result-object v0

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->n:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-static {}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a()Lcom/cmcm/orion/picks/impl/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/impl/g;->b()I

    move-result v2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 206
    invoke-static {}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->b()Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/b$a;->b()V

    .line 207
    return-void
.end method
