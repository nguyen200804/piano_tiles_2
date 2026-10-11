.class Lcom/cmplay/cloud/CloudUpdateReceiver$3;
.super Landroid/os/Handler;
.source "CloudUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/cloud/CloudUpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/CloudUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/CloudUpdateReceiver;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/cmplay/cloud/CloudUpdateReceiver$3;->a:Lcom/cmplay/cloud/CloudUpdateReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 131
    :pswitch_0
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/cloud/b;->a(Landroid/content/Context;)Lcom/cmplay/cloud/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/cloud/b;->b()V

    .line 132
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/cmplay/util/c/a/c;

    invoke-direct {v1}, Lcom/cmplay/util/c/a/c;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/util/c/a/c;->a(BLjava/lang/String;)V

    .line 135
    const-string v1, "cfg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after cloud version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
