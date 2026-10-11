.class final Lcom/mopub/dg/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/dg/c/k;


# instance fields
.field a:Lcom/mopub/dg/adapi/DGAdApi;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mopub/dg/c/m;


# direct methods
.method constructor <init>(Lcom/mopub/dg/c/m;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mopub/dg/c/n;->c:Lcom/mopub/dg/c/m;

    iput-object p2, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/mopub/dg/c/n;->c:Lcom/mopub/dg/c/m;

    invoke-static {v0}, Lcom/mopub/dg/c/m;->a(Lcom/mopub/dg/c/m;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Track_Fail"

    iget-object v2, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Track_Fail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Track_No_AD"

    iget-object v2, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Track_No_AD"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/adapi/AdData;

    iget-object v1, p0, Lcom/mopub/dg/c/n;->c:Lcom/mopub/dg/c/m;

    invoke-static {v1}, Lcom/mopub/dg/c/m;->a(Lcom/mopub/dg/c/m;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/dg/e/a/a/l;->a(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-virtual {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mopub/dg/c/n;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-virtual {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    const-string v2, "Track_Success"

    iget-object v3, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Track_Success"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mopub/dg/c/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Lcom/mopub/dg/adapi/AdData;->getClickRecordUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/mopub/dg/c/o;

    invoke-direct {v1, p0}, Lcom/mopub/dg/c/o;-><init>(Lcom/mopub/dg/c/n;)V

    invoke-static {v0, v1}, Lcom/mopub/dg/d/k;->a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
