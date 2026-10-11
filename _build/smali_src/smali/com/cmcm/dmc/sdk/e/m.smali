.class public Lcom/cmcm/dmc/sdk/e/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/dmc/sdk/a/p;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/dmc/sdk/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/m;Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/e/m;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/e/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/b;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->c:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/m;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/e/m;->a(Ljava/util/Set;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/cmcm/dmc/sdk/a/a;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->e()Ljava/io/File;

    move-result-object v3

    const-string v4, "receiver_history_list.dat"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/cmcm/dmc/sdk/a/a;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lcom/cmcm/dmc/sdk/a/a;->b()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string v3, "ReceiverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to writePackage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/cmcm/dmc/sdk/a/a;->b(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v2, v1}, Lcom/cmcm/dmc/sdk/a/a;->a(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "inst_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "inst_app2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "uninst_app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "uninst_app2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "inst_app_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "screen_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "headset_plug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_bar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "available_network_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_0

    const-string v0, "ReceiverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " have no permission"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android.permission.BLUETOOTH"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    goto :goto_2

    :cond_6
    const-string v0, "running_with_duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "running_app_list2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v3, "android.permission.GET_TASKS"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_8
    const-string v0, "android.permission.GET_TASKS"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "photo_stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "music_stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    goto/16 :goto_2

    :cond_d
    const-string v0, "account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->c(Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    goto/16 :goto_2

    :cond_e
    move v2, v1

    goto/16 :goto_2

    :cond_f
    move v2, v0

    goto/16 :goto_2

    :cond_10
    move v0, v1

    goto/16 :goto_1
.end method

.method private c()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/d;->a()Lcom/cmcm/dmc/sdk/a/d;

    move-result-object v1

    const-string v0, "action_flow"

    invoke-virtual {v1, v0}, Lcom/cmcm/dmc/sdk/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmcm/dmc/sdk/e/d;->a()Lcom/cmcm/dmc/sdk/e/d;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/e/d;->a(Z)V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/e/b;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cmcm/dmc/sdk/a/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/cmcm/dmc/sdk/e/m;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/cmcm/dmc/sdk/e/b;->a(Z)Z

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/e/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/cmcm/dmc/sdk/g/j;->a(Ljava/util/List;)V

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/cmcm/dmc/sdk/e/d;->a()Lcom/cmcm/dmc/sdk/e/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/e/d;->a(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/cmcm/dmc/sdk/e/b;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/cmcm/dmc/sdk/a/a;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->e()Ljava/io/File;

    move-result-object v3

    const-string v4, "receiver_history_list.dat"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/cmcm/dmc/sdk/a/a;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/a;->c()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    const-string v3, "ReceiverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to readPackage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/q;->a(Ljava/io/Closeable;)V

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private e()V
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    const-string v2, "last_app_install_list_time"

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/a/k;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-eqz v2, :cond_0

    sub-long v4, v6, v4

    const-wide/32 v8, 0x240c8400

    cmp-long v2, v4, v8

    if-lez v2, :cond_4

    :cond_0
    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_app_install_list_time"

    invoke-interface {v0, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "packageName"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "isSystemApp"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "versionCode"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "versionName"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "appSource"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "installDate"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "inst_app_list2"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->c:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/m;->c:Ljava/util/Set;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "ReceiverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to processPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    :try_start_1
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/m;->d()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->c:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Ljava/util/Set;)V

    goto :goto_4

    :cond_8
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_b
    const-string v0, "inst_app"

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;

    move-result-object v0

    const-string v3, "uninst_app"

    invoke-direct {p0, v3}, Lcom/cmcm/dmc/sdk/e/m;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;

    move-result-object v3

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/b;->e()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/cmcm/dmc/sdk/e/b;->e()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_d
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v4

    const/16 v5, 0xa

    const-string v6, "inst_app2"

    invoke-virtual {v4, v5, v6, v0}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/cmcm/dmc/sdk/e/b;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v2

    const/16 v3, 0xa

    const-string v4, "uninst_app2"

    invoke-virtual {v2, v3, v4, v0}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->c:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/m;->c()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/e/b;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    :try_start_0
    const-string v0, "ReceiverManager"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/q;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->b:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ReceiverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerReceiver #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cmcm/dmc/sdk/e/h;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/dmc/sdk/e/b;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReceiverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create receiver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v2, p0, Lcom/cmcm/dmc/sdk/e/m;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/m;->c()V

    invoke-static {p0}, Lcom/cmcm/dmc/sdk/a/c;->a(Lcom/cmcm/dmc/sdk/a/p;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/m;->e()V

    new-instance v0, Lcom/cmcm/dmc/sdk/e/m$1;

    invoke-direct {v0, p0}, Lcom/cmcm/dmc/sdk/e/m$1;-><init>(Lcom/cmcm/dmc/sdk/e/m;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/m;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/m;->d:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/b/a;->a()Lcom/cmcm/dmc/sdk/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/b/a;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
