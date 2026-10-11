.class Lcom/facebook/a;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private final b:Lcom/facebook/a$a;

.field private c:Lcom/facebook/t;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/facebook/a$a;

    invoke-direct {v1}, Lcom/facebook/a$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/facebook/a;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/a$a;)V

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/a$a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    .line 43
    iput-object p2, p0, Lcom/facebook/a;->b:Lcom/facebook/a$a;

    .line 44
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()Lcom/facebook/AccessToken;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {v2}, Lcom/facebook/AccessToken;->a(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/facebook/l;->c()Z

    move-result v0

    return v0
.end method

.method private f()Lcom/facebook/AccessToken;
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lcom/facebook/a;->g()Lcom/facebook/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/t;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/facebook/t;->a(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v1}, Lcom/facebook/AccessToken;->a(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 124
    :cond_0
    return-object v0
.end method

.method private g()Lcom/facebook/t;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/t;

    if-nez v0, :cond_1

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/t;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/a;->b:Lcom/facebook/a$a;

    invoke-virtual {v0}, Lcom/facebook/a$a;->a()Lcom/facebook/t;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/t;

    .line 133
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/facebook/a;->c:Lcom/facebook/t;

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/facebook/AccessToken;
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/facebook/l;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/facebook/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/facebook/a;->d()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/facebook/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/facebook/a;->f()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/facebook/a;->a(Lcom/facebook/AccessToken;)V

    .line 69
    invoke-direct {p0}, Lcom/facebook/a;->g()Lcom/facebook/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/t;->b()V

    goto :goto_0
.end method

.method public a(Lcom/facebook/AccessToken;)V
    .locals 3

    .prologue
    .line 77
    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lcom/facebook/internal/ab;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    invoke-direct {p0}, Lcom/facebook/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/facebook/a;->g()Lcom/facebook/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/t;->b()V

    .line 94
    :cond_0
    return-void
.end method
