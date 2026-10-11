.class public Lcom/example/luckywheel/d/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/example/luckywheel/d/d;


# instance fields
.field private a:Lcom/example/luckywheel/d/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/example/luckywheel/d/f;

    const-string v1, "lucky_wheel_config"

    invoke-direct {v0, v1, p1}, Lcom/example/luckywheel/d/f;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/luckywheel/d/d;->a:Lcom/example/luckywheel/d/f;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/example/luckywheel/d/d;
    .locals 2

    const-class v1, Lcom/example/luckywheel/d/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/d/d;->b:Lcom/example/luckywheel/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/d/d;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/example/luckywheel/d/d;->b:Lcom/example/luckywheel/d/d;

    :cond_0
    sget-object v0, Lcom/example/luckywheel/d/d;->b:Lcom/example/luckywheel/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    const-string v0, "watch_ad_last_time_length"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/example/luckywheel/d/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/d/d;->a:Lcom/example/luckywheel/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/example/luckywheel/d/f;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    const-string v0, "watch_ad_last_time_length"

    invoke-virtual {p0, v0, p1}, Lcom/example/luckywheel/d/d;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public b()I
    .locals 2

    const-string v0, "watch_ad_last_score_star"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/luckywheel/d/d;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    const-string v0, "watch_ad_last_score_star"

    invoke-virtual {p0, v0, p1}, Lcom/example/luckywheel/d/d;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/d/d;->a:Lcom/example/luckywheel/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/example/luckywheel/d/f;->b(Ljava/lang/String;I)V

    return-void
.end method
