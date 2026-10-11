.class Lcom/applovin/impl/sdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/impl/sdk/h;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/h;Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/h;

    iput-object p2, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/sdk/AppLovinAd;

    iput p3, p0, Lcom/applovin/impl/sdk/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Lcom/applovin/impl/sdk/h;

    invoke-static {v0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/sdk/AppLovinAd;

    iget v2, p0, Lcom/applovin/impl/sdk/r;->b:I

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V

    return-void
.end method
