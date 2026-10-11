.class final Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Lcom/cmcm/orion/picks/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;->a:Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a()Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2$1;-><init>(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;->a:Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;)V

    .line 112
    return-void
.end method
