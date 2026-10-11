.class public Lcom/cmplay/util/BitmapLruCache;
.super Landroid/support/v4/util/LruCache;
.source "BitmapLruCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/h$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/android/volley/toolbox/h$b;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/cmplay/util/BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/util/BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method protected b(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/util/BitmapLruCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
