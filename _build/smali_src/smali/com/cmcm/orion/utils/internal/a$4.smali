.class final Lcom/cmcm/orion/utils/internal/a$4;
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

.field final synthetic b:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$4;->b:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$4;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/cmcm/orion/adsdk/d;)V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: report CLICK error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmcm/orion/adsdk/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    return-void
.end method

.method public final a(ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$4;->b:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$4;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 459
    return-void
.end method
