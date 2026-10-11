.class Lcom/applovin/impl/adview/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/af;

.field final synthetic b:Lcom/applovin/impl/adview/ai;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ai;Lcom/applovin/impl/adview/af;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/ak;->b:Lcom/applovin/impl/adview/ai;

    iput-object p2, p0, Lcom/applovin/impl/adview/ak;->a:Lcom/applovin/impl/adview/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ak;->a:Lcom/applovin/impl/adview/af;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/af;->e()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdClickListener;->adClicked(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method
