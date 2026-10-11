.class public Lcom/cmplay/base/util/n;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 72
    const-string v1, "com.android.vending"

    invoke-static {p0, v1}, Lcom/cmplay/base/util/n;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    const-string v1, "com.google.android.gsf"

    invoke-static {p0, v1}, Lcom/cmplay/base/util/n;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 17
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 28
    :goto_0
    return v0

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x100

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 48
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 58
    .line 59
    invoke-static {p0, p1}, Lcom/cmplay/base/util/n;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 62
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    :cond_0
    invoke-static {p0, v0}, Lcom/cmplay/base/util/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
