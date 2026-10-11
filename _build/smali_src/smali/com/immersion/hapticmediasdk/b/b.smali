.class public Lcom/immersion/hapticmediasdk/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x30

.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2


# direct methods
.method public static a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    return-void
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/b/b;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/b/b;->b()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/b;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x4b

    sput v0, Lcom/immersion/hapticmediasdk/b/b;->a:I

    const/16 v0, 0x9

    sput v0, Lcom/immersion/hapticmediasdk/b/b;->b:I

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/b/b;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/b/b;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/b/b;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    invoke-static {}, Lcom/immersion/hapticmediasdk/b/b;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/b/b;->a:I

    const/16 v0, 0x38

    sput v0, Lcom/immersion/hapticmediasdk/b/b;->b:I

    :pswitch_2
    return-void

    nop

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
