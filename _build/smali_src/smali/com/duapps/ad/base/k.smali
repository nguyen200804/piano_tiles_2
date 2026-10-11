.class public Lcom/duapps/ad/base/k;
.super Ljava/lang/Object;
.source "PreClickParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/base/k$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static b:Lcom/duapps/ad/base/k;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/duapps/ad/base/i;

.field private e:Lcom/duapps/ad/base/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/duapps/ad/base/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/duapps/ad/base/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/base/k$a;-><init>(Lcom/duapps/ad/base/k;Lcom/duapps/ad/base/k$1;)V

    iput-object v0, p0, Lcom/duapps/ad/base/k;->e:Lcom/duapps/ad/base/i$a;

    .line 33
    iput-object p1, p0, Lcom/duapps/ad/base/k;->c:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/duapps/ad/base/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/i;->a(Landroid/content/Context;)Lcom/duapps/ad/base/i;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/k;->d:Lcom/duapps/ad/base/i;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/duapps/ad/base/k;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/base/k;
    .locals 3

    .prologue
    .line 19
    const-class v1, Lcom/duapps/ad/base/k;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/k;->b:Lcom/duapps/ad/base/k;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/duapps/ad/base/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/k;->b:Lcom/duapps/ad/base/k;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget-object v0, Lcom/duapps/ad/base/k;->b:Lcom/duapps/ad/base/k;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/duapps/ad/entity/AdData;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 65
    invoke-static {p0, v0}, Lcom/duapps/ad/entity/AdData;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/i;->b(Ljava/lang/String;)I

    move-result v0

    .line 67
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 74
    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duapps/ad/base/j;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/duapps/ad/base/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/duapps/ad/stats/i;->a(Ljava/lang/String;)Lcom/duapps/ad/base/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 39
    iget-object v2, p0, Lcom/duapps/ad/base/k;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/duapps/ad/base/k;->c:Landroid/content/Context;

    .line 40
    invoke-static {v2, v0}, Lcom/duapps/ad/entity/AdData;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/duapps/ad/base/k;->d:Lcom/duapps/ad/base/i;

    iget-object v3, v0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/base/k;->e:Lcom/duapps/ad/base/i$a;

    invoke-virtual {v2, v0, v3, v4}, Lcom/duapps/ad/base/i;->a(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;Lcom/duapps/ad/base/i$a;)Z

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
