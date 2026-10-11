.class public Lcom/example/luckywheel/ad/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(JJ)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/32 v2, 0x927c0

    sub-long v2, p0, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
