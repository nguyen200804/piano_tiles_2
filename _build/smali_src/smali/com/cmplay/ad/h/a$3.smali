.class Lcom/cmplay/ad/h/a$3;
.super Ljava/lang/Object;
.source "ApplovinVideoADS.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/h/a;->show(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/ad/h/a;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/h/a;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cmplay/ad/h/a$3;->a:Lcom/cmplay/ad/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmplay/ad/h/a$3;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v0}, Lcom/cmplay/ad/h/a;->b(Lcom/cmplay/ad/h/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 101
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v0, p0, Lcom/cmplay/ad/h/a$3;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v0}, Lcom/cmplay/ad/h/a;->c(Lcom/cmplay/ad/h/a;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 106
    iget-object v0, p0, Lcom/cmplay/ad/h/a$3;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v0, v1}, Lcom/cmplay/ad/h/a;->a(Lcom/cmplay/ad/h/a;I)I

    .line 107
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cmplay/ad/h/a$3;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v3}, Lcom/cmplay/ad/h/a;->a(Lcom/cmplay/ad/h/a;)I

    move-result v3

    const/4 v4, 0x4

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 108
    return-void
.end method
