.class public Lcom/duapps/ad/j;
.super Ljava/lang/Object;
.source "PullRequestController.java"


# static fields
.field private static c:Lcom/duapps/ad/j;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/duapps/ad/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/j;->a:Landroid/util/SparseArray;

    .line 15
    iput-object p1, p0, Lcom/duapps/ad/j;->b:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/j;
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/duapps/ad/j;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/duapps/ad/j;->c:Lcom/duapps/ad/j;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/duapps/ad/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/j;->c:Lcom/duapps/ad/j;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    sget-object v0, Lcom/duapps/ad/j;->c:Lcom/duapps/ad/j;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(IILjava/lang/String;)Lcom/duapps/ad/g;
    .locals 3

    .prologue
    .line 35
    .line 36
    iget-object v1, p0, Lcom/duapps/ad/j;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 38
    if-ltz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/duapps/ad/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/g;

    monitor-exit v1

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/duapps/ad/k;

    iget-object v2, p0, Lcom/duapps/ad/j;->b:Landroid/content/Context;

    invoke-direct {v0, v2, p1, p2, p3}, Lcom/duapps/ad/k;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/duapps/ad/j;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    monitor-exit v1

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
