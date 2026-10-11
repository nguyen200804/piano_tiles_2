.class final Lcom/cmcm/orion/utils/internal/a$3$1;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/a$3;->a(ILjava/io/InputStream;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/utils/internal/a$3;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a$3;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$3$1;->a:Lcom/cmcm/orion/utils/internal/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$3$1;->a:Lcom/cmcm/orion/utils/internal/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/utils/internal/a$3;->c:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$3$1;->a:Lcom/cmcm/orion/utils/internal/a$3;

    iget-object v1, v1, Lcom/cmcm/orion/utils/internal/a$3;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->c(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 428
    return-void
.end method
