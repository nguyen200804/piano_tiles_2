.class public Lcom/immersion/content/EndpointWarp;
.super Ljava/lang/Object;


# static fields
.field public static b:I = 0x27

.field public static c:I = 0x0

.field public static d:I = 0x2

.field public static e:I = 0x1


# instance fields
.field a:J


# direct methods
.method public constructor <init>(Landroid/content/Context;[BI)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/content/EndpointWarp;->b:I

    sget v1, Lcom/immersion/content/EndpointWarp;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->b:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->d:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->c:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/content/EndpointWarp;->createWarp(Landroid/content/Context;[BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    return-void

    nop

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

.method public static a()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native create(Landroid/content/Context;BBBBISB[BB)J
.end method

.method private native createWarp(Landroid/content/Context;[BI)J
.end method

.method private native disposeWarp(J)V
.end method

.method public static f()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "ImmEndpointWarpJ"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "EndpointWarp"

    const-string v2, "Unable to load libImmEndpointWarpJ.so.Please make sure this file is in the libs/armeabi folder."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sget v2, Lcom/immersion/content/EndpointWarp;->e:I

    add-int/2addr v0, v2

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v2

    mul-int/2addr v0, v2

    sget v2, Lcom/immersion/content/EndpointWarp;->d:I

    rem-int/2addr v0, v2

    sget v2, Lcom/immersion/content/EndpointWarp;->c:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->c:I

    :cond_1
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "java.vm.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Java HotSpot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private native flushWarp(J)V
.end method

.method private native getWarpCurrentPosition(J)J
.end method

.method private native startWarp(J)V
.end method

.method private native stopWarp(J)V
.end method

.method private native updateWarp(J[BIJJ)V
.end method


# virtual methods
.method public a([BIJJ)V
    .locals 11

    :try_start_0
    iget-wide v2, p0, Lcom/immersion/content/EndpointWarp;->a:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/immersion/content/EndpointWarp;->updateWarp(J[BIJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/content/EndpointWarp;->b:I

    sget v1, Lcom/immersion/content/EndpointWarp;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->b:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/EndpointWarp;->c:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->b:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/EndpointWarp;->c:I

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public c()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sget v2, Lcom/immersion/content/EndpointWarp;->b:I

    sget v3, Lcom/immersion/content/EndpointWarp;->e:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/content/EndpointWarp;->d:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    const/16 v2, 0x1b

    sput v2, Lcom/immersion/content/EndpointWarp;->b:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v2

    sput v2, Lcom/immersion/content/EndpointWarp;->c:I

    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->startWarp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 4

    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v2

    sget v3, Lcom/immersion/content/EndpointWarp;->e:I

    add-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/content/EndpointWarp;->d:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/content/EndpointWarp;->c:I

    if-eq v2, v3, :cond_0

    const/16 v2, 0xc

    sput v2, Lcom/immersion/content/EndpointWarp;->b:I

    invoke-static {}, Lcom/immersion/content/EndpointWarp;->a()I

    move-result v2

    sput v2, Lcom/immersion/content/EndpointWarp;->c:I

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->stopWarp(J)V

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, -0x1

    :goto_0
    :try_start_0
    new-array v1, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x52

    sput v0, Lcom/immersion/content/EndpointWarp;->b:I

    :try_start_1
    iget-wide v0, p0, Lcom/immersion/content/EndpointWarp;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/EndpointWarp;->disposeWarp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    throw v0
.end method
