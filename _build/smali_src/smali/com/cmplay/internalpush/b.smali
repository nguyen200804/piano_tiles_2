.class public Lcom/cmplay/internalpush/b;
.super Ljava/lang/Object;
.source "CMPPromotion.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/n;->a(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/cmplay/internalpush/p;->a()Lcom/cmplay/internalpush/p;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/data/h;

    invoke-direct {v1, p1}, Lcom/cmplay/internalpush/data/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/internalpush/p;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 113
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 262
    invoke-static {p0}, Lcom/cmplay/internalpush/video/e;->a(I)Z

    move-result v0

    return v0
.end method

.method public static a(IZ)Z
    .locals 1

    .prologue
    .line 247
    invoke-static {p0, p1}, Lcom/cmplay/internalpush/video/e;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-static {}, Lcom/cmplay/internalpush/j;->a()Lcom/cmplay/internalpush/j;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/cmplay/internalpush/j;->a(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;IZ)Z
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/cmplay/internalpush/n;->a(Landroid/content/Context;IZ)Z

    move-result v0

    .line 45
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.canShowOpenScreen  scenes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    isNewPlayer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   canShowOpenScreen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/cmplay/internalpush/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/cmplay/internalpush/p;->a()Lcom/cmplay/internalpush/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/cmplay/internalpush/j;->a()Lcom/cmplay/internalpush/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/j;->a(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    const-string v0, "internal_push"

    const-string v1, "CMPPromotion.clickSettingCard"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/data/i;

    invoke-direct {v1, p1}, Lcom/cmplay/internalpush/data/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/internalpush/s;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 171
    return-void
.end method

.method public static b(IZ)Z
    .locals 1

    .prologue
    .line 255
    invoke-static {p0, p1}, Lcom/cmplay/internalpush/video/e;->b(IZ)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;IZ)Z
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/cmplay/internalpush/p;->a()Lcom/cmplay/internalpush/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/cmplay/internalpush/p;->a(Landroid/content/Context;IZ)Z

    move-result v0

    .line 84
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.canShowResultCard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    const-string v0, "internal_push"

    const-string v1, "CMPPromotion.clickFamilyGameCard"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/data/e;

    invoke-direct {v1, p1}, Lcom/cmplay/internalpush/data/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/internalpush/g;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 222
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 121
    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/s;->a(Landroid/content/Context;)Z

    move-result v0

    .line 122
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.canShowSettingCardRedDot  \u8bbe\u7f6e\u9875\u662f\u5426\u6709\u7ea2\u70b9:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/cmplay/internalpush/k;->e:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/internalpush/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/internalpush/g;->d(Landroid/content/Context;)Z

    move-result v1

    .line 126
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 127
    :goto_0
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMPPromotion.canShowSettingCardRedDot   \u5bb6\u65cf\u6e38\u620f\u662f\u5426\u5c55\u793a\u7ea2\u70b9\u4f18\u5148:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.canShowSettingCardRedDot \u6700\u7ec8\u4f18\u5148\u7ea7\u5c55\u793a\u7ea2\u70b9:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/s;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 231
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMPPromotion.isInnerPushAppInstalled  jsonDataForShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    .line 235
    :cond_0
    new-instance v0, Lcom/cmplay/internalpush/data/d;

    invoke-direct {v0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 236
    invoke-virtual {v0, p1}, Lcom/cmplay/internalpush/data/d;->a(Ljava/lang/String;)V

    .line 237
    invoke-static {p0, v0}, Lcom/cmplay/internalpush/a/b;->c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z

    move-result v0

    .line 238
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.isInnerPushAppInstalled  isInstalled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSettingCardData  data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 5

    .prologue
    .line 180
    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/g;->a(Landroid/content/Context;)Z

    move-result v0

    .line 181
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.canShowFamilyGamesRedDot  \u5bb6\u65cf\u6e38\u620f\u662f\u5426\u6709\u7ea2\u70b9:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/cmplay/internalpush/k;->d:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/internalpush/s;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cmplay/internalpush/g;->d(Landroid/content/Context;)Z

    move-result v1

    .line 185
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 186
    :goto_0
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMPPromotion.canShowFamilyGamesRedDot   \u5bb6\u65cf\u6e38\u620f\u662f\u5426\u5c55\u793a\u7ea2\u70b9\u4f18\u5148:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMPPromotion.canShowFamilyGamesRedDot \u6700\u7ec8\u4f18\u5148\u7ea7\u5c55\u793a\u7ea2\u70b9:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/g;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    const-string v0, "internal_push"

    const-string v1, "CMPPromotion.getFamilyGamesData"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
