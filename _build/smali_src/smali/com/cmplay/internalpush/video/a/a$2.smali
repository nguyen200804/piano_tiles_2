.class Lcom/cmplay/internalpush/video/a/a$2;
.super Ljava/lang/Object;
.source "VideoDownloadTaskManager.java"

# interfaces
.implements Lcom/cmplay/internalpush/video/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/video/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmplay/internalpush/video/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cmplay/internalpush/video/a/a$2;->b:Lcom/cmplay/internalpush/video/a/a;

    iput-object p2, p0, Lcom/cmplay/internalpush/video/a/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceDownVideo -----\u4e0b\u8f7d\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a$2;->b:Lcom/cmplay/internalpush/video/a/a;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/a/a;->c(Lcom/cmplay/internalpush/video/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 232
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v0, "com.innerpushvideo.down_notify"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v0, "errorCode"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v0, "msg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v0, "videoUrl"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/a/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a$2;->b:Lcom/cmplay/internalpush/video/a/a;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/a/a;->c(Lcom/cmplay/internalpush/video/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    return-void
.end method
