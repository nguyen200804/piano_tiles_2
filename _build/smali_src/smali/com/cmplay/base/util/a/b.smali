.class public Lcom/cmplay/base/util/a/b;
.super Lcom/cmplay/base/util/e;
.source "SharePreferenceHelper.java"


# direct methods
.method protected static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/cmplay/base/util/a/b;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/cmplay/base/util/a/b;->a:Landroid/content/Context;

    const-string v1, "apk_download_save_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/a/b;->b:Landroid/content/SharedPreferences;

    .line 25
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/a/b;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/cmplay/base/util/a/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/a/b;->a:Landroid/content/Context;

    .line 18
    invoke-static {}, Lcom/cmplay/base/util/a/b;->a()Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/cmplay/base/util/a/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-static {v0}, Lcom/cmplay/base/util/a/b;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
