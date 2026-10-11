.class Lcom/applovin/impl/sdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/u;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/u;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/u;

    iget-object v0, v0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->f(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/z;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/aa;->a:Lcom/applovin/impl/sdk/u;

    iget-object v1, v1, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v1}, Lcom/applovin/impl/sdk/t;->e(Lcom/applovin/impl/sdk/t;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/sdk/AppLovinAdRewardListener;)V

    return-void
.end method
