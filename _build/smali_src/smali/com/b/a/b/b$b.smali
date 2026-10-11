.class public Lcom/b/a/b/b$b;
.super Lb/a/aq;
.source "OnlineConfigAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/b/a/b/b;


# direct methods
.method public constructor <init>(Lcom/b/a/b/b;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    invoke-direct {p0}, Lb/a/aq;-><init>()V

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    .line 126
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v0, Lcom/b/a/b/b$a;

    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    iget-object v2, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/b/a/b/b$a;-><init>(Lcom/b/a/b/b;Landroid/content/Context;)V

    .line 147
    const-class v1, Lcom/b/a/b/c;

    invoke-virtual {p0, v0, v1}, Lcom/b/a/b/b$b;->a(Lb/a/ar;Ljava/lang/Class;)Lb/a/as;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/c;

    .line 149
    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    invoke-static {v0, v3}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;Lorg/json/JSONObject;)V

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v1, v0, Lcom/b/a/b/c;->b:Z

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    invoke-static {v1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;)Lcom/b/a/b/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    invoke-static {v1}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;)Lcom/b/a/b/d;

    move-result-object v1

    iget v2, v0, Lcom/b/a/b/c;->c:I

    iget v3, v0, Lcom/b/a/b/c;->d:I

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/b/a/b/d;->a(IJ)V

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    iget-object v2, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;Landroid/content/Context;Lcom/b/a/b/c;)V

    .line 166
    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    iget-object v2, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/b/a/b/b;->b(Lcom/b/a/b/b;Landroid/content/Context;Lcom/b/a/b/c;)V

    .line 167
    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    iget-object v0, v0, Lcom/b/a/b/c;->a:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    invoke-static {v0, v3}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 14

    .prologue
    const/4 v1, 0x1

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "MobclickAgent"

    const-string v1, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 180
    :cond_1
    sget-boolean v0, Lb/a/ap;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/ao;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    .line 183
    :goto_1
    if-nez v3, :cond_7

    .line 184
    iget-object v0, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/k;->i()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    const-string v4, "last_test_t"

    invoke-interface {v0, v4, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 187
    sub-long v4, v6, v4

    const-string v8, "oc_req_i"

    const-wide/32 v10, 0x927c0

    invoke-interface {v0, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_7

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "last_test_t"

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    .line 193
    :goto_2
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 195
    :cond_2
    new-instance v0, Lcom/b/a/b/b$c;

    iget-object v3, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    iget-object v4, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/b/a/b/b$c;-><init>(Lcom/b/a/b/b;Landroid/content/Context;)V

    .line 196
    const-class v3, Lcom/b/a/b/b$d;

    invoke-virtual {p0, v0, v3}, Lcom/b/a/b/b$b;->a(Lb/a/ar;Ljava/lang/Class;)Lb/a/as;

    move-result-object v0

    check-cast v0, Lcom/b/a/b/b$d;

    .line 198
    if-eqz v0, :cond_0

    .line 202
    iget-object v3, p0, Lcom/b/a/b/b$b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/k;->i()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 205
    iget-wide v4, v0, Lcom/b/a/b/b$d;->a:J

    const-string v6, "oc_mdf_t"

    invoke-interface {v3, v6, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 209
    :goto_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 210
    iget-wide v4, v0, Lcom/b/a/b/b$d;->b:J

    cmp-long v4, v4, v12

    if-ltz v4, :cond_3

    .line 211
    const-string v4, "oc_req_i"

    iget-wide v6, v0, Lcom/b/a/b/b$d;->b:J

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 213
    :cond_3
    iget-wide v4, v0, Lcom/b/a/b/b$d;->a:J

    cmp-long v4, v4, v12

    if-ltz v4, :cond_4

    .line 214
    const-string v4, "oc_mdf_told"

    const-string v5, "oc_mdf_t"

    invoke-interface {v3, v5, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 215
    const-string v3, "oc_mdf_t"

    iget-wide v4, v0, Lcom/b/a/b/b$d;->a:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v1

    .line 219
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 180
    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/b/a/b/b$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/b/a/b/b$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/b/a/b/b$b;->b:Lcom/b/a/b/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/b/a/b/b;->a(Lcom/b/a/b/b;Lorg/json/JSONObject;)V

    .line 137
    const-string v1, "MobclickAgent"

    const-string v2, "request online config error"

    invoke-static {v1, v2, v0}, Lb/a/ap;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
