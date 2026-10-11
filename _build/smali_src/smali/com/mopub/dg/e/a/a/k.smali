.class final Lcom/mopub/dg/e/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mopub/dg/e/a/a/i;


# direct methods
.method constructor <init>(Lcom/mopub/dg/e/a/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/k;->a:Lcom/mopub/dg/e/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/k;->a:Lcom/mopub/dg/e/a/a/i;

    iget-boolean v1, v0, Lcom/mopub/dg/e/a/a/i;->d:Z

    if-nez v1, :cond_1

    const-string v1, "http://adbsc.krmobi.com/dzzb"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "pkg"

    iget-object v4, v0, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adid"

    iget-object v4, v0, Lcom/mopub/dg/e/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "jt"

    iget v4, v0, Lcom/mopub/dg/e/a/a/i;->i:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "preload"

    iget-boolean v4, v0, Lcom/mopub/dg/e/a/a/i;->c:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4, v2}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    iget-object v1, v0, Lcom/mopub/dg/e/a/a/i;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    const-string v2, "Preload_Fail"

    iget-object v0, v0, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Preload_Fail"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_1
    return-void
.end method
