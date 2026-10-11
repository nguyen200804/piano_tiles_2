.class final Lcom/mnt/impl/j/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/j/f$a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/j/d;


# direct methods
.method constructor <init>(Lcom/mnt/impl/j/d;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mnt/impl/j/e;->a:Lcom/mnt/impl/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 134
    iget-object v0, p0, Lcom/mnt/impl/j/e;->a:Lcom/mnt/impl/j/d;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->a(Lcom/mnt/impl/j/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/b/h;->n(Landroid/content/Context;)J

    move-result-wide v0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1b77400

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mnt/impl/j/e;->a:Lcom/mnt/impl/j/d;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->a(Lcom/mnt/impl/j/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/mnt/impl/j/d;->b()Lcom/mnt/impl/j/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/j/e;->a:Lcom/mnt/impl/j/d;

    invoke-static {v2}, Lcom/mnt/impl/j/d;->a(Lcom/mnt/impl/j/d;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/mnt/impl/j/a;

    invoke-direct {v3, v0}, Lcom/mnt/impl/j/a;-><init>(Ljava/lang/String;)V

    .line 1026
    iput v5, v3, Lcom/mnt/impl/j/a;->c:I

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v4, Lcom/mnt/impl/e;->iH:Ljava/lang/String;

    aput-object v4, v0, v6

    sget-object v4, Lcom/mnt/impl/e;->iI:Ljava/lang/String;

    aput-object v4, v0, v5

    .line 2021
    iput-object v0, v3, Lcom/mnt/impl/j/a;->b:[Ljava/lang/String;

    .line 2031
    iput-boolean v5, v3, Lcom/mnt/impl/j/a;->d:Z

    .line 2047
    new-instance v0, Lcom/mnt/impl/j/d$b;

    invoke-direct {v0, v1, v6}, Lcom/mnt/impl/j/d$b;-><init>(Lcom/mnt/impl/j/d;B)V

    .line 2048
    new-instance v1, Lcom/mnt/impl/j/d$a;

    sget-object v4, Lcom/mnt/impl/j/c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mnt/impl/j/c;->a(Landroid/content/Context;Lcom/mnt/impl/j/a;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/mnt/impl/j/d$a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 2049
    new-instance v2, Lcom/mnt/impl/f/k;

    invoke-direct {v2, v1, v0}, Lcom/mnt/impl/f/k;-><init>(Lcom/mnt/impl/f/f;Lcom/mnt/impl/f/a;)V

    .line 2050
    invoke-virtual {v2}, Lcom/mnt/impl/f/k;->c()V

    .line 144
    :cond_0
    return-void
.end method
