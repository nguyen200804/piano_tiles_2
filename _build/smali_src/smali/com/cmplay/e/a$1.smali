.class Lcom/cmplay/e/a$1;
.super Ljava/lang/Object;
.source "MessageBoxImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/e/a;->a(Ljava/lang/String;Lcom/cmplay/e/a$a;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/cmplay/e/a$a;

.field final synthetic d:Lcom/cmplay/e/a;


# direct methods
.method constructor <init>(Lcom/cmplay/e/a;Ljava/lang/String;Landroid/os/Handler;Lcom/cmplay/e/a$a;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/cmplay/e/a$1;->d:Lcom/cmplay/e/a;

    iput-object p2, p0, Lcom/cmplay/e/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/e/a$1;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/cmplay/e/a$1;->c:Lcom/cmplay/e/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/e/a$1;->d:Lcom/cmplay/e/a;

    iget-object v1, p0, Lcom/cmplay/e/a$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmplay/e/a;->a(Lcom/cmplay/e/a;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/cmplay/e/a$1;->b:Landroid/os/Handler;

    new-instance v2, Lcom/cmplay/e/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/cmplay/e/a$1$1;-><init>(Lcom/cmplay/e/a$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/cmplay/e/a$1;->b:Landroid/os/Handler;

    new-instance v2, Lcom/cmplay/e/a$1$2;

    invoke-direct {v2, p0}, Lcom/cmplay/e/a$1$2;-><init>(Lcom/cmplay/e/a$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
