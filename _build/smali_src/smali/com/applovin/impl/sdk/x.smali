.class Lcom/applovin/impl/sdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/w;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/impl/sdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/x;->a:Lcom/applovin/impl/sdk/w;

    iget-object v0, v0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/v;

    iget-object v0, v0, Lcom/applovin/impl/sdk/v;->a:Lcom/applovin/impl/sdk/u;

    iget-object v0, v0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->c(Lcom/applovin/impl/sdk/t;)V

    return-void
.end method
