.class Lcom/applovin/impl/sdk/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/cw;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/cj;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cl;->a:Lcom/applovin/impl/sdk/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cl;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cl;->a:Lcom/applovin/impl/sdk/cj;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/cj;Lorg/json/JSONObject;)V

    return-void
.end method
