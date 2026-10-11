.class Lcom/cmplay/base/util/a/a$1;
.super Landroid/content/BroadcastReceiver;
.source "ApkDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/base/util/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/a/a;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cmplay/base/util/a/a$1;->a:Lcom/cmplay/base/util/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    iget-object v0, p0, Lcom/cmplay/base/util/a/a$1;->a:Lcom/cmplay/base/util/a/a;

    invoke-static {v0}, Lcom/cmplay/base/util/a/a;->a(Lcom/cmplay/base/util/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/a/a$a;

    .line 129
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/cmplay/base/util/a/a$a;->b:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    .line 130
    const-string v0, "APK_DOWNLOAD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download complete   downloadId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/cmplay/base/util/a/a$1;->a:Lcom/cmplay/base/util/a/a;

    invoke-static {v0}, Lcom/cmplay/base/util/a/a;->b(Lcom/cmplay/base/util/a/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cmplay/base/util/a/a$1;->a:Lcom/cmplay/base/util/a/a;

    invoke-static {v5}, Lcom/cmplay/base/util/a/a;->c(Lcom/cmplay/base/util/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5df2\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object v0, p0, Lcom/cmplay/base/util/a/a$1;->a:Lcom/cmplay/base/util/a/a;

    invoke-static {v0, v2, v3}, Lcom/cmplay/base/util/a/a;->a(Lcom/cmplay/base/util/a/a;J)V

    goto :goto_0

    .line 136
    :cond_1
    return-void
.end method
