.class Lcom/duapps/ad/offerwall/a/b$1;
.super Ljava/lang/Object;
.source "DownloadAdsManager2.java"

# interfaces
.implements Lcom/duapps/ad/base/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/duapps/ad/base/s",
        "<",
        "Lcom/duapps/ad/entity/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/b;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Z)Z

    .line 69
    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 8

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;Z)Z

    .line 74
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Z)Z

    .line 76
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0, p2}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Lcom/duapps/ad/entity/AdModel;)Lcom/duapps/ad/entity/AdModel;

    .line 81
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    iget-object v2, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 85
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/b;->c(Lcom/duapps/ad/offerwall/a/b;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;I)V

    .line 86
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/duapps/ad/offerwall/a/b$1$1;

    invoke-direct {v2, p0}, Lcom/duapps/ad/offerwall/a/b$1$1;-><init>(Lcom/duapps/ad/offerwall/a/b$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    monitor-exit v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 99
    iget-object v3, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v3}, Lcom/duapps/ad/offerwall/a/b;->b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/duapps/ad/entity/c;

    iget-object v5, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v5}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "offerwall"

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/duapps/ad/entity/c;-><init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/b;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/offerwall/a/b$1$2;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/a/b$1$2;-><init>(Lcom/duapps/ad/offerwall/a/b$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/offerwall/a/b$1;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a/b;->a(Lcom/duapps/ad/offerwall/a/b;Z)Z

    .line 118
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/offerwall/a/b$1$3;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/a/b$1$3;-><init>(Lcom/duapps/ad/offerwall/a/b$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
