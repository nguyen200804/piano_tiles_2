.class final Lcom/cmcm/orion/utils/internal/a$1;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$1;->a:Lcom/cmcm/orion/utils/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$1;->a:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;)V

    .line 103
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$1;->a:Lcom/cmcm/orion/utils/internal/a;

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$1;->a:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v2, v0}, Lcom/cmcm/orion/utils/internal/a;->b(Lcom/cmcm/orion/utils/internal/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$1;->a:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a;->b(Lcom/cmcm/orion/utils/internal/a;)V

    .line 108
    return-void
.end method
