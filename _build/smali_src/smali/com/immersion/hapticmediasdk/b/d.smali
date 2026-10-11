.class public Lcom/immersion/hapticmediasdk/b/d;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x58

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/immersion/hapticmediasdk/b/d;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/b/d;->b:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/d;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/b/d;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/b/d;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/b/d;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/b/d;->b:I

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :pswitch_1
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    :goto_0
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/immersion/hapticmediasdk/b/d;->e:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method


# virtual methods
.method public declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/b/d;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget v1, Lcom/immersion/hapticmediasdk/b/d;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/b/d;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b/d;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b/d;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/b/d;->d:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x58

    sput v1, Lcom/immersion/hapticmediasdk/b/d;->a:I

    const/16 v1, 0x58

    sput v1, Lcom/immersion/hapticmediasdk/b/d;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
