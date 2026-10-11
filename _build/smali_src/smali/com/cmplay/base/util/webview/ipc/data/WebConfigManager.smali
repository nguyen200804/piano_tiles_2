.class public Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;
.super Ljava/lang/Object;
.source "WebConfigManager.java"

# interfaces
.implements Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;


# static fields
.field public static final LOADING_ID:Ljava/lang/String; = "sharepic_loading"

.field public static final WEB_SHAREPREFERENCES_NAME:Ljava/lang/String; = "com.cmplay.base.util.webview.web"

.field private static sInstance:Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;


# instance fields
.field private mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

.field private mShardPreferences:Landroid/content/SharedPreferences;

.field private mStrSharedPreferenceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebConfigManager\u3000RuntimeCheck.IsWebProcess() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.cmplay.base.util.webview.web"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mStrSharedPreferenceName:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mStrSharedPreferenceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mShardPreferences:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    new-instance v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker;

    invoke-direct {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigMgrIPCInvoker;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    .line 33
    return-void
.end method

.method public static applyToEditor(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 135
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getInstanse(Landroid/content/Context;)Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->sInstance:Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->sInstance:Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->sInstance:Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->sInstance:Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/cmplay/base/util/q;->f()V

    .line 49
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mShardPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 63
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 72
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getLongValue(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 54
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setBooleanValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 90
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->applyToEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->setBooleanValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 112
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->applyToEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->setIntValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setLongValue(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 101
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->applyToEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->setLongValue(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/cmplay/base/util/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-static {v0}, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->applyToEditor(Landroid/content/SharedPreferences$Editor;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/cmplay/base/util/webview/ipc/data/WebConfigManager;->mIPCInvoker:Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/base/util/webview/ipc/data/IWebConfigManager;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
