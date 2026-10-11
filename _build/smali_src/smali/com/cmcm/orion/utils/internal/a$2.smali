.class final Lcom/cmcm/orion/utils/internal/a$2;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Lcom/cmcm/orion/utils/internal/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/a;
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
    .line 363
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$2;->a:Lcom/cmcm/orion/utils/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 1

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$2;->a:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0, p1}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 369
    :cond_0
    return-void
.end method
