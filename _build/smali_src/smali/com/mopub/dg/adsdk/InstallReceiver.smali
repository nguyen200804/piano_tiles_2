.class public Lcom/mopub/dg/adsdk/InstallReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mopub/dg/e/a/a;

    invoke-direct {v0}, Lcom/mopub/dg/e/a/a;-><init>()V

    invoke-static {p1, p2}, Lcom/mopub/dg/e/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
