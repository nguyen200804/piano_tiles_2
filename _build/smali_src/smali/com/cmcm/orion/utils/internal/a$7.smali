.class final Lcom/cmcm/orion/utils/internal/a$7;
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
.field final synthetic a:Lcom/cmcm/orion/utils/internal/a$b;

.field final synthetic b:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/utils/internal/a$b;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$7;->b:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$7;->a:Lcom/cmcm/orion/utils/internal/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 510
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
    .line 503
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$7;->b:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$7;->a:Lcom/cmcm/orion/utils/internal/a$b;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a$b;->a(Lcom/cmcm/orion/utils/internal/a$b;)Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->b(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 504
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$7;->b:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$7;->a:Lcom/cmcm/orion/utils/internal/a$b;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a$b;->a(Lcom/cmcm/orion/utils/internal/a$b;)Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->e(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 505
    return-void
.end method
