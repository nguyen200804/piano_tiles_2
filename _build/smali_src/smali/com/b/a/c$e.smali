.class public Lcom/b/a/c$e;
.super Lcom/b/a/c$f;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:J

.field private b:Lb/a/b;


# direct methods
.method public constructor <init>(Lb/a/b;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/b/a/c$f;-><init>()V

    .line 96
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/b/a/c$e;->a:J

    .line 100
    iput-object p1, p0, Lcom/b/a/c$e;->b:Lb/a/b;

    .line 101
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/b/a/c$e;->b:Lb/a/b;

    iget-wide v2, v2, Lb/a/b;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/b/a/c$e;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
