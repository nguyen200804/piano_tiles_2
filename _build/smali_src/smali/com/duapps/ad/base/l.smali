.class public Lcom/duapps/ad/base/l;
.super Ljava/lang/Object;
.source "PreParseCacheParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/base/l$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/duapps/ad/base/l;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/duapps/ad/base/i;

.field private e:Lcom/duapps/ad/base/i$a;

.field private f:Ljava/lang/Object;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/duapps/ad/base/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/duapps/ad/base/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/base/l$a;-><init>(Lcom/duapps/ad/base/l;Lcom/duapps/ad/base/l$1;)V

    iput-object v0, p0, Lcom/duapps/ad/base/l;->e:Lcom/duapps/ad/base/i$a;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/l;->f:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/i;->a(Landroid/content/Context;)Lcom/duapps/ad/base/i;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/l;->d:Lcom/duapps/ad/base/i;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/base/l;
    .locals 3

    .prologue
    .line 26
    const-class v1, Lcom/duapps/ad/base/l;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/l;->b:Lcom/duapps/ad/base/l;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/duapps/ad/base/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/l;->b:Lcom/duapps/ad/base/l;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lcom/duapps/ad/base/l;->b:Lcom/duapps/ad/base/l;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duapps/ad/base/j;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/duapps/ad/stats/i;->d(Ljava/lang/String;)Lcom/duapps/ad/base/j;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 8

    .prologue
    .line 71
    iget-object v1, p0, Lcom/duapps/ad/base/l;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    iget-wide v4, p0, Lcom/duapps/ad/base/l;->g:J

    const-wide/32 v6, 0xdbba00

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/stats/i;->a()V

    .line 76
    iget-object v0, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/stats/i;->b(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/duapps/ad/base/l;->g:J

    .line 80
    :cond_0
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/duapps/ad/entity/AdData;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 55
    iget-object v1, p0, Lcom/duapps/ad/base/l;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    iget-object v3, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/duapps/ad/base/l;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v3

    iget-object v4, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v4}, Lcom/duapps/ad/stats/i;->c(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 60
    :goto_0
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 63
    invoke-static {p1}, Lcom/duapps/ad/entity/AdData;->b(Lcom/duapps/ad/entity/AdData;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/duapps/ad/base/l;->d:Lcom/duapps/ad/base/i;

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/base/l;->e:Lcom/duapps/ad/base/i$a;

    invoke-virtual {v0, p1, v2, v3}, Lcom/duapps/ad/base/i;->a(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;Lcom/duapps/ad/base/i$a;)Z

    .line 67
    :cond_0
    monitor-exit v1

    .line 68
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 50
    invoke-virtual {p0, v0}, Lcom/duapps/ad/base/l;->a(Lcom/duapps/ad/entity/AdData;)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public b(Lcom/duapps/ad/entity/AdData;)Z
    .locals 2

    .prologue
    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/base/l;->d:Lcom/duapps/ad/base/i;

    iget-object v1, p1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/duapps/ad/base/i;->a(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
