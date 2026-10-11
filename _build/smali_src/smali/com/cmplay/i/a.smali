.class public Lcom/cmplay/i/a;
.super Ljava/lang/Object;
.source "ChannelInfoUtils.java"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "key_channel_id"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    const-string v0, "cn"

    invoke-static {p0, v0}, Lcom/cmplay/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    const v2, 0x7f050095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/cmplay/i/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    monitor-exit v1

    return-object v0

    .line 32
    :cond_2
    :try_start_1
    const-string v0, "gp"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 79
    if-nez v0, :cond_0

    move-object v0, v1

    .line 95
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 90
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    .line 95
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 93
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "key_channel_id"

    invoke-static {v0, p0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v1

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "key_n_r_channel"

    invoke-static {v0, p0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "key_n_r_channel"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "key_app_child_channel_id"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const-string v0, "cn2"

    invoke-static {p0, v0}, Lcom/cmplay/i/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v0, "0"

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/cmplay/i/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "key_app_child_channel_id"

    invoke-static {v0, p0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v1

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Z)V
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "k_h_r_channel"

    invoke-static {v0, p0}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Z
    .locals 3

    .prologue
    .line 56
    const-class v1, Lcom/cmplay/i/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "k_h_r_channel"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
