.class final Lcom/cmcm/orion/utils/internal/a$11;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/picks/a/a/a;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;IZ)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$11;->d:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$11;->a:Lcom/cmcm/orion/picks/a/a/a;

    iput p3, p0, Lcom/cmcm/orion/utils/internal/a$11;->b:I

    iput-boolean p4, p0, Lcom/cmcm/orion/utils/internal/a$11;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$11;->d:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$11;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->b(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 183
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$11;->d:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$11;->a:Lcom/cmcm/orion/picks/a/a/a;

    iget v2, p0, Lcom/cmcm/orion/utils/internal/a$11;->b:I

    iget-boolean v3, p0, Lcom/cmcm/orion/utils/internal/a$11;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;IZ)V

    .line 184
    return-void
.end method
