.class public Lcom/cmplay/util/f;
.super Ljava/lang/Object;
.source "ComponentUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 35
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    :goto_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    invoke-static {p1, v1}, Lcom/cmplay/util/f;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 37
    :cond_2
    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
