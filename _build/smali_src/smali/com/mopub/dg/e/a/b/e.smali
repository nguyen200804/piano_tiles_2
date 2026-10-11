.class final Lcom/mopub/dg/e/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/b/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/dg/e/a/b/e;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mopub/dg/e/a/b/e;->c:Z

    iput-object p4, p0, Lcom/mopub/dg/e/a/b/e;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v1, p0, Lcom/mopub/dg/e/a/b/e;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/mopub/dg/e/a/b/e;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mopub/dg/e/a/b/e;->c:Z

    iget-object v3, p0, Lcom/mopub/dg/e/a/b/e;->d:Ljava/util/Map;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v2

    sget-object v4, Lcom/mopub/dg/c/g;->x:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mopub/dg/c/g;->y:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "aid"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-static {v1, v3}, Lcom/mopub/dg/e/a/b/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/mopub/dg/e/a/b/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "sendEventToLogUrl"

    const-string v1, "Network not available,cancel sendEventToTrackUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v1, Lcom/mopub/dg/e/a/b/d;

    invoke-direct {v1}, Lcom/mopub/dg/e/a/b/d;-><init>()V

    invoke-static {v0, v1}, Lcom/mopub/dg/d/k;->a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "sendEventToLogUrl"

    const-string v2, "Error executing sendEventToTrackUrl"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_0
.end method
