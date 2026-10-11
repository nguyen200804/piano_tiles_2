.class final Lcom/cmcm/orion/utils/internal/a$3;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


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

.field final synthetic b:J

.field final synthetic c:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;J)V
    .locals 1

    .prologue
    .line 417
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$3;->c:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$3;->a:Lcom/cmcm/orion/picks/a/a/a;

    iput-wide p3, p0, Lcom/cmcm/orion/utils/internal/a$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public final a(ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 420
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$3;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v2}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/picks/a/a/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    :goto_0
    return-void

    .line 424
    :cond_0
    new-instance v2, Lcom/cmcm/orion/utils/internal/a$3$1;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/internal/a$3$1;-><init>(Lcom/cmcm/orion/utils/internal/a$3;)V

    iget-wide v4, p0, Lcom/cmcm/orion/utils/internal/a$3;->b:J

    cmp-long v3, v4, v0

    if-lez v3, :cond_1

    iget-wide v0, p0, Lcom/cmcm/orion/utils/internal/a$3;->b:J

    :cond_1
    invoke-static {v2, v0, v1}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
