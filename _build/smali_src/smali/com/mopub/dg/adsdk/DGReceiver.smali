.class public Lcom/mopub/dg/adsdk/DGReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/mopub/dg/e/a/a;

    invoke-direct {v0}, Lcom/mopub/dg/e/a/a;-><init>()V

    invoke-static {p1, p2}, Lcom/mopub/dg/e/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
