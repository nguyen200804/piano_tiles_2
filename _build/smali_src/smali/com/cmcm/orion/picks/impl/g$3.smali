.class final Lcom/cmcm/orion/picks/impl/g$3;
.super Ljava/lang/Object;
.source "VastAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/g;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/g;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/g;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/g$3;->a:Lcom/cmcm/orion/picks/impl/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g$3;->a:Lcom/cmcm/orion/picks/impl/g;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/g$3;->a:Lcom/cmcm/orion/picks/impl/g;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g;->b(Lcom/cmcm/orion/picks/impl/g;)Z

    .line 574
    :cond_0
    return-void
.end method
