.class Lcom/jirbo/adcolony/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/String;

.field static b:Z


# direct methods
.method static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 26
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/f;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 35
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/f;->d()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "unknown"

    goto :goto_0
.end method

.method static c()I
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 42
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_0
.end method

.method static d()J
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 48
    const/high16 v1, 0x100000

    .line 49
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v1

    div-long v0, v2, v0

    return-wide v0
.end method

.method static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static f()I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method static g()I
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    return-object v0
.end method

.method static i()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    sget-object v2, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v2, :cond_1

    move v0, v1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/t;->V:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/jirbo/adcolony/t;->V:Ljava/lang/String;

    const-string v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/f;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 81
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v3, v4

    .line 82
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v2, v4, v2

    .line 83
    mul-float/2addr v3, v3

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 86
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, ""

    return-object v0
.end method

.method static n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
