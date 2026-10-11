.class public final Lcom/mopub/dg/d/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mopub/dg/d/h;

.field private static final d:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "b2ZmZXJjYW1wX2dhaWQ="

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/mopub/dg/d/h;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/dg/d/h;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/dg/d/h;
    .locals 1

    sget-object v0, Lcom/mopub/dg/d/h;->a:Lcom/mopub/dg/d/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/d/h;

    invoke-direct {v0, p0}, Lcom/mopub/dg/d/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/dg/d/h;->a:Lcom/mopub/dg/d/h;

    :cond_0
    sget-object v0, Lcom/mopub/dg/d/h;->a:Lcom/mopub/dg/d/h;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/dg/d/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mopub/dg/d/h;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/d/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    sget-object v1, Lcom/mopub/dg/d/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/dg/d/h;->a(Lcom/mopub/dg/d/j;)V

    :cond_1
    iget-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/mopub/dg/d/j;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mopub/dg/d/i;

    iget-object v1, p0, Lcom/mopub/dg/d/h;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/mopub/dg/d/i;-><init>(Lcom/mopub/dg/d/h;Landroid/content/Context;Lcom/mopub/dg/d/j;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/mopub/dg/d/f;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error executing FetchAdvertisingInfoTask"

    invoke-static {v1, v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mopub/dg/d/j;->a()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/dg/d/h;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/d/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/e/a/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/d/h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    sget-object v1, Lcom/mopub/dg/d/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/d/h;->b:Ljava/lang/String;

    return-object v0
.end method
