.class Lcom/duapps/ad/offerwall/a/b$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadAdsManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/b;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/b$2;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "action_notify_preparse_cache_result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "ad_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 228
    const-string v0, "parse_result_type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 231
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$2;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$2;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$2;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$2;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 236
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 237
    iget-wide v6, v0, Lcom/duapps/ad/entity/AdData;->b:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    .line 238
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :cond_2
    return-void
.end method
