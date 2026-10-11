.class Lcom/cmcm/dmc/sdk/e/m$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/m$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/cmcm/dmc/sdk/e/m$1;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/m$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    const-string v2, "inst_app"

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/e/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/j;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/e/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/m$1$1;->b:Lcom/cmcm/dmc/sdk/e/m$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    const-string v2, "uninst_app"

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/e/m;->a(Lcom/cmcm/dmc/sdk/e/m;Ljava/lang/String;)Lcom/cmcm/dmc/sdk/e/b;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/e/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/r;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/e/r;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
