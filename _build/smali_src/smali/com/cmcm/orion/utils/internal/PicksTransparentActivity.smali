.class public Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;
.super Landroid/app/Activity;
.source "PicksTransparentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 17
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 10
    .line 1039
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1030
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    if-nez v0, :cond_0

    .line 1031
    new-instance v0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;-><init>(Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;B)V

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    .line 1032
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1033
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/PicksTransparentActivity;->a:Lcom/cmcm/orion/utils/internal/PicksTransparentActivity$a;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    :cond_0
    return-void
.end method
