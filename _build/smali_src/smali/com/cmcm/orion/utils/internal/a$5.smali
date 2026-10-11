.class final Lcom/cmcm/orion/utils/internal/a$5;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic b:Z

.field final synthetic c:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 1

    .prologue
    .line 467
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$5;->c:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$5;->a:Lcom/cmcm/orion/picks/a/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/utils/internal/a$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 471
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$5;->c:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$5;->a:Lcom/cmcm/orion/picks/a/a/a;

    const/16 v2, 0x64

    iget-boolean v3, p0, Lcom/cmcm/orion/utils/internal/a$5;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/picks/a/a/a;IZ)V

    .line 472
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$5;->c:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$5;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$5;->c:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$5;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;)V

    .line 476
    :cond_1
    return-void
.end method
