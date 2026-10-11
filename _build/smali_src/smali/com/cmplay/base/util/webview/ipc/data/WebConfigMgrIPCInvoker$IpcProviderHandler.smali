.class public Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;
.super Lcom/cmplay/base/util/webview/ipc/AbsIpcProviderHandler;
.source "WebConfigMgrIPCInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpcProviderHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/AbsIpcProviderHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 35
    const-string v0, "func_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 38
    :pswitch_0
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 41
    :pswitch_1
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 44
    :pswitch_2
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 47
    :pswitch_3
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 51
    :pswitch_4
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :pswitch_5
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->setIntValue(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 59
    :pswitch_6
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->setLongValue(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 63
    :pswitch_7
    invoke-virtual {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker$IpcProviderHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    move-result-object v0

    const-string v1, "arg1"

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->setBooleanValue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
