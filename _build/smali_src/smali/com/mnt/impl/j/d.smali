.class public final Lcom/mnt/impl/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/j/d$a;,
        Lcom/mnt/impl/j/d$b;
    }
.end annotation


# static fields
.field private static b:Lcom/mnt/impl/j/d;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/mnt/impl/j/b;

.field private d:Lcom/mnt/impl/j/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mnt/impl/e;->iz:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/mnt/impl/j/e;

    invoke-direct {v0, p0}, Lcom/mnt/impl/j/e;-><init>(Lcom/mnt/impl/j/d;)V

    iput-object v0, p0, Lcom/mnt/impl/j/d;->d:Lcom/mnt/impl/j/f$a;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/j/d;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/j/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mnt/impl/j/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/mnt/impl/j/d;Lcom/mnt/impl/j/b;)Lcom/mnt/impl/j/b;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mnt/impl/j/d;->c:Lcom/mnt/impl/j/b;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/mnt/impl/j/d;->b:Lcom/mnt/impl/j/d;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/mnt/impl/j/d;

    invoke-direct {v0, p0}, Lcom/mnt/impl/j/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/j/d;->b:Lcom/mnt/impl/j/d;

    .line 37
    invoke-static {p0}, Lcom/mnt/impl/j/f;->a(Landroid/content/Context;)Lcom/mnt/impl/j/f;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/j/d;->b:Lcom/mnt/impl/j/d;

    iget-object v1, v1, Lcom/mnt/impl/j/d;->d:Lcom/mnt/impl/j/f$a;

    .line 1088
    iget-object v0, v0, Lcom/mnt/impl/j/f;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/mnt/impl/j/d;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mnt/impl/j/d;->b:Lcom/mnt/impl/j/d;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/mnt/impl/j/d;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/mnt/impl/j/d;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mnt/impl/j/d;->a(Landroid/content/Context;)V

    .line 43
    sget-object v0, Lcom/mnt/impl/j/d;->b:Lcom/mnt/impl/j/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Lcom/mnt/impl/j/b;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mnt/impl/j/d;->c:Lcom/mnt/impl/j/b;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/mnt/impl/j/b;

    iget-object v1, p0, Lcom/mnt/impl/j/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mnt/impl/j/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mnt/impl/j/d;->c:Lcom/mnt/impl/j/b;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/j/d;->c:Lcom/mnt/impl/j/b;

    return-object v0
.end method
