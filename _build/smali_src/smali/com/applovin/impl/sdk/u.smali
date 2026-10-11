.class Lcom/applovin/impl/sdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/t;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/t;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/t;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/av;->X:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/av;->Y:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/av;->Z:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/v;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/v;-><init>(Lcom/applovin/impl/sdk/u;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/u;->a:Lcom/applovin/impl/sdk/t;

    invoke-static {v0}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/t;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/av;->aa:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/aa;-><init>(Lcom/applovin/impl/sdk/u;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
