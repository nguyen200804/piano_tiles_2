.class final Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "PicksTransparentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;-><init>(Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;

    invoke-static {v0, p1}, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a(Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;

    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
