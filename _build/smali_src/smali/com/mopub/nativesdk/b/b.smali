.class public final Lcom/mopub/nativesdk/b/b;
.super Ljava/lang/Object;
.source "JumpLoader.java"


# instance fields
.field private a:Lcom/mopub/nativesdk/b/f;

.field private b:Lcom/mopub/nativesdk/b/e;

.field private c:Lcom/mopub/nativesdk/b/h;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/mopub/nativesdk/b/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mopub/nativesdk/b/c;-><init>(Lcom/mopub/nativesdk/b/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/b;->d:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/b/b;Lcom/mopub/nativesdk/b/e;)Lcom/mopub/nativesdk/b/e;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/f;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->a:Lcom/mopub/nativesdk/b/f;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/e;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    return-object v0
.end method

.method static synthetic c(Lcom/mopub/nativesdk/b/b;)Lcom/mopub/nativesdk/b/h;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->c:Lcom/mopub/nativesdk/b/h;

    return-object v0
.end method

.method static synthetic d(Lcom/mopub/nativesdk/b/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativesdk/b/f;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    .line 1055
    iput-object p3, p0, Lcom/mopub/nativesdk/b/b;->a:Lcom/mopub/nativesdk/b/f;

    .line 1072
    const-string v0, " "

    const-string v3, "%20"

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2065
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v1

    .line 1074
    :goto_0
    if-nez v0, :cond_1

    .line 1075
    new-instance v0, Lcom/mopub/nativesdk/b/e;

    invoke-direct {v0}, Lcom/mopub/nativesdk/b/e;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    .line 1076
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    invoke-virtual {v0, v3}, Lcom/mopub/nativesdk/b/e;->b(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(Z)V

    .line 1078
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    const-string v1, "InvalidURL"

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->b:Lcom/mopub/nativesdk/b/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/b/e;->a(I)V

    .line 1080
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/b/b;->c:Lcom/mopub/nativesdk/b/h;

    if-nez v0, :cond_2

    .line 1060
    new-instance v0, Lcom/mopub/nativesdk/b/h;

    invoke-direct {v0, p1}, Lcom/mopub/nativesdk/b/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/b;->c:Lcom/mopub/nativesdk/b/h;

    .line 1063
    :cond_2
    new-instance v0, Lcom/mopub/nativesdk/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/mopub/nativesdk/b/d;-><init>(Lcom/mopub/nativesdk/b/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/mopub/nativesdk/d/a/a;->a()Lcom/mopub/nativesdk/d/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/nativesdk/d/a/a;->a(Ljava/lang/Runnable;)V

    .line 50
    return-void

    .line 2068
    :cond_3
    invoke-static {v3}, Lcom/mopub/nativesdk/d/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/mopub/nativesdk/d/p;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
