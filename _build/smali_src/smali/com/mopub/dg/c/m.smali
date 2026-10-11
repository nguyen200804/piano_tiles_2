.class public final Lcom/mopub/dg/c/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mopub/dg/c/m;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mopub/dg/d/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/dg/c/m;->a:Lcom/mopub/dg/c/m;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/dg/c/m;->b:Landroid/content/Context;

    const-string v0, "dgta_preferences"

    invoke-static {p1, v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/c/m;->c:Lcom/mopub/dg/d/b/b;

    return-void
.end method

.method static synthetic a(Lcom/mopub/dg/c/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/c/m;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mopub/dg/c/m;
    .locals 2

    const-class v1, Lcom/mopub/dg/c/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/dg/c/m;->a:Lcom/mopub/dg/c/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/c/m;

    invoke-direct {v0, p0}, Lcom/mopub/dg/c/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/dg/c/m;->a:Lcom/mopub/dg/c/m;

    :cond_0
    sget-object v0, Lcom/mopub/dg/c/m;->a:Lcom/mopub/dg/c/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/mopub/dg/c/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    sget-object v1, Lcom/mopub/dg/c/g;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/dg/c/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/dg/b/d;->a:Lcom/mopub/dg/b/d;

    iget-object v0, p0, Lcom/mopub/dg/c/m;->c:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0}, Lcom/mopub/dg/d/b/b;->a()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mopub/dg/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/b/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/b/d;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mopub/dg/c/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/d/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/m;->c:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/mopub/dg/c/h;

    invoke-direct {v1}, Lcom/mopub/dg/c/h;-><init>()V

    iget-object v0, p0, Lcom/mopub/dg/c/m;->b:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0, p2, p3}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "error:context is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I

    :goto_1
    new-instance v0, Lcom/mopub/dg/c/n;

    invoke-direct {v0, p0, p1}, Lcom/mopub/dg/c/n;-><init>(Lcom/mopub/dg/c/m;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/k;ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/mopub/dg/c/m;->c:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/d/b/b;->d(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {v0, p4, p2, p3, p1}, Lcom/mopub/dg/c/a;->a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/c/a;

    move-result-object v0

    iput-object v0, v1, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
