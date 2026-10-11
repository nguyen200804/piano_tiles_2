.class Lcom/mopub/dg/adapi/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/dg/c/l;


# instance fields
.field final synthetic a:Lcom/mopub/dg/adapi/DGAdApi;


# direct methods
.method constructor <init>(Lcom/mopub/dg/adapi/DGAdApi;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataFail()V
    .locals 3

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/ApiAdsListener;->onAdError()V

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Cache_Ad_Fail"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cache_Ad_Fail"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onDataListSuccess(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/dg/adapi/ApiAdsListener;->onAdLoaded(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Cache_Ad_Success"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cache_Ad_Success"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/ApiAdsListener;->onAdError()V

    :cond_3
    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v0

    const-string v1, "Cache_No_Ad"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cache_No_Ad"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDataSuccess(Lcom/mopub/dg/adapi/AdData;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/adapi/a;->a:Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {v0}, Lcom/mopub/dg/adapi/DGAdApi;->a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/dg/adapi/ApiAdsListener;->onOneAdLoaded(Lcom/mopub/dg/adapi/AdData;)V

    :cond_0
    return-void
.end method
