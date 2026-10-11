.class public Lcom/example/luckywheel/b/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/b/l$a;
    }
.end annotation


# static fields
.field private static c:Lcom/example/luckywheel/b/l;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/b/l;J)J
    .locals 1

    iput-wide p1, p0, Lcom/example/luckywheel/b/l;->d:J

    return-wide p1
.end method

.method public static a()Lcom/example/luckywheel/b/l;
    .locals 2

    sget-object v0, Lcom/example/luckywheel/b/l;->c:Lcom/example/luckywheel/b/l;

    if-nez v0, :cond_1

    const-class v1, Lcom/example/luckywheel/b/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/b/l;->c:Lcom/example/luckywheel/b/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/b/l;

    invoke-direct {v0}, Lcom/example/luckywheel/b/l;-><init>()V

    sput-object v0, Lcom/example/luckywheel/b/l;->c:Lcom/example/luckywheel/b/l;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/example/luckywheel/b/l;->c:Lcom/example/luckywheel/b/l;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/example/luckywheel/b/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/l;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/example/luckywheel/b/l;Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/example/luckywheel/b/l;->b(Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V

    return-void
.end method

.method static synthetic b(Lcom/example/luckywheel/b/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/b/l;->b:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V
    .locals 2

    new-instance v0, Lcom/example/luckywheel/b/i;

    new-instance v1, Lcom/example/luckywheel/b/r;

    invoke-direct {v1, p0, p2}, Lcom/example/luckywheel/b/r;-><init>(Lcom/example/luckywheel/b/l;Lcom/example/luckywheel/b/l$a;)V

    invoke-direct {v0, p1, v1}, Lcom/example/luckywheel/b/i;-><init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/b/i;->f()V

    return-void
.end method

.method private e()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/example/luckywheel/b/l;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V
    .locals 2

    new-instance v0, Lcom/example/luckywheel/b/m;

    new-instance v1, Lcom/example/luckywheel/b/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/example/luckywheel/b/q;-><init>(Lcom/example/luckywheel/b/l;Landroid/content/Context;Lcom/example/luckywheel/b/l$a;)V

    invoke-direct {v0, p1, v1}, Lcom/example/luckywheel/b/m;-><init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/b/m;->f()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/l;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/b/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/example/luckywheel/b/j;->a()Lcom/example/luckywheel/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/example/luckywheel/b/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/l;->b:Ljava/lang/String;

    return-object v0
.end method
