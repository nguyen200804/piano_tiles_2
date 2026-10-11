.class Lcom/b/a/a/c$a;
.super Ljava/lang/Object;
.source "GameState.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/b/a/a/c$a;->a:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/c$a;->c:J

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/b/a/a/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/b/a/a/c$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/b/a/a/c$a;->c:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/a/c$a;->b:J

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/a/c$a;->c:J

    .line 107
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/b/a/a/c$a;->a()V

    .line 111
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/b/a/a/c$a;->b()V

    .line 115
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/b/a/a/c$a;->b:J

    return-wide v0
.end method
