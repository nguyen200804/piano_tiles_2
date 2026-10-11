.class final Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$1;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 55
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity$1;->a:Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a()Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    const-string v1, "no cache ad"

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/b$a;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method
