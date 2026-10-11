.class Lcom/cmplay/util/crop/CropImageActivity$4$1;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/CropImageActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Lcom/cmplay/util/crop/CropImageActivity$4;


# direct methods
.method constructor <init>(Lcom/cmplay/util/crop/CropImageActivity$4;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity$4$1;->b:Lcom/cmplay/util/crop/CropImageActivity$4;

    iput-object p2, p0, Lcom/cmplay/util/crop/CropImageActivity$4$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$4$1;->b:Lcom/cmplay/util/crop/CropImageActivity$4;

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageActivity$4;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageView;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$4$1;->b:Lcom/cmplay/util/crop/CropImageActivity$4;

    iget-object v0, v0, Lcom/cmplay/util/crop/CropImageActivity$4;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/cmplay/util/crop/CropImageView;->a(ZZ)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$4$1;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 196
    return-void
.end method
