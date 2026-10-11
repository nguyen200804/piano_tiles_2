.class Lcom/cmcm/dmc/sdk/b/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/b/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/b/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/b/b;->a([F)[F

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/b/b;->b([F)[F

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/b/b;->c([F)[F

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
