.class public Lcom/cmplay/base/util/c/d;
.super Ljava/lang/Object;
.source "ImageDownloadManager.java"


# static fields
.field private static b:Lcom/cmplay/base/util/c/d;


# instance fields
.field public a:Landroid/content/Context;

.field private c:Lcom/cmplay/base/util/c/a;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/base/util/c/d;->b:Lcom/cmplay/base/util/c/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/base/util/c/d;->d:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/base/util/c/d;->e:Z

    .line 22
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/c/d;->b(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/base/util/c/d;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmplay/base/util/c/d;->b:Lcom/cmplay/base/util/c/d;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/cmplay/base/util/c/d;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/base/util/c/d;->b:Lcom/cmplay/base/util/c/d;

    .line 29
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/c/d;->b:Lcom/cmplay/base/util/c/d;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/base/util/c/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V
    .locals 3

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->c:Lcom/cmplay/base/util/c/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/cmplay/base/util/c/d$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/cmplay/base/util/c/d$1;-><init>(Lcom/cmplay/base/util/c/d;Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/cmplay/base/util/c/a;->a(Ljava/lang/String;ZLcom/cmplay/base/util/c/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/ArrayList;Lcom/cmplay/base/util/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmplay/base/util/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    invoke-virtual {p0, v0, p2}, Lcom/cmplay/base/util/c/d;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34
    iput-object p1, p0, Lcom/cmplay/base/util/c/d;->a:Landroid/content/Context;

    .line 36
    iget-boolean v0, p0, Lcom/cmplay/base/util/c/d;->e:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/c/a;->a(Landroid/content/Context;)Lcom/cmplay/base/util/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/c/d;->c:Lcom/cmplay/base/util/c/a;

    .line 40
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/c/d;->d:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->c:Lcom/cmplay/base/util/c/a;

    invoke-virtual {v0, v2}, Lcom/cmplay/base/util/c/a;->a(Z)V

    .line 44
    iget-object v0, p0, Lcom/cmplay/base/util/c/d;->c:Lcom/cmplay/base/util/c/a;

    iget-object v1, p0, Lcom/cmplay/base/util/c/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/c/a;->a(Ljava/lang/String;)V

    .line 47
    :cond_0
    iput-boolean v2, p0, Lcom/cmplay/base/util/c/d;->e:Z

    .line 48
    return-void
.end method
