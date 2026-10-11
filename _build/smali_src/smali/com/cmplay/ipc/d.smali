.class public Lcom/cmplay/ipc/d;
.super Ljava/lang/Object;
.source "IpcProviderHandlerFactory.java"


# direct methods
.method public static a(I)Lcom/cmplay/ipc/b;
    .locals 1

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Lcom/cmplay/cloud/a/a$a;

    invoke-direct {v0}, Lcom/cmplay/cloud/a/a$a;-><init>()V

    goto :goto_0

    .line 28
    :pswitch_1
    new-instance v0, Lcom/cmplay/webview/ipc/a/c$a;

    invoke-direct {v0}, Lcom/cmplay/webview/ipc/a/c$a;-><init>()V

    goto :goto_0

    .line 30
    :pswitch_2
    new-instance v0, Lcom/cmplay/ipc/SyncIpcProvider$a;

    invoke-direct {v0}, Lcom/cmplay/ipc/SyncIpcProvider$a;-><init>()V

    goto :goto_0

    .line 32
    :pswitch_3
    new-instance v0, Lcom/cmplay/util/b/d$a;

    invoke-direct {v0}, Lcom/cmplay/util/b/d$a;-><init>()V

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
