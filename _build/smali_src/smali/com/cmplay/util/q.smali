.class public Lcom/cmplay/util/q;
.super Ljava/lang/Object;
.source "MusicUnlockHelper.java"


# direct methods
.method public static a(I)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 48
    const-string v1, "LevelRecord"

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    :try_start_0
    const-string v2, "\\*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lt v1, v3, :cond_0

    .line 57
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 58
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 59
    if-eqz v5, :cond_2

    array-length v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x6

    if-ge v6, v7, :cond_3

    .line 57
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_3
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 68
    if-ne v6, p0, :cond_2

    .line 71
    :try_start_2
    const-string v1, "JsInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    const/4 v1, 0x5

    :try_start_3
    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0

    .line 75
    :catch_1
    move-exception v1

    goto :goto_0

    .line 65
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public static b(I)Z
    .locals 2

    .prologue
    .line 85
    invoke-static {p0}, Lcom/cmplay/util/q;->a(I)I

    move-result v0

    .line 86
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 2

    .prologue
    .line 93
    invoke-static {p0}, Lcom/cmplay/util/q;->a(I)I

    move-result v0

    .line 94
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
