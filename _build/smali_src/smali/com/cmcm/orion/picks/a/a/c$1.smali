.class final Lcom/cmcm/orion/picks/a/a/c$1;
.super Ljava/lang/Object;
.source "AppLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/orion/picks/a/a/c;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/a/a/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/c$1;->b:Lcom/cmcm/orion/picks/a/a/c;

    iput-object p2, p0, Lcom/cmcm/orion/picks/a/a/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 510
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/c$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
