.class public Lcom/mopub/nativesdk/c/e;
.super Ljava/lang/Object;
.source "AdApiLoader.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mopub/nativesdk/c/k;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    .line 1027
    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->b:Lcom/mopub/nativesdk/c/k;

    .line 1030
    new-instance v0, Lcom/mopub/nativesdk/c/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mopub/nativesdk/c/i;-><init>(Lcom/mopub/nativesdk/c/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/c/e;)Lcom/mopub/nativesdk/c/k;
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/mopub/nativesdk/c/e;->b:Lcom/mopub/nativesdk/c/k;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativesdk/c/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 3024
    iget-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativesdk/c/e;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 4024
    iget-object v0, p0, Lcom/mopub/nativesdk/c/e;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mopub/nativesdk/c/k;)V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/e;->a:Ljava/util/Map;

    .line 1047
    :cond_0
    iput-object p2, p0, Lcom/mopub/nativesdk/c/e;->b:Lcom/mopub/nativesdk/c/k;

    .line 1049
    const/4 v0, 0x0

    new-instance v1, Lcom/mopub/nativesdk/c/j;

    invoke-direct {v1, p0, p1}, Lcom/mopub/nativesdk/c/j;-><init>(Lcom/mopub/nativesdk/c/e;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;)V

    .line 1080
    return-void
.end method
