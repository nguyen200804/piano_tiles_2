.class Lcom/applovin/impl/adview/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/adview/ai;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ai;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/adview/ai;

    iput-object p2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/adview/ai;

    invoke-static {v0}, Lcom/applovin/impl/adview/ai;->f(Lcom/applovin/impl/adview/ai;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/adview/ai;

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/sdk/AppLovinAd;

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getCloseStyle()Lcom/applovin/impl/adview/v;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/applovin/impl/adview/ai;->a(Lcom/applovin/impl/adview/ai;Lcom/applovin/impl/adview/v;)V

    return-void
.end method
