.class public final Lb/a/cn;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lb/a/cr;


# static fields
.field private static c:Lb/a/cn;


# instance fields
.field private a:Lb/a/cr;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/cn;->b:Landroid/content/Context;

    .line 18
    new-instance v0, Lb/a/cm;

    iget-object v1, p0, Lb/a/cn;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/cm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/cn;->a:Lb/a/cr;

    .line 19
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lb/a/cn;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lb/a/cn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lb/a/cn;->c:Lb/a/cn;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Lb/a/cn;

    invoke-direct {v0, p0}, Lb/a/cn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lb/a/cn;->c:Lb/a/cn;

    .line 26
    :cond_0
    sget-object v0, Lb/a/cn;->c:Lb/a/cn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lb/a/cn;)Lb/a/cr;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lb/a/cn;->a:Lb/a/cr;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/cs;)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lb/a/cn$1;

    invoke-direct {v0, p0, p1}, Lb/a/cn$1;-><init>(Lb/a/cn;Lb/a/cs;)V

    invoke-static {v0}, Lcom/b/a/i;->b(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public a(Lcom/b/a/b/b;)V
    .locals 1

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/a/cn;->a:Lb/a/cr;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lb/a/cn;->a:Lb/a/cr;

    check-cast v0, Lcom/b/a/b/d;

    invoke-virtual {p1, v0}, Lcom/b/a/b/b;->a(Lcom/b/a/b/d;)V

    .line 37
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lb/a/cn$2;

    invoke-direct {v0, p0}, Lb/a/cn$2;-><init>(Lb/a/cn;)V

    invoke-static {v0}, Lcom/b/a/i;->b(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public b(Lb/a/cs;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lb/a/cn;->a:Lb/a/cr;

    invoke-interface {v0, p1}, Lb/a/cr;->b(Lb/a/cs;)V

    .line 49
    return-void
.end method
