.class public Lcom/duapps/ad/c/a/b;
.super Ljava/lang/Object;
.source "PolicyConfig.java"


# static fields
.field private static a:Lcom/duapps/ad/c/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/duapps/ad/c/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/c/a/b;->c:Landroid/util/SparseArray;

    .line 12
    iput-object p1, p0, Lcom/duapps/ad/c/a/b;->b:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/c/a/b;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/duapps/ad/c/a/b;->a:Lcom/duapps/ad/c/a/b;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/duapps/ad/c/a/b;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/duapps/ad/c/a/b;->a:Lcom/duapps/ad/c/a/b;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/duapps/ad/c/a/b;

    invoke-direct {v0, p0}, Lcom/duapps/ad/c/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/c/a/b;->a:Lcom/duapps/ad/c/a/b;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/duapps/ad/c/a/b;->a:Lcom/duapps/ad/c/a/b;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(IZZ)Lcom/duapps/ad/c/a/c;
    .locals 3

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    iget-object v1, p0, Lcom/duapps/ad/c/a/b;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/c/a/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 35
    if-ltz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/duapps/ad/c/a/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/c/a/c;

    monitor-exit v1

    .line 44
    :goto_0
    return-object v0

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    iget-object v0, p0, Lcom/duapps/ad/c/a/b;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/duapps/ad/c/a/c;->a(Landroid/content/Context;IZZ)Lcom/duapps/ad/c/a/c;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/duapps/ad/c/a/b;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 42
    :try_start_1
    iget-object v2, p0, Lcom/duapps/ad/c/a/b;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 38
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
