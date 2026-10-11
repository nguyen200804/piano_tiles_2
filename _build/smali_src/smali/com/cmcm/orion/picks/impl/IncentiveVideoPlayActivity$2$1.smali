.class final Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2$1;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2$1;->a:Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a()Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/b$a;->a()V

    .line 89
    return-void
.end method
