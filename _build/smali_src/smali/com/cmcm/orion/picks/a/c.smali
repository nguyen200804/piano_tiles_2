.class public Lcom/cmcm/orion/picks/a/c;
.super Ljava/lang/Object;
.source "GlobalCache.java"


# static fields
.field private static b:Lcom/cmcm/orion/picks/a/c;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cmcm/orion/picks/a/c;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/cmcm/orion/picks/a/c;->b:Lcom/cmcm/orion/picks/a/c;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/cmcm/orion/picks/a/c;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/a/c;->b:Lcom/cmcm/orion/picks/a/c;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/cmcm/orion/picks/a/c;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/c;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/a/c;->b:Lcom/cmcm/orion/picks/a/c;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/a/c;->b:Lcom/cmcm/orion/picks/a/c;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/i;
    .locals 2

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Lcom/cmcm/orion/picks/a/a/i;

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/i;

    invoke-direct {v1, v0}, Lcom/cmcm/orion/picks/a/a/i;-><init>(Lcom/cmcm/orion/picks/a/a/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 45
    :cond_0
    monitor-exit p0

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/i;)V
    .locals 2

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 33
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/i;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/i;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
