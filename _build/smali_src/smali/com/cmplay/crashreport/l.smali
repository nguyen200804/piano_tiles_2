.class Lcom/cmplay/crashreport/l;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmplay/crashreport/k;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    iput-object p2, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/cmplay/crashreport/m;->a()Lcom/cmplay/crashreport/m;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/crashreport/m;->a()Lcom/cmplay/crashreport/m;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/cmplay/crashreport/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "crash_"

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/crashreport/m;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/crashreport/m;->a()Lcom/cmplay/crashreport/m;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/crashreport/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "anr_"

    invoke-virtual {v1, v2, v3}, Lcom/cmplay/crashreport/m;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    array-length v2, v1

    if-eqz v2, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    iget-object v3, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cmplay/crashreport/m;->a()Lcom/cmplay/crashreport/m;

    move-result-object v4

    iget-object v5, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/cmplay/crashreport/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/cmplay/crashreport/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v0, v4, v5}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    array-length v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    iget-object v2, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmplay/crashreport/l;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmplay/crashreport/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cmplay/crashreport/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v1, v3, v4}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;Landroid/content/Context;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_3
    iget-object v0, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    invoke-static {v0}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    invoke-static {v0}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    invoke-static {v1}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/cmplay/crashreport/l;->b:Lcom/cmplay/crashreport/k;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/crashreport/k;->a(Lcom/cmplay/crashreport/k;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method
