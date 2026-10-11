.class Lcom/facebook/notifications/internal/asset/a/b$1;
.super Ljava/lang/Object;
.source "ContentCache.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/asset/a/b;->a(Ljava/util/Set;Lcom/facebook/notifications/internal/asset/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/facebook/notifications/internal/asset/a/b;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/asset/a/b;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->c:Lcom/facebook/notifications/internal/asset/a/b;

    iput-object p2, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;[B)V
    .locals 3
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->c:Lcom/facebook/notifications/internal/asset/a/b;

    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/a/b;->a(Lcom/facebook/notifications/internal/asset/a/b;)Lcom/facebook/notifications/internal/asset/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/facebook/notifications/internal/asset/a/d;->a(Ljava/lang/String;[B)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->c:Lcom/facebook/notifications/internal/asset/a/b;

    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/a/b;->b(Lcom/facebook/notifications/internal/asset/a/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/facebook/notifications/internal/asset/a/b$1;->b:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 125
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/a/a;

    .line 128
    invoke-virtual {v0, p1, p2}, Lcom/facebook/notifications/internal/asset/a/a;->a(Ljava/net/URL;[B)V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 130
    :cond_1
    return-void
.end method
