.class public Lcom/mnt/impl/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/mnt/impl/a/g;


# instance fields
.field public a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/mnt/MntBuild;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/mnt/impl/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lcom/mnt/impl/a/g;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/mnt/impl/a/g;->d:Lcom/mnt/impl/a/g;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/mnt/impl/a/g;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/mnt/impl/a/g;->d:Lcom/mnt/impl/a/g;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/mnt/impl/a/g;

    invoke-direct {v0}, Lcom/mnt/impl/a/g;-><init>()V

    sput-object v0, Lcom/mnt/impl/a/g;->d:Lcom/mnt/impl/a/g;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/mnt/impl/a/g;->d:Lcom/mnt/impl/a/g;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final b()Lcom/mnt/MntBuild;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mnt/impl/a/g;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/mnt/impl/a/g;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/MntBuild;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
