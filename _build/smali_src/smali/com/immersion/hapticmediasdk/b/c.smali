.class public Lcom/immersion/hapticmediasdk/b/c;
.super Ljava/lang/Object;


# static fields
.field public static c:I = 0x59

.field public static d:I = 0x1

.field public static e:I = 0x2

.field public static f:I


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/b/c;->c:I

    sget v1, Lcom/immersion/hapticmediasdk/b/c;->d:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/c;->e:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xa

    sput v0, Lcom/immersion/hapticmediasdk/b/c;->c:I

    const/16 v0, 0x57

    sput v0, Lcom/immersion/hapticmediasdk/b/c;->d:I

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x4b

    sput v0, Lcom/immersion/hapticmediasdk/b/c;->c:I

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/b/c;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    throw v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/b/c;->c:I

    sget v1, Lcom/immersion/hapticmediasdk/b/c;->d:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/c;->c:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/c;->e:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/c;->f:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x51

    sput v0, Lcom/immersion/hapticmediasdk/b/c;->c:I

    const/16 v0, 0x1f

    sput v0, Lcom/immersion/hapticmediasdk/b/c;->f:I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/b/c;->b:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
