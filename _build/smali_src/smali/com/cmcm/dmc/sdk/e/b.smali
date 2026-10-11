.class public abstract Lcom/cmcm/dmc/sdk/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/cmcm/dmc/sdk/e/b;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/b;->b:Z

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/b;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;->c()V

    return-void
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/cmcm/dmc/sdk/e/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-static {p1}, Lcom/cmcm/dmc/sdk/a/c;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/cmcm/dmc/sdk/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/b;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized a(Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/cmcm/dmc/sdk/e/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/cmcm/dmc/sdk/e/b;->b:Z

    sget-boolean v0, Lcom/cmcm/dmc/sdk/a/f;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setEnabled(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/cmcm/dmc/sdk/e/b;->b:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/b;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/b;->b()V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/b;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/cmcm/dmc/sdk/e/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/e/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected final h()Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "receiver"

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/k;->a(Ljava/lang/String;)Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
