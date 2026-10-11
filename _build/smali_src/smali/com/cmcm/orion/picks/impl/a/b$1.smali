.class final Lcom/cmcm/orion/picks/impl/a/b$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a/b;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a/b;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b;->a(Lcom/cmcm/orion/picks/impl/a/b;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    monitor-exit v1

    .line 178
    :goto_0
    return-object v2

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b;->b(Lcom/cmcm/orion/picks/impl/a/b;)V

    .line 173
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b;->c(Lcom/cmcm/orion/picks/impl/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b;->d(Lcom/cmcm/orion/picks/impl/a/b;)V

    .line 175
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/b$1;->a:Lcom/cmcm/orion/picks/impl/a/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/b;->e(Lcom/cmcm/orion/picks/impl/a/b;)I

    .line 177
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/a/b$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
