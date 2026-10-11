.class Lcom/cmplay/cloud/d$1$1;
.super Ljava/lang/Object;
.source "WifiStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/cloud/d$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/d$1;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/d$1;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cmplay/cloud/d$1$1;->a:Lcom/cmplay/cloud/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/cmplay/cloud/a;->a()Lcom/cmplay/cloud/a;

    move-result-object v0

    sget-object v1, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/cloud/a;->a(Landroid/content/Context;Z)V

    .line 60
    return-void
.end method
