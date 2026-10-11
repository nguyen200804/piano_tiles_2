.class Lcom/applovin/impl/sdk/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinPostbackListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/an;

.field final synthetic b:Lcom/applovin/impl/sdk/bm;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bm;Lcom/applovin/impl/sdk/an;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/bm;

    iput-object p2, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostbackFailure(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/bm;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/impl/sdk/bm;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to submit postback with errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Will retry later...  Postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/an;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/bm;

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/an;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/bm;->b(Lcom/applovin/impl/sdk/bm;Lcom/applovin/impl/sdk/an;)V

    return-void
.end method

.method public onPostbackSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/bm;

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/an;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/impl/sdk/bm;Lcom/applovin/impl/sdk/an;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/bm;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/impl/sdk/bm;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully submitted postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->a:Lcom/applovin/impl/sdk/an;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->b:Lcom/applovin/impl/sdk/bm;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/bm;->b()V

    return-void
.end method
