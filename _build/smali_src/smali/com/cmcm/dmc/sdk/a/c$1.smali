.class final Lcom/cmcm/dmc/sdk/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cmplay.activesdk.cloud_cfg.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/cmcm/dmc/sdk/a/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/cmcm/dmc/sdk/a/c$a;-><init>(Lcom/cmcm/dmc/sdk/a/c$1;)V

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/c;->b(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->h()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Lcom/cmcm/dmc/sdk/e/m;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/e/m;-><init>()V

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/c;->a(Lcom/cmcm/dmc/sdk/e/m;)Lcom/cmcm/dmc/sdk/e/m;

    const-string v0, "ContextUtils"

    const-string v1, "WORKING"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/c;->b(I)V

    return-void
.end method
