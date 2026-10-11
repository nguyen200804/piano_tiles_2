.class Lcom/applovin/impl/sdk/w;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/v;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/v;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/v;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/v;

    iget-object v0, v0, Lcom/applovin/impl/sdk/v;->a:Lcom/applovin/impl/sdk/u;

    iget-object v0, v0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/t;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/x;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/x;-><init>(Lcom/applovin/impl/sdk/w;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
