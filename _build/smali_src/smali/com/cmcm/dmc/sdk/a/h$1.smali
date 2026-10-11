.class Lcom/cmcm/dmc/sdk/a/h$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/a/h;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/h$1;->a:Lcom/cmcm/dmc/sdk/a/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h$1;->a:Lcom/cmcm/dmc/sdk/a/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/h;->a(Lcom/cmcm/dmc/sdk/a/h;Lcom/cmcm/dmc/sdk/a/e;)V

    return-void
.end method
