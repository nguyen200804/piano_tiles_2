.class Lcom/example/luckywheel/ad/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/h$b;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ad/a/b;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ad/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ad/a/c;->a:Lcom/example/luckywheel/ad/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/a/c;->a:Lcom/example/luckywheel/ad/a/b;

    invoke-static {v0}, Lcom/example/luckywheel/ad/a/b;->a(Lcom/example/luckywheel/ad/a/b;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/a/c;->a:Lcom/example/luckywheel/ad/a/b;

    invoke-static {v0}, Lcom/example/luckywheel/ad/a/b;->a(Lcom/example/luckywheel/ad/a/b;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
