.class Lcom/applovin/impl/adview/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/af;

.field final synthetic b:Lcom/applovin/impl/adview/ai;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/ai;Lcom/applovin/impl/adview/af;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    iput-object p2, p0, Lcom/applovin/impl/adview/aj;->a:Lcom/applovin/impl/adview/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    invoke-static {v0}, Lcom/applovin/impl/adview/ai;->d(Lcom/applovin/impl/adview/ai;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    invoke-static {v0}, Lcom/applovin/impl/adview/ai;->e(Lcom/applovin/impl/adview/ai;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->a:Lcom/applovin/impl/adview/af;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/af;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/ai;->b(Lcom/applovin/impl/adview/ai;Z)Z

    :cond_1
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    invoke-static {v0}, Lcom/applovin/impl/adview/ai;->b(Lcom/applovin/impl/adview/ai;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    invoke-static {v1}, Lcom/applovin/impl/adview/ai;->a(Lcom/applovin/impl/adview/ai;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->a:Lcom/applovin/impl/adview/af;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/af;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    invoke-static {v1}, Lcom/applovin/impl/adview/ai;->c(Lcom/applovin/impl/adview/ai;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->b:Lcom/applovin/impl/adview/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/ai;->a(Lcom/applovin/impl/adview/ai;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/aj;->a:Lcom/applovin/impl/adview/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/af;->a(Z)V

    return-void
.end method
