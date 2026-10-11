.class Lcom/cmcm/dmc/sdk/e/q$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/q$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/cmcm/dmc/sdk/e/q$a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/q$a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/e/q;->a(Lcom/cmcm/dmc/sdk/e/q;J)J

    const-string v0, "screen_on"

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cmcm/dmc/sdk/e/d;->a()Lcom/cmcm/dmc/sdk/e/d;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/cmcm/dmc/sdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/e/q;->b(Lcom/cmcm/dmc/sdk/e/q;J)J

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/q;->a(Lcom/cmcm/dmc/sdk/e/q;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0, v6, v7}, Lcom/cmcm/dmc/sdk/e/q;->b(Lcom/cmcm/dmc/sdk/e/q;J)J

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0, v6, v7}, Lcom/cmcm/dmc/sdk/e/q;->a(Lcom/cmcm/dmc/sdk/e/q;J)J

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0, v6, v7}, Lcom/cmcm/dmc/sdk/e/q;->c(Lcom/cmcm/dmc/sdk/e/q;J)J

    const-string v0, "screen_off"

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/q$a$1;->b:Lcom/cmcm/dmc/sdk/e/q$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/q$a;->a:Lcom/cmcm/dmc/sdk/e/q;

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/e/q;->c(Lcom/cmcm/dmc/sdk/e/q;J)J

    const-string v0, "screen_present"

    goto :goto_0
.end method
