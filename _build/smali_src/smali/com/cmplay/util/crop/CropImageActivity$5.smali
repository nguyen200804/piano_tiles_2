.class Lcom/cmplay/util/crop/CropImageActivity$5;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/CropImageActivity;->a(Landroid/graphics/Bitmap;)V
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
    .line 301
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity$5;->b:Lcom/cmplay/util/crop/CropImageActivity;

    iput-object p2, p0, Lcom/cmplay/util/crop/CropImageActivity$5;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$5;->b:Lcom/cmplay/util/crop/CropImageActivity;

    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity$5;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/cmplay/util/crop/CropImageActivity;->a(Lcom/cmplay/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    .line 304
    return-void
.end method
