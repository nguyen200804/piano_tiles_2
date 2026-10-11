.class public final Lcom/mopub/dg/e/a/b/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mopub/dg/d/a/a;->a()Lcom/mopub/dg/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/d/a/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/mopub/dg/e/a/b/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mopub/dg/e/a/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
