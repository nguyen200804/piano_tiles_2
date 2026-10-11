.class Lcom/cmcm/dmc/sdk/e/g$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/g$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/cmcm/dmc/sdk/e/g$a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/g$a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0xc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->a:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cmcm/dmc/sdk/e/g$b;

    iget-object v6, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v6, v6, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    invoke-direct {v3, v6, v1, v4, v5}, Lcom/cmcm/dmc/sdk/e/g$b;-><init>(Lcom/cmcm/dmc/sdk/e/g;Landroid/bluetooth/BluetoothDevice;J)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/e/g$b;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/g$b;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v6, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmcm/dmc/sdk/e/g$b;

    invoke-virtual {v2}, Lcom/cmcm/dmc/sdk/e/g$b;->b()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/cmcm/dmc/sdk/e/g;->a(Lcom/cmcm/dmc/sdk/e/g;Landroid/bluetooth/BluetoothDevice;JJ)V

    :cond_3
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$a$1;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g$a;->a:Lcom/cmcm/dmc/sdk/e/g;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
