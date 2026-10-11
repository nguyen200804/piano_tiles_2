.class Lcom/cmplay/ad/h/a$2;
.super Ljava/lang/Object;
.source "ApplovinVideoADS.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


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
    .line 85
    iput-object p1, p0, Lcom/cmplay/ad/h/a$2;->a:Lcom/cmplay/ad/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 89
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "v"    # D
    .param p4, "b"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cmplay/ad/h/a$2;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v0}, Lcom/cmplay/ad/h/a;->b(Lcom/cmplay/ad/h/a;)Lcom/cmplay/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cmplay/ad/h/a$2;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v0}, Lcom/cmplay/ad/h/a;->b(Lcom/cmplay/ad/h/a;)Lcom/cmplay/ad/c;

    move-result-object v1

    if-nez p4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/cmplay/ad/c;->a(Z)V

    .line 96
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
