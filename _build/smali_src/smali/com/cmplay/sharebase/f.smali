.class public Lcom/cmplay/sharebase/f;
.super Ljava/lang/Object;
.source "TokenKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/sharebase/f$a;,
        Lcom/cmplay/sharebase/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/cmplay/sharebase/f$a;

    invoke-direct {v0, p0}, Lcom/cmplay/sharebase/f$a;-><init>(Lcom/cmplay/sharebase/f;)V

    .line 124
    const-string v3, "access_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cmplay/sharebase/f$a;->a:Ljava/lang/String;

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "expires_in"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/cmplay/sharebase/f$a;->b:J

    .line 126
    const-string v3, "refresh_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cmplay/sharebase/f$a;->c:Ljava/lang/String;

    .line 127
    const-string v3, "openid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/cmplay/sharebase/f$a;->d:Ljava/lang/String;

    .line 128
    const-string v3, "unionid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cmplay/sharebase/f$a;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 133
    goto :goto_0
.end method

.method public static a()Lcom/cmplay/sharebase/f;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/cmplay/sharebase/f$b;->a:Lcom/cmplay/sharebase/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0, p3}, Lcom/cmplay/sharebase/f;->a(Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/cmplay/sharebase/f$a;->f:J

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/cmplay/sharebase/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmplay/sharebase/f$a;)V

    .line 70
    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const-string v0, "user_info_name.xml"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    const-string v1, "user_info_json_content"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 57
    const-string v0, "user_info_name.xml"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    const-string v1, "user_info_last_request_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "user_info_name.xml"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    const-string v1, "user_info_json_content"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/cmplay/sharebase/f$a;)V
    .locals 4

    .prologue
    .line 74
    if-nez p3, :cond_0

    .line 88
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechat_token_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    const-string v1, "key_access_token"

    iget-object v2, p3, Lcom/cmplay/sharebase/f$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v1, "key_refresh_token"

    iget-object v2, p3, Lcom/cmplay/sharebase/f$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v1, "key_expires"

    iget-wide v2, p3, Lcom/cmplay/sharebase/f$a;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v1, "key_open_id"

    iget-object v2, p3, Lcom/cmplay/sharebase/f$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v1, "key_union_id"

    iget-object v2, p3, Lcom/cmplay/sharebase/f$a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v1, "key_request_access_token_time"

    iget-wide v2, p3, Lcom/cmplay/sharebase/f$a;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 52
    const-string v0, "user_info_name.xml"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    const-string v1, "user_info_last_request_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechat_token_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    const-wide v2, 0x9a7ec800L

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    .line 96
    const-string v1, "key_refresh_token_endtime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Lcom/cmplay/sharebase/f$a;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wechat_token_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    const-string v1, "key_access_token"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    if-nez v3, :cond_0

    .line 117
    :goto_0
    return-object v0

    .line 109
    :cond_0
    new-instance v1, Lcom/cmplay/sharebase/f$a;

    invoke-direct {v1, p0}, Lcom/cmplay/sharebase/f$a;-><init>(Lcom/cmplay/sharebase/f;)V

    .line 110
    const-string v4, "key_expires"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/cmplay/sharebase/f$a;->b:J

    .line 111
    iput-object v3, v1, Lcom/cmplay/sharebase/f$a;->a:Ljava/lang/String;

    .line 112
    const-string v3, "key_refresh_token"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cmplay/sharebase/f$a;->c:Ljava/lang/String;

    .line 113
    const-string v3, "key_open_id"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cmplay/sharebase/f$a;->d:Ljava/lang/String;

    .line 114
    const-string v3, "key_union_id"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cmplay/sharebase/f$a;->e:Ljava/lang/String;

    .line 115
    const-string v0, "key_request_access_token_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/cmplay/sharebase/f$a;->f:J

    .line 116
    const-string v0, "key_refresh_token_endtime"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/cmplay/sharebase/f$a;->g:J

    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechat_token_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method
