.class Lcom/cmplay/internalpush/video/a/a$a;
.super Landroid/content/BroadcastReceiver;
.source "VideoDownloadTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/video/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/video/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/a/a;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cmplay/internalpush/video/a/a$a;->a:Lcom/cmplay/internalpush/video/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    if-eqz p2, :cond_2

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.innerpushvideo.down_notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/cmplay/base/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a$a;->a:Lcom/cmplay/internalpush/video/a/a;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/a/a;->a(Lcom/cmplay/internalpush/video/a/a;)Lcom/cmplay/internalpush/video/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    const-string v0, "errorCode"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    const-string v1, "msg"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v2, "videoUrl"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    const-string v3, "DownTaskReceiver -----\u79fb\u9664url"

    invoke-static {v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/cmplay/internalpush/video/a/a$a;->a:Lcom/cmplay/internalpush/video/a/a;

    invoke-static {v3}, Lcom/cmplay/internalpush/video/a/a;->b(Lcom/cmplay/internalpush/video/a/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownTaskReceiver -----\u63a5\u6536\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/cmplay/internalpush/video/a/a$a;->a:Lcom/cmplay/internalpush/video/a/a;

    invoke-static {v2}, Lcom/cmplay/internalpush/video/a/a;->a(Lcom/cmplay/internalpush/video/a/a;)Lcom/cmplay/internalpush/video/a/b$a;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    .line 200
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_save"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    const-string v0, "videoFileName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v1, "contentLength"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 203
    const-string v1, "zzb_video"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u4fdd\u5b58\u957f\u5ea6 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/e;->b(Ljava/lang/String;J)V

    .line 207
    :cond_2
    return-void
.end method
