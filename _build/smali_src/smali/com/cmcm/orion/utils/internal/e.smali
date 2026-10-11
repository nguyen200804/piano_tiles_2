.class public final Lcom/cmcm/orion/utils/internal/e;
.super Ljava/lang/Object;
.source "TimeRangeHelper.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/cmcm/orion/utils/internal/e;->a:J

    .line 19
    iput-wide p3, p0, Lcom/cmcm/orion/utils/internal/e;->b:J

    .line 20
    iput-boolean p5, p0, Lcom/cmcm/orion/utils/internal/e;->c:Z

    .line 21
    return-void
.end method

.method private c()J
    .locals 4

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/cmcm/orion/utils/internal/e;->c:Z

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    :goto_0
    return-wide v0

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 56
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 57
    const/16 v3, 0xe

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 58
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 24
    .line 25
    iget-wide v2, p0, Lcom/cmcm/orion/utils/internal/e;->a:J

    iget-wide v4, p0, Lcom/cmcm/orion/utils/internal/e;->b:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/e;->c()J

    move-result-wide v2

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "after:st:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cmcm/orion/utils/internal/e;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";et:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/cmcm/orion/utils/internal/e;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";now:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    iget-wide v4, p0, Lcom/cmcm/orion/utils/internal/e;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/cmcm/orion/utils/internal/e;->b:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 31
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/cmcm/orion/utils/internal/e;->a:J

    iget-wide v2, p0, Lcom/cmcm/orion/utils/internal/e;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/e;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cmcm/orion/utils/internal/e;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0
.end method
