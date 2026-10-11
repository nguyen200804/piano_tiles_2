.class public final Lcom/cmcm/orion/utils/internal/c;
.super Ljava/lang/Object;
.source "PackageManagerWrapper.java"


# static fields
.field private static a:Lcom/cmcm/orion/utils/internal/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/cmcm/orion/utils/internal/c;

    invoke-direct {v0}, Lcom/cmcm/orion/utils/internal/c;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/internal/c;->a:Lcom/cmcm/orion/utils/internal/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->b:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->c:Landroid/content/pm/PackageManager;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcom/cmcm/orion/utils/internal/c;
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/cmcm/orion/utils/internal/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cmcm/orion/utils/internal/c;->a:Lcom/cmcm/orion/utils/internal/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/c;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 71
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/c;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move v1, v0

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 91
    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0

    .line 89
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/cmcm/orion/utils/internal/c;->c()Ljava/util/List;

    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/c;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 34
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 38
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/c;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->c:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/c;->d:Ljava/util/List;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
