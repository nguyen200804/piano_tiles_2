.class public Lcom/cmplay/webview/ipc/a/b;
.super Ljava/lang/Object;
.source "WebConfigManager.java"

# interfaces
.implements Lcom/cmplay/webview/ipc/a/a;


# static fields
.field private static d:Lcom/cmplay/webview/ipc/a/b;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private c:Lcom/cmplay/webview/ipc/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebConfigManager\u3000RuntimeCheck.IsWebProcess() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.cmplay.tiles4.web"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->b:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->a:Landroid/content/SharedPreferences;

    .line 38
    :cond_0
    new-instance v0, Lcom/cmplay/webview/ipc/a/c;

    invoke-direct {v0}, Lcom/cmplay/webview/ipc/a/c;-><init>()V

    iput-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    .line 39
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/webview/ipc/a/b;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/cmplay/webview/ipc/a/b;->d:Lcom/cmplay/webview/ipc/a/b;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/cmplay/webview/ipc/a/b;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/cmplay/webview/ipc/a/b;->d:Lcom/cmplay/webview/ipc/a/b;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/cmplay/webview/ipc/a/b;

    invoke-direct {v0, p0}, Lcom/cmplay/webview/ipc/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/webview/ipc/a/b;->d:Lcom/cmplay/webview/ipc/a/b;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/cmplay/webview/ipc/a/b;->d:Lcom/cmplay/webview/ipc/a/b;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 141
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private f()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/cmplay/i/c;->e()V

    .line 55
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/webview/ipc/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/webview/ipc/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/webview/ipc/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string v3, "state"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 177
    const-string v4, "id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v1, "name"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 181
    const-string v2, "state"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v0, "data"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v0, "login_use_info"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "ly"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 162
    const-string v0, "login_game_service"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 166
    const-string v0, "login_game_service"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/webview/ipc/a/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    const-string v0, "song_lock_data"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    const-string v0, "song_lock_data"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/webview/ipc/a/a;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/cmplay/webview/ipc/a/a;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/webview/ipc/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/cmplay/i/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/cmplay/webview/ipc/a/b;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-static {v0}, Lcom/cmplay/webview/ipc/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/cmplay/webview/ipc/a/b;->c:Lcom/cmplay/webview/ipc/a/a;

    invoke-interface {v0, p1, p2}, Lcom/cmplay/webview/ipc/a/a;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    const-string v0, "login_use_info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    const-string v0, "login_status"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    const-string v0, "login_status"

    const-string v1, "{ \"state\": -1 }"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    const-string v0, "share_status"

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/webview/ipc/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    const-string v0, "share_status"

    const-string v1, "{ \"state\": 0 }"

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/webview/ipc/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
