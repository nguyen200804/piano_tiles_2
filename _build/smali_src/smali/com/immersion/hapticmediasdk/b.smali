.class public Lcom/immersion/hapticmediasdk/b;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x13

.field public static b:I = 0x1

.field public static c:I = 0x2


# direct methods
.method public static a(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/a;
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->f()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Lcom/immersion/hapticmediasdk/c;

    invoke-direct {v1, p1}, Lcom/immersion/hapticmediasdk/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/a;->b()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "HapticContentSDKFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/immersion/hapticmediasdk/b;->a:I

    sget v5, Lcom/immersion/hapticmediasdk/b;->b:I

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    sget v5, Lcom/immersion/hapticmediasdk/b;->c:I

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_0

    const/16 v4, 0x2a

    sput v4, Lcom/immersion/hapticmediasdk/b;->a:I

    const/16 v4, 0x5c

    sput v4, Lcom/immersion/hapticmediasdk/b;->b:I

    :pswitch_1
    const-string v4, "Failed to create Haptic Content SDK instance. error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "HapticContentSDKFactory"

    const-string v2, "Failed to create a Haptic Content SDK instance. invalid context: null"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    packed-switch p0, :pswitch_data_1

    const-string v1, "HapticContentSDKFactory"

    :pswitch_2
    packed-switch v2, :pswitch_data_2

    :goto_1
    packed-switch v2, :pswitch_data_3

    goto :goto_1

    :pswitch_3
    const-string v2, "Failed to create a Haptic Content SDK instance. Invalid mode"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "HapticContentSDKFactory"

    const-string v2, "Haptic Content SDK instance was created successfully"

    invoke-static {v0, v2}, Lcom/immersion/hapticmediasdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
