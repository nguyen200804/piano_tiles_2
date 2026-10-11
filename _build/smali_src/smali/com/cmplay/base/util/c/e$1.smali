.class Lcom/cmplay/base/util/c/e$1;
.super Lcom/cmplay/base/util/c/f;
.source "LoaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/c/e;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmplay/base/util/c/f",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/util/c/e;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/c/e;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmplay/base/util/c/e$1;->a:Lcom/cmplay/base/util/c/e;

    invoke-direct {p0, p2}, Lcom/cmplay/base/util/c/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 53
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/cmplay/base/util/c/e$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
