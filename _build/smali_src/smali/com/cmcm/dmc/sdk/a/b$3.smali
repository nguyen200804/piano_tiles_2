.class Lcom/cmcm/dmc/sdk/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/b;->b(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/cmcm/dmc/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/a/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/b$3;->b:Lcom/cmcm/dmc/sdk/a/b;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/a/b$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$3;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$3;->b:Lcom/cmcm/dmc/sdk/a/b;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/b$3;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/b;->a(Lcom/cmcm/dmc/sdk/a/b;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$3;->b:Lcom/cmcm/dmc/sdk/a/b;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/b;->c(Lcom/cmcm/dmc/sdk/a/b;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/32 v0, 0x1499700

    :goto_0
    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/b$3;->b:Lcom/cmcm/dmc/sdk/a/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cmcm/dmc/sdk/a/b;->a(Lcom/cmcm/dmc/sdk/a/b;Z)Z

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/b$3;->b:Lcom/cmcm/dmc/sdk/a/b;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/b;->d(Lcom/cmcm/dmc/sdk/a/b;)Lcom/cmcm/dmc/sdk/a/l;

    move-result-object v2

    new-instance v3, Lcom/cmcm/dmc/sdk/a/b$3$1;

    invoke-direct {v3, p0}, Lcom/cmcm/dmc/sdk/a/b$3$1;-><init>(Lcom/cmcm/dmc/sdk/a/b$3;)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    const-wide/32 v0, 0x6ddd00

    goto :goto_0
.end method
