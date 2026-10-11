.class Lcom/cmplay/util/crop/CropImageActivity$4;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/CropImageActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/crop/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/util/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity$4;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 190
    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity$4;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v1}, Lcom/cmplay/util/crop/CropImageActivity;->c(Lcom/cmplay/util/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cmplay/util/crop/CropImageActivity$4$1;

    invoke-direct {v2, p0, v0}, Lcom/cmplay/util/crop/CropImageActivity$4$1;-><init>(Lcom/cmplay/util/crop/CropImageActivity$4;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    new-instance v0, Lcom/cmplay/util/crop/CropImageActivity$a;

    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity$4;->a:Lcom/cmplay/util/crop/CropImageActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cmplay/util/crop/CropImageActivity$a;-><init>(Lcom/cmplay/util/crop/CropImageActivity;Lcom/cmplay/util/crop/CropImageActivity$1;)V

    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageActivity$a;->a()V

    .line 204
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
