.class Lcom/cmplay/internalpush/video/a/a$3;
.super Ljava/lang/Object;
.source "VideoDownloadTaskManager.java"

# interfaces
.implements Lcom/cmplay/internalpush/video/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/video/a/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmplay/internalpush/video/a/b$a;

.field final synthetic e:Lcom/cmplay/internalpush/video/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/a/a;ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/cmplay/internalpush/video/a/a$3;->e:Lcom/cmplay/internalpush/video/a/a;

    iput p2, p0, Lcom/cmplay/internalpush/video/a/a$3;->a:I

    iput-object p3, p0, Lcom/cmplay/internalpush/video/a/a$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmplay/internalpush/video/a/a$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/cmplay/internalpush/video/a/a$3;->d:Lcom/cmplay/internalpush/video/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 322
    iget v0, p0, Lcom/cmplay/internalpush/video/a/a$3;->a:I

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a$3;->e:Lcom/cmplay/internalpush/video/a/a;

    iget v1, p0, Lcom/cmplay/internalpush/video/a/a$3;->a:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/a/a$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmplay/internalpush/video/a/a$3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/internalpush/video/a/a$3;->d:Lcom/cmplay/internalpush/video/a/b$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/video/a/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u91cd\u8bd5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/internalpush/video/a/a$3;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoUrl ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/a$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/a$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a$3;->d:Lcom/cmplay/internalpush/video/a/b$a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
