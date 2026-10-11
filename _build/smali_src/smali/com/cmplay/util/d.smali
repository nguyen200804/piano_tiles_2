.class public Lcom/cmplay/util/d;
.super Ljava/lang/Object;
.source "CNodeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/d$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/util/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmplay/util/d;->a:Ljava/util/List;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmplay/util/d;->b:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/cmplay/util/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/util/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/cmplay/util/d$a;)V
    .locals 3

    .prologue
    .line 23
    const-class v1, Lcom/cmplay/util/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/util/d;->b:Landroid/os/Handler;

    new-instance v2, Lcom/cmplay/util/d$1;

    invoke-direct {v2, p0}, Lcom/cmplay/util/d$1;-><init>(Lcom/cmplay/util/d$a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v1

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 4

    .prologue
    .line 46
    const-class v1, Lcom/cmplay/util/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/util/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    monitor-exit v1

    return-void

    .line 49
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    sget-object v0, Lcom/cmplay/util/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/d$a;

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 53
    :cond_1
    :try_start_2
    sget-object v0, Lcom/cmplay/util/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    new-instance v0, Lcom/cmplay/util/d$2;

    invoke-direct {v0, v2}, Lcom/cmplay/util/d$2;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/cmplay/util/d;->a:Ljava/util/List;

    return-object v0
.end method
