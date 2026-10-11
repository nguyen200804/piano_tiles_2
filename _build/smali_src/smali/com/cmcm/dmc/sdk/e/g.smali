.class public Lcom/cmcm/dmc/sdk/e/g;
.super Lcom/cmcm/dmc/sdk/e/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/e/g$a;,
        Lcom/cmcm/dmc/sdk/e/g$b;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/dmc/sdk/e/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/cmcm/dmc/sdk/e/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;JJ)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deviceName"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceAddress"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "deviceCategory"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    const-string v1, "deviceBluetoothType"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "startTime"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "endTime"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReceiverBluetoothDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/g;Landroid/bluetooth/BluetoothDevice;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cmcm/dmc/sdk/e/g;->a(Landroid/bluetooth/BluetoothDevice;JJ)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    :goto_0
    new-instance v0, Lcom/cmcm/dmc/sdk/e/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/dmc/sdk/e/g$a;-><init>(Lcom/cmcm/dmc/sdk/e/g;Lcom/cmcm/dmc/sdk/e/g$1;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/g;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    invoke-virtual {p0, v1, v0}, Lcom/cmcm/dmc/sdk/e/g;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth"

    return-object v0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->b:Lcom/cmcm/dmc/sdk/e/g$a;

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/g;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method
