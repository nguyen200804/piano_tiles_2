.class public Lcom/duapps/ad/c/a/e;
.super Ljava/lang/Object;
.source "TimerPuller.java"


# static fields
.field private static b:Lcom/duapps/ad/c/a/e;


# instance fields
.field a:Lcom/duapps/ad/base/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/duapps/ad/stats/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/duapps/ad/c/a/e;->b:Lcom/duapps/ad/c/a/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/duapps/ad/c/a/e$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/c/a/e$1;-><init>(Lcom/duapps/ad/c/a/e;)V

    iput-object v0, p0, Lcom/duapps/ad/c/a/e;->a:Lcom/duapps/ad/base/s;

    .line 28
    iput-object p1, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/duapps/ad/stats/d;

    invoke-direct {v0, p1}, Lcom/duapps/ad/stats/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/c/a/e;->e:Lcom/duapps/ad/stats/d;

    .line 30
    return-void
.end method

.method private a(JJ)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 64
    sub-long/2addr v2, p1

    .line 66
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 67
    const-wide/16 v0, -0x1

    .line 73
    :cond_0
    :goto_0
    return-wide v0

    .line 70
    :cond_1
    cmp-long v4, v2, p3

    if-gtz v4, :cond_0

    .line 71
    sub-long v0, p3, v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/c/a/e;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/duapps/ad/c/a/e;->b:Lcom/duapps/ad/c/a/e;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/duapps/ad/c/a/e;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/duapps/ad/c/a/e;->b:Lcom/duapps/ad/c/a/e;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/duapps/ad/c/a/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/c/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/c/a/e;->b:Lcom/duapps/ad/c/a/e;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/duapps/ad/c/a/e;->b:Lcom/duapps/ad/c/a/e;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/duapps/ad/c/a/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "TimerPuller"

    const-string v1, "PullTcppNativeWall ... "

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->p(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/p;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v1

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/c/a/e;->a:Lcom/duapps/ad/base/s;

    iget-object v4, p0, Lcom/duapps/ad/c/a/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/duapps/ad/base/n;->a(IILcom/duapps/ad/base/s;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/c/a/e;)Lcom/duapps/ad/stats/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->e:Lcom/duapps/ad/stats/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 44
    iput-object p1, p0, Lcom/duapps/ad/c/a/e;->d:Ljava/lang/String;

    .line 45
    const-string v0, "TimerPuller"

    const-string v1, "Pull TriggerPreParseAd ... "

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->n(Landroid/content/Context;)J

    move-result-wide v0

    .line 48
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/duapps/ad/base/m;->o(Landroid/content/Context;)J

    move-result-wide v2

    .line 52
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/duapps/ad/c/a/e;->a(JJ)J

    move-result-wide v0

    .line 53
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->p(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_2
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/duapps/ad/c/a/e;->a()V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 92
    iput-object p2, p0, Lcom/duapps/ad/c/a/e;->d:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz p1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duapps/ad/base/p;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 103
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 104
    const/16 v0, -0x4e1f

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v1

    .line 107
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/c/a/e;->a:Lcom/duapps/ad/base/s;

    iget-object v4, p0, Lcom/duapps/ad/c/a/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/duapps/ad/base/n;->a(IILcom/duapps/ad/base/s;Ljava/lang/String;)V

    .line 108
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/c/a/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->A(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method
