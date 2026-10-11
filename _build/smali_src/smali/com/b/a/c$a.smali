.class public Lcom/b/a/c$a;
.super Lcom/b/a/c$f;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lb/a/k;

.field private b:Lb/a/b;


# direct methods
.method public constructor <init>(Lb/a/b;Lb/a/k;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/b/a/c$f;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/b/a/c$a;->b:Lb/a/b;

    .line 130
    iput-object p2, p0, Lcom/b/a/c$a;->a:Lb/a/k;

    .line 131
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/b/a/c$a;->a:Lb/a/k;

    invoke-virtual {v0}, Lb/a/k;->b()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    iget-object v2, p0, Lcom/b/a/c$a;->a:Lb/a/k;

    invoke-virtual {v2}, Lb/a/k;->a()J

    move-result-wide v2

    .line 137
    iget-object v4, p0, Lcom/b/a/c$a;->b:Lb/a/b;

    iget-wide v4, v4, Lb/a/b;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
