.class public Lcom/cmcm/orion/picks/impl/VastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VastReceiver.java"


# static fields
.field private static a:Lcom/cmcm/orion/picks/impl/VastReceiver;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmcm/orion/picks/impl/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->b:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 100
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/cmcm/orion/picks/impl/VastReceiver;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/impl/VastReceiver;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 2

    .prologue
    .line 34
    if-eqz p0, :cond_0

    .line 35
    sget-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 116
    if-eqz p0, :cond_0

    sget-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->a:Lcom/cmcm/orion/picks/impl/VastReceiver;

    .line 120
    :cond_0
    return-void
.end method

.method public static b(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 54
    sget-object v0, Lcom/cmcm/orion/picks/impl/VastReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/a$a;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cmcm/orion/picks/impl/VastReceiver;->c:Z

    .line 61
    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->c()V

    goto :goto_0

    .line 62
    :cond_1
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    sget-boolean v1, Lcom/cmcm/orion/picks/impl/VastReceiver;->c:Z

    if-nez v1, :cond_0

    .line 64
    sput-boolean v2, Lcom/cmcm/orion/picks/impl/VastReceiver;->c:Z

    .line 65
    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->c_()V

    goto :goto_0

    .line 67
    :cond_2
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->e()V

    goto :goto_0

    .line 69
    :cond_3
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-boolean v1, Lcom/cmcm/orion/picks/impl/VastReceiver;->c:Z

    if-nez v1, :cond_0

    .line 1083
    if-eqz p1, :cond_5

    .line 1087
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1088
    if-eqz v1, :cond_5

    .line 1089
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    .line 1090
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 72
    :goto_1
    if-nez v1, :cond_0

    .line 73
    sput-boolean v2, Lcom/cmcm/orion/picks/impl/VastReceiver;->c:Z

    .line 74
    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->c_()V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1092
    goto :goto_1

    :cond_5
    move v1, v2

    .line 1095
    goto :goto_1

    .line 80
    :cond_6
    return-void
.end method
