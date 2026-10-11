.class public Lcom/cmplay/internalpush/a/d;
.super Ljava/lang/Object;
.source "SharePreferenceHelper.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return p1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-wide p1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method private static a()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/cmplay/internalpush/a/d;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/a/d;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/cmplay/internalpush/a/d;->a:Landroid/content/Context;

    const-string v1, "openscreen_save_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/a/d;->b:Landroid/content/SharedPreferences;

    .line 39
    :cond_1
    sget-object v0, Lcom/cmplay/internalpush/a/d;->b:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 47
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
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/cmplay/internalpush/a/d;->a:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    .line 29
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
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-static {v0}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-static {v0}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/cmplay/internalpush/a/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-static {v0}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
