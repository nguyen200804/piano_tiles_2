.class Lcom/cmcm/dmc/sdk/e/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/g;

.field private b:Landroid/bluetooth/BluetoothDevice;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/cmcm/dmc/sdk/e/g;Landroid/bluetooth/BluetoothDevice;J)V
    .locals 1

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/g$b;->a:Lcom/cmcm/dmc/sdk/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/e/g$b;->b:Landroid/bluetooth/BluetoothDevice;

    iput-wide p3, p0, Lcom/cmcm/dmc/sdk/e/g$b;->c:J

    return-void
.end method


# virtual methods
.method public a()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/g$b;->b:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/e/g$b;->c:J

    return-wide v0
.end method
