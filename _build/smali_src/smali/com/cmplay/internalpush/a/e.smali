.class public Lcom/cmplay/internalpush/a/e;
.super Ljava/lang/Object;
.source "SharepreferrenceDown.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-wide p1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/a/e;->a:Landroid/content/Context;

    .line 20
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;

    .line 21
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
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 70
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/cmplay/internalpush/a/e;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 94
    :goto_0
    monitor-exit v1

    return-void

    .line 91
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-static {v0}, Lcom/cmplay/internalpush/a/e;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/cmplay/internalpush/a/e;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lcom/cmplay/internalpush/a/e;->a:Landroid/content/Context;

    const-string v1, "innerpushvideo_save_data2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/a/e;->b:Landroid/content/SharedPreferences;

    .line 28
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/a/e;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 58
    const-class v1, Lcom/cmplay/internalpush/a/e;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 65
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-static {v0}, Lcom/cmplay/internalpush/a/e;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-static {v0}, Lcom/cmplay/internalpush/a/e;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
