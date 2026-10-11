.class public Lcom/cmcm/dmc/sdk/e/i;
.super Lcom/cmcm/dmc/sdk/e/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/e/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/dmc/sdk/e/i$a;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/e/i;->b:J

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/i;)J
    .locals 2

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/e/i;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/i;J)J
    .locals 1

    iput-wide p1, p0, Lcom/cmcm/dmc/sdk/e/i;->b:J

    return-wide p1
.end method

.method private a(IJJ)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "microphone"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "startTime"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "endTime"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReceiverHeadsetPlug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/e/i;IJJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cmcm/dmc/sdk/e/i;->a(IJJ)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/e/i;->b:J

    new-instance v0, Lcom/cmcm/dmc/sdk/e/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/dmc/sdk/e/i$a;-><init>(Lcom/cmcm/dmc/sdk/e/i;Lcom/cmcm/dmc/sdk/e/i$1;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/e/i;->a:Lcom/cmcm/dmc/sdk/e/i$a;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i;->a:Lcom/cmcm/dmc/sdk/e/i$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/cmcm/dmc/sdk/e/i;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "headset_plug"

    return-object v0
.end method

.method protected g()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i;->a:Lcom/cmcm/dmc/sdk/e/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i;->a:Lcom/cmcm/dmc/sdk/e/i$a;

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/e/i;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
