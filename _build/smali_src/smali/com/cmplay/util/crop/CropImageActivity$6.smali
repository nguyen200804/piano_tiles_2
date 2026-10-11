.class Lcom/cmplay/util/crop/CropImageActivity$6;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/CropImageActivity;->b(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/cmplay/util/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity$6;->b:Lcom/cmplay/util/crop/CropImageActivity;

    iput-object p2, p0, Lcom/cmplay/util/crop/CropImageActivity$6;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$6;->b:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageView;->b()V

    .line 400
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$6;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 401
    return-void
.end method
