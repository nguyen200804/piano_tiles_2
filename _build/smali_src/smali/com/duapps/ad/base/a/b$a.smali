.class Lcom/duapps/ad/base/a/b$a;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/a/b;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/duapps/ad/base/a/c;


# direct methods
.method public constructor <init>(Lcom/duapps/ad/base/a/b;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V
    .locals 1

    .prologue
    .line 409
    iput-object p1, p0, Lcom/duapps/ad/base/a/b$a;->a:Lcom/duapps/ad/base/a/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 410
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duapps/ad/base/a/b$a;->c:Ljava/lang/ref/WeakReference;

    .line 411
    iput-object p3, p0, Lcom/duapps/ad/base/a/b$a;->d:Lcom/duapps/ad/base/a/c;

    .line 412
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/a/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/duapps/ad/base/a/b$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/duapps/ad/base/a/b$a;->b:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/duapps/ad/base/a/b$a;->a:Lcom/duapps/ad/base/a/b;

    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/duapps/ad/base/a/b$a;->d:Lcom/duapps/ad/base/a/c;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/base/a/b;->a(Lcom/duapps/ad/base/a/b;Ljava/lang/String;Lcom/duapps/ad/base/a/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/duapps/ad/base/a/b$a;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->a:Lcom/duapps/ad/base/a/b;

    iget-object v2, p0, Lcom/duapps/ad/base/a/b$a;->b:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/duapps/ad/base/a/b;->a(Lcom/duapps/ad/base/a/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 434
    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/duapps/ad/base/a/b$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 438
    :cond_1
    if-eqz p1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->d:Lcom/duapps/ad/base/a/c;

    iget-object v2, p0, Lcom/duapps/ad/base/a/b$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 444
    :goto_0
    if-eqz v0, :cond_2

    .line 445
    invoke-static {v0}, Lcom/duapps/ad/base/a/b;->a(Landroid/widget/ImageView;)Lcom/duapps/ad/base/a/b$a;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_2

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->a:Lcom/duapps/ad/base/a/b;

    .line 452
    invoke-static {v1}, Lcom/duapps/ad/base/a/b;->a(Lcom/duapps/ad/base/a/b;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->a:Lcom/duapps/ad/base/a/b;

    invoke-static {v1}, Lcom/duapps/ad/base/a/b;->a(Lcom/duapps/ad/base/a/b;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 456
    if-eqz p1, :cond_2

    .line 457
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 458
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    :cond_2
    return-void

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/duapps/ad/base/a/b$a;->d:Lcom/duapps/ad/base/a/c;

    iget-object v2, p0, Lcom/duapps/ad/base/a/b$a;->b:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v0, v3}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duapps/ad/base/a/b$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/duapps/ad/base/a/b$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
