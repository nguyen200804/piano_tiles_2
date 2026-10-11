.class public Lcom/cmplay/b/d;
.super Ljava/lang/Object;
.source "AppCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/b/d$a;
    }
.end annotation


# direct methods
.method public static a(I)I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 112
    const/16 v0, 0xb

    .line 118
    :goto_0
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 114
    const/16 v0, 0xd

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 116
    const/16 v0, 0xc

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JJ)I
    .locals 8

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 58
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 60
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 67
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 70
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 97
    const-string v0, "section_result_card"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 99
    :cond_0
    const-string v0, "section_setting_card"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x2

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "section_battle_card"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v0, 0x3

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "section_popup_card"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const/4 v0, 0x4

    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/b/d$a;)V
    .locals 3

    .prologue
    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 145
    :goto_1
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 146
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/cmplay/b/d$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/cmplay/b/d$a;->a(Ljava/lang/String;)V

    .line 155
    sub-int/2addr v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 156
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    if-nez v0, :cond_0

    move v0, v1

    .line 93
    :goto_0
    return v0

    .line 81
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    move v0, v1

    .line 86
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 90
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    .line 91
    goto :goto_0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v1, "||"

    new-instance v2, Lcom/cmplay/b/d$1;

    invoke-direct {v2, v0}, Lcom/cmplay/b/d$1;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1, v2}, Lcom/cmplay/b/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/b/d$a;)V

    .line 135
    :cond_0
    return-object v0
.end method
