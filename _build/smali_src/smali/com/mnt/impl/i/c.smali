.class public Lcom/mnt/impl/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mnt/impl/i/c;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/mnt/impl/e;->cV:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/i/c;->a:Lcom/mnt/impl/i/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/i/c;->b:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/impl/i/c;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/mnt/impl/i/c;->a:Lcom/mnt/impl/i/c;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/mnt/impl/i/c;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/mnt/impl/i/c;->a:Lcom/mnt/impl/i/c;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/mnt/impl/i/c;

    invoke-direct {v0, p0}, Lcom/mnt/impl/i/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/i/c;->a:Lcom/mnt/impl/i/c;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/mnt/impl/i/c;->a:Lcom/mnt/impl/i/c;

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


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mnt/impl/i/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/mnt/impl/i/c;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mnt/impl/i/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method
