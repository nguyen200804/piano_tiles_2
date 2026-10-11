.class public Lcom/immersion/hapticmediasdk/models/a;
.super Ljava/lang/Exception;


# static fields
.field public static a:I = 0x18

.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2


# instance fields
.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/models/a;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->b:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4a

    sput v0, Lcom/immersion/hapticmediasdk/models/a;->a:I

    const/16 v0, 0x62

    sput v0, Lcom/immersion/hapticmediasdk/models/a;->b:I

    :cond_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/models/a;->e:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static c()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/models/a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/a;->b()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/models/a;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/a;->c()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/models/a;->c()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/models/a;->b:I

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/models/a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method
