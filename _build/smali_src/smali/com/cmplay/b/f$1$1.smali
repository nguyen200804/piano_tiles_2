.class Lcom/cmplay/b/f$1$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/cmplay/b/f$1;


# direct methods
.method constructor <init>(Lcom/cmplay/b/f$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cmplay/b/f$1$1;->b:Lcom/cmplay/b/f$1;

    iput-object p2, p0, Lcom/cmplay/b/f$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cmplay/b/f$1$1;->b:Lcom/cmplay/b/f$1;

    iget-object v0, v0, Lcom/cmplay/b/f$1;->d:Lcom/cmplay/b/f$a;

    iget-object v1, p0, Lcom/cmplay/b/f$1$1;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/cmplay/b/f$a;->a(Landroid/graphics/Bitmap;)V

    .line 110
    return-void
.end method
