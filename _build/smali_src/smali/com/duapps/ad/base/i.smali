.class public Lcom/duapps/ad/base/i;
.super Ljava/lang/Object;
.source "ParseExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/base/i$a;,
        Lcom/duapps/ad/base/i$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lcom/duapps/ad/base/i;

.field private static final d:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/duapps/ad/base/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/i;->a:Ljava/lang/String;

    .line 31
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string v0, "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA) Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18"

    sput-object v0, Lcom/duapps/ad/base/i;->b:Ljava/lang/String;

    .line 49
    :goto_0
    new-instance v0, Lcom/duapps/ad/base/i$1;

    invoke-direct {v0}, Lcom/duapps/ad/base/i$1;-><init>()V

    sput-object v0, Lcom/duapps/ad/base/i;->d:Ljava/util/concurrent/ThreadFactory;

    return-void

    .line 35
    :cond_0
    sput-object v0, Lcom/duapps/ad/base/i;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v2, 0x5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/duapps/ad/base/i;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/i;->f:Ljava/util/HashSet;

    .line 70
    iput-object p1, p0, Lcom/duapps/ad/base/i;->h:Landroid/content/Context;

    .line 71
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/duapps/ad/base/i;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    sget-object v8, Lcom/duapps/ad/base/i;->d:Ljava/util/concurrent/ThreadFactory;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/duapps/ad/base/i;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/base/i;
    .locals 3

    .prologue
    .line 40
    const-class v1, Lcom/duapps/ad/base/i;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/i;->c:Lcom/duapps/ad/base/i;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/duapps/ad/base/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/i;->c:Lcom/duapps/ad/base/i;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/duapps/ad/base/i;->c:Lcom/duapps/ad/base/i;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/i;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/i;->f:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/duapps/ad/base/i;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/duapps/ad/base/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already Running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;Lcom/duapps/ad/base/i$a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, p1, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/duapps/ad/stats/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/duapps/ad/base/i;->f:Ljava/util/HashSet;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/i;->f:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    sget-object v2, Lcom/duapps/ad/base/i;->a:Ljava/lang/String;

    const-string v3, "Task already Running."

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    monitor-exit v1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    new-instance v1, Lcom/duapps/ad/base/i$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/duapps/ad/base/i$b;-><init>(Lcom/duapps/ad/base/i;Lcom/duapps/ad/entity/AdData;Ljava/lang/String;Lcom/duapps/ad/base/i$a;)V

    .line 107
    iget-object v2, p0, Lcom/duapps/ad/base/i;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    sget-object v1, Lcom/duapps/ad/base/i;->a:Ljava/lang/String;

    const-string v2, "Task already in Queue"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/base/i;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method
