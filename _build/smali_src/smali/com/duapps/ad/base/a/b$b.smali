.class Lcom/duapps/ad/base/a/b$b;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/duapps/ad/base/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/duapps/ad/base/a/b$a;)V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 484
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/duapps/ad/base/a/b$b;->a:Ljava/lang/ref/WeakReference;

    .line 486
    return-void
.end method


# virtual methods
.method public a()Lcom/duapps/ad/base/a/b$a;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/duapps/ad/base/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/base/a/b$a;

    return-object v0
.end method
