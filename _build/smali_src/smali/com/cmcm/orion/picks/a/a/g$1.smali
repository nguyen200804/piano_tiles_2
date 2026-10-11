.class final Lcom/cmcm/orion/picks/a/a/g$1;
.super Ljava/lang/Object;
.source "CmMarketHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/orion/picks/a/a/g;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/a/a/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/g$1;->b:Lcom/cmcm/orion/picks/a/a/g;

    iput-object p2, p0, Lcom/cmcm/orion/picks/a/a/g$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/g$1;->b:Lcom/cmcm/orion/picks/a/a/g;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/g$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g;->a(Ljava/lang/String;)V

    .line 102
    return-void
.end method
