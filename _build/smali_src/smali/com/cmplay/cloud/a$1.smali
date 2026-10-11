.class Lcom/cmplay/cloud/a$1;
.super Landroid/os/Handler;
.source "CloudConfigGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/cloud/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/a;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmplay/cloud/a$1;->a:Lcom/cmplay/cloud/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/cloud/a$1;->a:Lcom/cmplay/cloud/a;

    invoke-static {v0}, Lcom/cmplay/cloud/a;->a(Lcom/cmplay/cloud/a;)Lcom/cmplay/cloud/c;

    move-result-object v1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/cmplay/cloud/c;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/cmplay/cloud/a$1;->a:Lcom/cmplay/cloud/a;

    invoke-static {v0}, Lcom/cmplay/cloud/a;->a(Lcom/cmplay/cloud/a;)Lcom/cmplay/cloud/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/cmplay/cloud/c;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
