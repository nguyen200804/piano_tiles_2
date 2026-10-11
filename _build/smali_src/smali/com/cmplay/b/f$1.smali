.class Lcom/cmplay/b/f$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/f;->a(Ljava/lang/String;Lcom/cmplay/b/a;Lcom/cmplay/b/f$a;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/b/a;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/cmplay/b/f$a;

.field final synthetic e:Lcom/cmplay/b/f;


# direct methods
.method constructor <init>(Lcom/cmplay/b/f;Ljava/lang/String;Lcom/cmplay/b/a;Landroid/os/Handler;Lcom/cmplay/b/f$a;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cmplay/b/f$1;->e:Lcom/cmplay/b/f;

    iput-object p2, p0, Lcom/cmplay/b/f$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/b/f$1;->b:Lcom/cmplay/b/a;

    iput-object p4, p0, Lcom/cmplay/b/f$1;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/cmplay/b/f$1;->d:Lcom/cmplay/b/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/b/f$1;->e:Lcom/cmplay/b/f;

    iget-object v1, p0, Lcom/cmplay/b/f$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmplay/b/f$1;->b:Lcom/cmplay/b/a;

    invoke-static {v0, v1, v2}, Lcom/cmplay/b/f;->a(Lcom/cmplay/b/f;Ljava/lang/String;Lcom/cmplay/b/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/cmplay/b/f$1;->c:Landroid/os/Handler;

    new-instance v2, Lcom/cmplay/b/f$1$1;

    invoke-direct {v2, p0, v0}, Lcom/cmplay/b/f$1$1;-><init>(Lcom/cmplay/b/f$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
