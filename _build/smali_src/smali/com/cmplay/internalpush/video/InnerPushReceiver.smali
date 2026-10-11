.class public Lcom/cmplay/internalpush/video/InnerPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InnerPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/video/InnerPushReceiver$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/internalpush/video/InnerPushReceiver$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Lcom/cmplay/internalpush/video/InnerPushReceiver$a;)V
    .locals 2

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    sget-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    if-eqz p0, :cond_0

    sget-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a:Lcom/cmplay/internalpush/video/InnerPushReceiver;

    .line 92
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lcom/cmplay/internalpush/video/InnerPushReceiver$a;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    sget-object v0, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/video/InnerPushReceiver$a;

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v0, p2}, Lcom/cmplay/internalpush/video/InnerPushReceiver$a;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    :cond_1
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v0, p2}, Lcom/cmplay/internalpush/video/InnerPushReceiver$a;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 59
    invoke-interface {v0, p2}, Lcom/cmplay/internalpush/video/InnerPushReceiver$a;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-interface {v0, p2}, Lcom/cmplay/internalpush/video/InnerPushReceiver$a;->d(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_4
    return-void
.end method
