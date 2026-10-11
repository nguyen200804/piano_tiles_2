.class public Lcom/b/a/c$d;
.super Lcom/b/a/c$f;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lb/a/b;


# direct methods
.method public constructor <init>(Lb/a/b;J)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/b/a/c$f;-><init>()V

    .line 72
    const-wide/32 v0, 0x15f90

    iput-wide v0, p0, Lcom/b/a/c$d;->a:J

    .line 78
    iput-object p1, p0, Lcom/b/a/c$d;->c:Lb/a/b;

    .line 79
    iget-wide v0, p0, Lcom/b/a/c$d;->a:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    iget-wide p2, p0, Lcom/b/a/c$d;->a:J

    :cond_0
    iput-wide p2, p0, Lcom/b/a/c$d;->b:J

    .line 80
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/a/c$d;->c:Lb/a/b;

    iget-wide v2, v2, Lb/a/b;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/b/a/c$d;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
