.class Lcom/appsflyer/AppsFlyerLib$b;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    .line 1732
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    .line 1733
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 1736
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-void

    .line 1739
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->a(J)J

    .line 1740
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1743
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    .line 1745
    :try_start_0
    const-string v2, "AppsFlyerKey"

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1746
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1747
    :try_start_1
    invoke-static {}, Lcom/appsflyer/a/a;->a()Lcom/appsflyer/a/a;

    move-result-object v3

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v3, v2}, Lcom/appsflyer/a/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/appsflyer/a/b;

    move-object v6, v0

    .line 1748
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1749
    const-string v2, "AppsFlyer_3.0"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resending request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1755
    invoke-virtual {v6}, Lcom/appsflyer/a/b;->d()Ljava/lang/String;

    move-result-object v5

    .line 1756
    const/16 v7, 0xa

    invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    .line 1758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "&isCachedRequest=true&timeincache="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v2, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Lcom/appsflyer/a/b;->d()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppsFlyer_3.0"

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1766
    :catch_0
    move-exception v2

    .line 1767
    :try_start_3
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "Failed to resend cached request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1770
    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1771
    :catch_1
    move-exception v2

    .line 1772
    :try_start_5
    const-string v2, "AppsFlyer_3.0"

    const-string v3, "failed to check cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1774
    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    .line 1776
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 1777
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    goto/16 :goto_0

    .line 1770
    :cond_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1774
    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-static {v11}, Lcom/appsflyer/AppsFlyerLib;->a(Z)Z

    throw v2
.end method
