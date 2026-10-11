.class public Lcom/cmcm/orion/utils/internal/ReceiverUtils;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverUtils.java"


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/cmcm/orion/utils/internal/ReceiverUtils;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->a:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->b:Lcom/cmcm/orion/utils/internal/ReceiverUtils;

    if-nez v1, :cond_1

    .line 63
    new-instance v1, Lcom/cmcm/orion/utils/internal/ReceiverUtils;

    invoke-direct {v1}, Lcom/cmcm/orion/utils/internal/ReceiverUtils;-><init>()V

    sput-object v1, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->b:Lcom/cmcm/orion/utils/internal/ReceiverUtils;

    .line 65
    :cond_1
    sget-object v1, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->b:Lcom/cmcm/orion/utils/internal/ReceiverUtils;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v0, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lcom/cmcm/orion/utils/internal/ReceiverUtils;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method
