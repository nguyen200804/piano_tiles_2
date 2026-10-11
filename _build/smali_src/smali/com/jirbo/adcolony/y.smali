.class abstract Lcom/jirbo/adcolony/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/y;->b:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    .line 17
    iget v0, p0, Lcom/jirbo/adcolony/y;->b:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/y;->a(C)V

    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method abstract a(C)V
.end method

.method a(D)V
    .locals 13

    .prologue
    const-wide/16 v10, 0xa

    const/16 v8, 0x30

    .line 43
    iget-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/y;->a()V

    .line 44
    :cond_0
    const/4 v1, 0x4

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_1
    const-string v0, "0.0"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    .line 86
    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    const-wide/16 v2, 0x0

    cmpg-double v0, p1, v2

    if-gez v0, :cond_4

    .line 54
    neg-double p1, p1

    .line 55
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 64
    :cond_4
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    .line 65
    long-to-double v4, v2

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 66
    div-long v6, v4, v2

    invoke-virtual {p0, v6, v7}, Lcom/jirbo/adcolony/y;->a(J)V

    .line 67
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 68
    rem-long/2addr v4, v2

    .line 69
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 71
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 73
    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_5
    mul-long v0, v4, v10

    :goto_2
    cmp-long v6, v0, v2

    if-gez v6, :cond_6

    .line 80
    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 78
    mul-long/2addr v0, v10

    goto :goto_2

    .line 82
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/jirbo/adcolony/y;->a(J)V

    goto :goto_0
.end method

.method a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/y;->a()V

    .line 92
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 94
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 110
    :goto_0
    return-void

    .line 96
    :cond_1
    neg-long v0, p1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 99
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    .line 103
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 104
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/y;->a(J)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/y;->b(J)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 38
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/y;->b(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->b(C)V

    return-void
.end method

.method b(C)V
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/y;->a()V

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/y;->a(C)V

    .line 25
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/y;->a:Z

    .line 26
    :cond_1
    return-void
.end method

.method b(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0xa

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    div-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/y;->b(J)V

    .line 116
    const-wide/16 v0, 0x30

    rem-long v2, p1, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->a(C)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/y;->a(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->b(C)V

    return-void
.end method

.method c(C)V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/y;->b(C)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/y;->b(C)V

    return-void
.end method
