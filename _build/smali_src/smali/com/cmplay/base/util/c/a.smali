.class public Lcom/cmplay/base/util/c/a;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/c/a$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Lcom/cmplay/base/util/c/e;

.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static g:Lcom/cmplay/base/util/c/a;


# instance fields
.field public a:Landroid/content/Context;

.field private f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/c/a;->a:Landroid/content/Context;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/c/a;->b:Ljava/util/HashSet;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/c/a;->c:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/cmplay/base/util/c/e;

    sget-object v1, Lcom/cmplay/base/util/c/a;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/c/e;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/cmplay/base/util/c/a;->d:Lcom/cmplay/base/util/c/e;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/base/util/c/a;->f:Landroid/os/Handler;

    .line 71
    invoke-static {}, Lcom/cmplay/base/util/c/a;->a()V

    .line 73
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/c/a;->b(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/cmplay/base/util/c/a;->a(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmplay/base/util/c/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmplay/base/util/c/a;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/base/util/c/a;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/cmplay/base/util/c/a;->g:Lcom/cmplay/base/util/c/a;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcom/cmplay/base/util/c/a;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/cmplay/base/util/c/a;->g:Lcom/cmplay/base/util/c/a;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/cmplay/base/util/c/a;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/base/util/c/a;->g:Lcom/cmplay/base/util/c/a;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/cmplay/base/util/c/a;->g:Lcom/cmplay/base/util/c/a;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/cmplay/base/util/c/a;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/c/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/c/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/c/a;->e:Ljava/util/concurrent/ExecutorService;

    .line 112
    :cond_1
    return-void
.end method

.method static synthetic b()Lcom/cmplay/base/util/c/e;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/cmplay/base/util/c/a;->d:Lcom/cmplay/base/util/c/e;

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/cmplay/base/util/c/a;->b:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/cmplay/base/util/c/a;->d:Lcom/cmplay/base/util/c/e;

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/c/e;->a(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/cmplay/base/util/c/a$a;)V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    sget-object v0, Lcom/cmplay/base/util/c/a;->d:Lcom/cmplay/base/util/c/e;

    iget-object v1, p0, Lcom/cmplay/base/util/c/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/cmplay/base/util/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    const-string v1, "AsyncImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u51fabitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz v0, :cond_1

    .line 135
    if-eqz p3, :cond_0

    .line 136
    invoke-interface {p3, v0, p1}, Lcom/cmplay/base/util/c/a$a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/cmplay/base/util/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "###\u8be5\u56fe\u7247\u6b63\u5728\u4e0b\u8f7d\uff0c\u4e0d\u80fd\u91cd\u590d\u4e0b\u8f7d\uff01"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 145
    :cond_2
    :try_start_1
    sget-object v0, Lcom/cmplay/base/util/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.0.3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmplay/base/util/c/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/cmplay/base/util/c/a;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 150
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 151
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 152
    long-to-int v1, v2

    sub-int/2addr v0, v1

    .line 153
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 155
    sget-object v0, Lcom/cmplay/base/util/c/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/cmplay/base/util/c/a;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cmplay/base/util/c/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cmplay/base/util/c/a$1;-><init>(Lcom/cmplay/base/util/c/a;Ljava/lang/String;ZLcom/cmplay/base/util/c/a$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/cmplay/base/util/c/a;->d:Lcom/cmplay/base/util/c/e;

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/c/e;->a(Z)V

    .line 95
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/cmplay/base/util/c/a;->d:Lcom/cmplay/base/util/c/e;

    invoke-virtual {v0, p1}, Lcom/cmplay/base/util/c/e;->a(Landroid/content/Context;)V

    .line 87
    return-void
.end method
