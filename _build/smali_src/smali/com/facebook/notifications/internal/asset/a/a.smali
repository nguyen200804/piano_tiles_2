.class Lcom/facebook/notifications/internal/asset/a/a;
.super Ljava/lang/Object;
.source "CacheOperation.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a/c$a;


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/notifications/internal/asset/a/b$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/facebook/notifications/internal/asset/a/b$a;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Lcom/facebook/notifications/internal/asset/a/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/a;->a:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/a/a;->b:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/a;->c:Ljava/util/Set;

    .line 38
    iput-object p2, p0, Lcom/facebook/notifications/internal/asset/a/a;->d:Lcom/facebook/notifications/internal/asset/a/b$a;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/a;->b:Ljava/util/Set;

    return-object v0
.end method

.method public a(Ljava/net/URL;[B)V
    .locals 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/a;->d:Lcom/facebook/notifications/internal/asset/a/b$a;

    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/a;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/facebook/notifications/internal/asset/a/b$a;->a(Ljava/util/Set;)V

    .line 62
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
