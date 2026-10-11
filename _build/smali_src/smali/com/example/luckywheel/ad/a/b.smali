.class public Lcom/example/luckywheel/ad/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/ad/a/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/volley/toolbox/h;

.field private b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/ad/a/b;)Landroid/support/v4/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/a/b;->b:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public static a()Lcom/example/luckywheel/ad/a/b;
    .locals 1

    invoke-static {}, Lcom/example/luckywheel/ad/a/b$a;->a()Lcom/example/luckywheel/ad/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/android/volley/toolbox/k;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    new-instance v2, Landroid/support/v4/util/LruCache;

    invoke-direct {v2, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/example/luckywheel/ad/a/b;->b:Landroid/support/v4/util/LruCache;

    new-instance v1, Lcom/android/volley/toolbox/h;

    new-instance v2, Lcom/example/luckywheel/ad/a/c;

    invoke-direct {v2, p0}, Lcom/example/luckywheel/ad/a/c;-><init>(Lcom/example/luckywheel/ad/a/b;)V

    invoke-direct {v1, v0, v2}, Lcom/android/volley/toolbox/h;-><init>(Lcom/android/volley/m;Lcom/android/volley/toolbox/h$b;)V

    iput-object v1, p0, Lcom/example/luckywheel/ad/a/b;->a:Lcom/android/volley/toolbox/h;

    return-void
.end method

.method public b()Lcom/android/volley/toolbox/h;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ad/a/b;->a:Lcom/android/volley/toolbox/h;

    return-object v0
.end method
