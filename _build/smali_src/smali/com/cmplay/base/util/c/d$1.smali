.class Lcom/cmplay/base/util/c/d$1;
.super Ljava/lang/Object;
.source "ImageDownloadManager.java"

# interfaces
.implements Lcom/cmplay/base/util/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/c/d;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/base/util/c/b;

.field final synthetic c:Lcom/cmplay/base/util/c/d;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/c/d;Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cmplay/base/util/c/d$1;->c:Lcom/cmplay/base/util/c/d;

    iput-object p2, p0, Lcom/cmplay/base/util/c/d$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmplay/base/util/c/d$1;->b:Lcom/cmplay/base/util/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    if-eqz p1, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmplay/base/util/c/d$1;->c:Lcom/cmplay/base/util/c/d;

    invoke-static {v1}, Lcom/cmplay/base/util/c/d;->a(Lcom/cmplay/base/util/c/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/c/d$1;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/cmplay/base/util/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v1, p0, Lcom/cmplay/base/util/c/d$1;->b:Lcom/cmplay/base/util/c/b;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/cmplay/base/util/c/d$1;->b:Lcom/cmplay/base/util/c/b;

    invoke-interface {v1, p1, p2, v0}, Lcom/cmplay/base/util/c/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/c/d$1;->b:Lcom/cmplay/base/util/c/b;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/cmplay/base/util/c/d$1;->b:Lcom/cmplay/base/util/c/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download image fail  imageUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/cmplay/base/util/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56fe\u7247\u4e0b\u8f7d\u5931\u8d25  imageUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method
