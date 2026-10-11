.class public Lcom/ijinshan/cloudconfig/deepcloudconfig/EnvChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnvChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {}, Lcom/ijinshan/cloudconfig/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p1}, Lcom/ijinshan/cloudconfig/d/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_0
    const-string v1, "com.cleanmaster.mguard_cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.cleanmaster.mguard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    :cond_1
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Ljava/lang/String;)V

    .line 27
    :cond_2
    :goto_0
    return-void

    .line 24
    :cond_3
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Z)V

    goto :goto_0
.end method
