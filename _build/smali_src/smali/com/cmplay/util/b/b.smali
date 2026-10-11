.class public Lcom/cmplay/util/b/b;
.super Ljava/lang/Object;
.source "CocosSharedPreferenceHelper.java"


# direct methods
.method public static a(J)V
    .locals 2

    .prologue
    .line 60
    const-string v0, "last_enter_game_time"

    invoke-static {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setLongForKey(Ljava/lang/String;J)V

    .line 61
    return-void
.end method

.method public static a()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 42
    const-string v0, "InstallTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getIntegerForKey(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 43
    mul-long/2addr v0, v4

    .line 44
    invoke-static {v0, v1}, Lcom/cmplay/util/b/b;->c(J)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/util/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 113
    const-string v0, "LevelRecord"

    const-string v4, ""

    invoke-static {v0, v4}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v4, "\\*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 120
    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 121
    new-instance v7, Lcom/cmplay/util/b/c;

    invoke-direct {v7}, Lcom/cmplay/util/b/c;-><init>()V

    .line 122
    const-string v8, "@"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 123
    array-length v8, v6

    const/4 v9, 0x6

    if-lt v8, v9, :cond_1

    .line 125
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/cmplay/util/b/c;->a:I

    .line 126
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/cmplay/util/b/c;->b:I

    .line 127
    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/cmplay/util/b/c;->c:I

    .line 128
    const/4 v8, 0x3

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/cmplay/util/b/c;->d:I

    .line 129
    const/4 v8, 0x4

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcom/cmplay/util/b/c;->e:I

    .line 130
    const/4 v8, 0x5

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v7, Lcom/cmplay/util/b/c;->f:I

    .line 131
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_2
    const-string v1, "ymymym"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " over : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 132
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static b(J)V
    .locals 2

    .prologue
    .line 72
    const-string v0, "last_exit_game_time"

    invoke-static {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setLongForKey(Ljava/lang/String;J)V

    .line 73
    return-void
.end method

.method public static c()I
    .locals 2

    .prologue
    .line 143
    const-string v0, "UserLevel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getIntegerForKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static c(J)Z
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v0, 0x1

    .line 48
    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 51
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 56
    :goto_0
    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 147
    const-string v0, "play_once_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getIntegerForKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 2

    .prologue
    .line 151
    const-string v0, "play_mid_id_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getIntegerForKey(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
