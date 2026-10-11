.class Lcom/cmplay/util/crop/ImageViewTouchBase$2;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/cmplay/util/crop/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/cmplay/util/crop/ImageViewTouchBase;FJFFFF)V
    .locals 1

    .prologue
    .line 325
    iput-object p1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->g:Lcom/cmplay/util/crop/ImageViewTouchBase;

    iput p2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->a:F

    iput-wide p3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->b:J

    iput p5, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->c:F

    iput p6, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->d:F

    iput p7, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->e:F

    iput p8, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 328
    iget v2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->a:F

    iget-wide v4, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 329
    iget v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->c:F

    iget v2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 330
    iget-object v2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->g:Lcom/cmplay/util/crop/ImageViewTouchBase;

    iget v3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->e:F

    iget v4, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(FFF)V

    .line 332
    iget v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$2;->g:Lcom/cmplay/util/crop/ImageViewTouchBase;

    iget-object v0, v0, Lcom/cmplay/util/crop/ImageViewTouchBase;->j:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_0
    return-void
.end method
