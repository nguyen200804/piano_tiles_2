.class Lcom/applovin/impl/sdk/bh;
.super Lcom/applovin/impl/sdk/bw;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ck;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ck;Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-direct {p0, p2, p3, p4}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->d(Lcom/applovin/impl/sdk/ck;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ck;->c(Lcom/applovin/impl/sdk/ck;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/cv;Lcom/applovin/impl/sdk/cw;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->a(Lcom/applovin/impl/sdk/ck;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aF:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->b(Lcom/applovin/impl/sdk/ck;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->c(Lcom/applovin/impl/sdk/ck;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v4, p2}, Lcom/applovin/impl/sdk/cv;->a(Ljava/lang/String;IZLcom/applovin/impl/sdk/cw;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->a(Lcom/applovin/impl/sdk/ck;)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->c(Lcom/applovin/impl/sdk/ck;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->b(Lcom/applovin/impl/sdk/ck;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/sdk/cv;->a(Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/cw;)V

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ck;->d(Lcom/applovin/impl/sdk/ck;)Lcom/applovin/sdk/AppLovinPostbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bh;->a:Lcom/applovin/impl/sdk/ck;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ck;->c(Lcom/applovin/impl/sdk/ck;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    return-void
.end method
