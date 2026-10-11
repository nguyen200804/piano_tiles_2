.class public Lb/a/k;
.super Ljava/lang/Object;
.source "Defcon.java"


# instance fields
.field private a:I

.field private final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lb/a/k;->a:I

    .line 29
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lb/a/k;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lb/a/k;->a:I

    packed-switch v0, :pswitch_data_0

    .line 68
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 61
    :pswitch_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    .line 63
    :pswitch_1
    const-wide/32 v0, 0x1b77400

    goto :goto_0

    .line 65
    :pswitch_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Lb/a/ak;
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    new-instance v2, Lb/a/ak;

    invoke-direct {v2}, Lb/a/ak;-><init>()V

    .line 50
    invoke-static {p1}, Lb/a/db;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/ak;->a(Ljava/lang/String;)Lb/a/ak;

    .line 51
    invoke-virtual {v2, v0, v1}, Lb/a/ak;->a(J)Lb/a/ak;

    .line 52
    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lb/a/ak;->b(J)Lb/a/ak;

    .line 53
    invoke-virtual {v2, v4, v5}, Lb/a/ak;->c(J)Lb/a/ak;

    .line 55
    return-object v2
.end method

.method public a(Landroid/content/Context;Lb/a/am;)Lb/a/am;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 32
    if-nez p2, :cond_1

    move-object p2, v0

    .line 44
    :cond_0
    :goto_0
    return-object p2

    .line 34
    :cond_1
    iget v1, p0, Lb/a/k;->a:I

    if-ne v1, v3, :cond_2

    .line 35
    invoke-virtual {p2, v0}, Lb/a/am;->a(Ljava/util/List;)Lb/a/am;

    goto :goto_0

    .line 36
    :cond_2
    iget v1, p0, Lb/a/k;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 37
    new-array v1, v3, [Lb/a/ak;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lb/a/k;->a(Landroid/content/Context;)Lb/a/ak;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lb/a/am;->b(Ljava/util/List;)Lb/a/am;

    .line 38
    invoke-virtual {p2, v0}, Lb/a/am;->a(Ljava/util/List;)Lb/a/am;

    goto :goto_0

    .line 39
    :cond_3
    iget v1, p0, Lb/a/k;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 40
    invoke-virtual {p2, v0}, Lb/a/am;->b(Ljava/util/List;)Lb/a/am;

    .line 41
    invoke-virtual {p2, v0}, Lb/a/am;->a(Ljava/util/List;)Lb/a/am;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 77
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 78
    iput p1, p0, Lb/a/k;->a:I

    .line 80
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lb/a/k;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
