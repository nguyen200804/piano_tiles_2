.class public Lcom/cmcm/dmc/sdk/g/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/g/j$b;,
        Lcom/cmcm/dmc/sdk/g/j$a;,
        Lcom/cmcm/dmc/sdk/g/j$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Lcom/cmcm/dmc/sdk/g/j;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/io/File;

.field private e:Landroid/os/Handler;

.field private volatile f:Lcom/cmcm/dmc/sdk/g/g;

.field private g:Lcom/cmcm/dmc/sdk/a/l;

.field private volatile h:J

.field private i:Lcom/cmcm/dmc/sdk/g/j$a;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Ljava/lang/String;

.field private volatile m:Lcom/cmcm/dmc/sdk/d;

.field private n:Lcom/cmcm/dmc/sdk/g/i;

.field private o:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmcm/dmc/sdk/g/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    new-instance v0, Lcom/cmcm/dmc/sdk/g/j;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/g/j;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/g/j;->b:Lcom/cmcm/dmc/sdk/g/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j;->h:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/g/j;
    .locals 2

    sget-object v1, Lcom/cmcm/dmc/sdk/g/j;->b:Lcom/cmcm/dmc/sdk/g/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/dmc/sdk/g/j;->b:Lcom/cmcm/dmc/sdk/g/j;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->d:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j;->e()V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/j;->b(Z)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "heartbeat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/g/j;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static varargs b(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    const-string v1, "[Batch] %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "[Fast] %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v6, 0xa

    const-string v2, "begin to check"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v3}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j;->g()V

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->i:Lcom/cmcm/dmc/sdk/g/j$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->i:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-virtual {v2}, Lcom/cmcm/dmc/sdk/g/j$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v0, "reporting"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "reporter"

    const-string v3, "k_report_net_env"

    invoke-static {v2, v3, v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "no Wifi"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j;->h()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "disabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    const-string v2, "report_timestamp"

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/a/k;->c(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/dmc/sdk/g/j;->h:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    const-string v0, "no Time"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->f:Lcom/cmcm/dmc/sdk/g/g;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/cmcm/dmc/sdk/g/g;->a(I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/16 v0, 0xa

    const-string v2, "no Data"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    :try_start_1
    const-string v2, "start to report"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/g/j;->a(I)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->n:Lcom/cmcm/dmc/sdk/g/i;

    const/high16 v3, 0x300000

    invoke-virtual {v2, v1, v0, v3}, Lcom/cmcm/dmc/sdk/g/i;->a(Landroid/database/Cursor;Ljava/io/File;I)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/g/j;->i:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-virtual {v3, v0, v2}, Lcom/cmcm/dmc/sdk/g/j$a;->a(Ljava/io/File;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0xa

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/cmcm/dmc/sdk/g/j;->b(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j;->l:Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/g;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->f:Lcom/cmcm/dmc/sdk/g/g;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/dmc/sdk/g/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j;->f()V

    return-void
.end method

.method static synthetic e(Lcom/cmcm/dmc/sdk/g/j;)J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j;->h:J

    return-wide v0
.end method

.method private e()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/cmcm/dmc/sdk/g/i;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/i;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->n:Lcom/cmcm/dmc/sdk/g/i;

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/a;->b()Lcom/cmcm/dmc/sdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/g/a;->b(Landroid/content/Context;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->o:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/cmcm/dmc/sdk/g/g;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/g/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/g/g;->a()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->f:Lcom/cmcm/dmc/sdk/g/g;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    const-string v1, "report_heartbeat_day"

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/a/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->l:Ljava/lang/String;

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->a()Lcom/cmcm/dmc/sdk/g/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/f;->a(Landroid/content/Context;Ljava/io/File;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j;->g()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/dmc/sdk/g/j$4;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/g/j$4;-><init>(Lcom/cmcm/dmc/sdk/g/j;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/a/l;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->g:Lcom/cmcm/dmc/sdk/a/l;

    return-object v0
.end method

.method private f()V
    .locals 10

    :try_start_0
    new-instance v0, Lcom/cmcm/dmc/sdk/g/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/dmc/sdk/g/j$a;-><init>(Lcom/cmcm/dmc/sdk/g/j;Lcom/cmcm/dmc/sdk/g/j$1;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->i:Lcom/cmcm/dmc/sdk/g/j$a;

    new-instance v0, Lcom/cmcm/dmc/sdk/a/l;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/cmcm/dmc/sdk/a/l;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->g:Lcom/cmcm/dmc/sdk/a/l;

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v4

    const-string v5, "report_timestamp"

    invoke-virtual {v4, v5}, Lcom/cmcm/dmc/sdk/a/k;->c(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "report_timestamp"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/32 v0, 0x1d4c0

    :goto_0
    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->g:Lcom/cmcm/dmc/sdk/a/l;

    new-instance v3, Lcom/cmcm/dmc/sdk/g/j$5;

    invoke-direct {v3, p0}, Lcom/cmcm/dmc/sdk/g/j$5;-><init>(Lcom/cmcm/dmc/sdk/g/j;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    sget-object v0, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    const-string v1, "init finished"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    add-long v4, v6, v0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/cmcm/dmc/sdk/g/j;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    sub-long/2addr v2, v6

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic g(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/i;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->n:Lcom/cmcm/dmc/sdk/g/i;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->o:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "report_heartbeat_day"

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0x32

    const-string v1, "heartbeat"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/cmcm/dmc/sdk/g/j;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private h()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/g/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->m:Lcom/cmcm/dmc/sdk/d;

    if-nez v1, :cond_1

    const-string v1, "DmcReporterDelegate == null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/cmcm/dmc/sdk/d;->a()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DmcReporterDelegate.canReport() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic i(Lcom/cmcm/dmc/sdk/g/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    if-nez v1, :cond_0

    sget-object v0, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    const-string v1, "\u51fa\u73b0\u9519\u8bef\uff1a mHandler == null"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    new-instance v0, Lcom/cmcm/dmc/sdk/g/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/cmcm/dmc/sdk/g/h;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "\u9700\u8981\u4e0a\u62a5\u7684\u6570\u636e\uff1a %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/g/h;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/cmcm/dmc/sdk/g/j;->a(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    new-instance v3, Lcom/cmcm/dmc/sdk/g/j$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/cmcm/dmc/sdk/g/j$3;-><init>(Lcom/cmcm/dmc/sdk/g/j;ZLcom/cmcm/dmc/sdk/g/h;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x6ddd00

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j;->h:J

    :goto_0
    return-void

    :cond_0
    const-wide/32 v0, 0xea60

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j;->h:J

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/j;->d:Ljava/io/File;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/dmc/sdk/g/j$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/g/j$1;-><init>(Lcom/cmcm/dmc/sdk/g/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->f:Lcom/cmcm/dmc/sdk/g/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->f:Lcom/cmcm/dmc/sdk/g/g;

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/g/g;->a(Lcom/cmcm/dmc/sdk/g/h;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->n:Lcom/cmcm/dmc/sdk/g/i;

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/g/i;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->a()Lcom/cmcm/dmc/sdk/g/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/g/f;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->f:Lcom/cmcm/dmc/sdk/g/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/g/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "network changed ..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "received"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j;->e:Landroid/os/Handler;

    new-instance v1, Lcom/cmcm/dmc/sdk/g/j$2;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/g/j$2;-><init>(Lcom/cmcm/dmc/sdk/g/j;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
