.class public Lcom/cmplay/base/util/webview/ipc/IpcProviderHandlerFactory;
.super Ljava/lang/Object;
.source "IpcProviderHandlerFactory.java"


# static fields
.field public static final HANDLER_TYPE_BASE:I = 0x0

.field public static final HANDLER_TYPE_CLOUD_CFG:I = 0x4

.field public static final HANDLER_TYPE_SERVICE_CFG_MGR:I = 0x2

.field public static final HANDLER_TYPE_SYNC_IPC:I = 0x1

.field public static final HANDLER_TYPE_WEB_CFG:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHandler(I)Lcom/cmplay/base/util/webview/ipc/IIpcProviderHandler;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    new-instance v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;

    invoke-direct {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;-><init>()V

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
