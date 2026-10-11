.class Lcom/cmplay/util/crop/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/crop/e;

.field final synthetic b:Z

.field final synthetic c:Lcom/cmplay/util/crop/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/cmplay/util/crop/ImageViewTouchBase;Lcom/cmplay/util/crop/e;Z)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;->c:Lcom/cmplay/util/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;->a:Lcom/cmplay/util/crop/e;

    iput-boolean p3, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;->c:Lcom/cmplay/util/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;->a:Lcom/cmplay/util/crop/e;

    iget-boolean v2, p0, Lcom/cmplay/util/crop/ImageViewTouchBase$1;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/util/crop/ImageViewTouchBase;->a(Lcom/cmplay/util/crop/e;Z)V

    .line 175
    return-void
.end method
