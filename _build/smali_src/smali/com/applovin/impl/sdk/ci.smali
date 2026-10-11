.class public Lcom/applovin/impl/sdk/ci;
.super Lcom/applovin/impl/sdk/au;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/bg;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/impl/sdk/bg;)V
    .locals 1

    const-string v0, "TaskCollectAdvertisingId"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/au;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/ci;->a:Lcom/applovin/impl/sdk/bg;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ci;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getDataCollector()Lcom/applovin/impl/sdk/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/cy;->c()Lcom/applovin/impl/sdk/cz;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ci;->a:Lcom/applovin/impl/sdk/bg;

    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/bg;->a(Lcom/applovin/impl/sdk/cz;)V

    return-void
.end method
