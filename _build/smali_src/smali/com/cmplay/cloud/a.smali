.class public Lcom/cmplay/cloud/a;
.super Ljava/lang/Object;
.source "CloudConfigGetter.java"

# interfaces
.implements Lcom/cmplay/cloud/c;


# static fields
.field private static b:Lcom/cmplay/cloud/a;


# instance fields
.field private a:Lcom/cmplay/cloud/c;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/cmplay/cloud/a;->c:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/cmplay/cloud/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cmplay/cloud/a$1;-><init>(Lcom/cmplay/cloud/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/cloud/a;->d:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/cmplay/cloud/a/a;

    invoke-direct {v0}, Lcom/cmplay/cloud/a/a;-><init>()V

    iput-object v0, p0, Lcom/cmplay/cloud/a;->a:Lcom/cmplay/cloud/c;

    .line 35
    return-void
.end method

.method public static a()Lcom/cmplay/cloud/a;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/cmplay/cloud/a;->b:Lcom/cmplay/cloud/a;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/cmplay/cloud/a;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/cmplay/cloud/a;->b:Lcom/cmplay/cloud/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/cmplay/cloud/a;

    invoke-direct {v0}, Lcom/cmplay/cloud/a;-><init>()V

    sput-object v0, Lcom/cmplay/cloud/a;->b:Lcom/cmplay/cloud/a;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/cmplay/cloud/a;->b:Lcom/cmplay/cloud/a;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/cloud/a;)Lcom/cmplay/cloud/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmplay/cloud/a;->a:Lcom/cmplay/cloud/c;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;

    .line 55
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/ConfigInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 128
    monitor-enter p0

    if-nez p1, :cond_0

    .line 129
    :try_start_0
    sget-object p1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 131
    :cond_0
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1}, Lcom/cmplay/tile2/ui/ReportService;->a(Landroid/content/Context;)V

    .line 133
    invoke-static {p1}, Lcom/cmplay/cloud/b;->a(Landroid/content/Context;)Lcom/cmplay/cloud/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/cloud/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/cmplay/cloud/a;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 113
    monitor-enter p0

    if-nez p1, :cond_0

    .line 114
    :try_start_0
    sget-object p1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 116
    :cond_0
    invoke-static {}, Lcom/cmplay/i/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    if-eqz p2, :cond_1

    .line 118
    invoke-static {p1}, Lcom/cmplay/tile2/ui/ReportService;->a(Landroid/content/Context;)V

    .line 120
    :cond_1
    invoke-static {p1}, Lcom/cmplay/cloud/b;->a(Landroid/content/Context;)Lcom/cmplay/cloud/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cmplay/cloud/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/cmplay/cloud/a;->d:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    :goto_1
    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized a(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/ijinshan/cloudconfig/deepcloudconfig/b;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/ijinshan/cloudconfig/deepcloudconfig/a;->b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
