.class public final Lcom/cmcm/orion/picks/c/a;
.super Ljava/lang/Object;
.source "MarketUtils.java"


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/c/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method static synthetic a(ILjava/lang/String;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-static/range {p0 .. p5}, Lcom/cmcm/orion/picks/c/a;->b(ILjava/lang/String;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 3

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/cmcm/orion/picks/a/d;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/a/d;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 58
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/cmcm/orion/picks/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_2

    .line 60
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_4

    .line 62
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p1}, Lcom/cmcm/orion/picks/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    new-instance v1, Lcom/cmcm/orion/picks/c/a$1;

    invoke-direct {v1}, Lcom/cmcm/orion/picks/c/a$1;-><init>()V

    invoke-static {v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 75
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/webview/PicksBrowser;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-static {p1, p2}, Lcom/cmcm/orion/picks/c/a;->b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p1, p0, p2}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 92
    const-string v0, "url_redirected"

    const-string v1, ""

    invoke-static {v0, p2, p3, v1, v2}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 95
    :cond_1
    const/16 v0, 0xa

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cmcm/orion/picks/c/a;->b(ILjava/lang/String;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0, p0, p2}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/cmcm/orion/picks/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    invoke-static {v0, p0, p2}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 103
    const-string v0, "url_redirected"

    const-string v1, ""

    invoke-static {v0, p2, p3, v1, v2}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1171
    :cond_3
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1172
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1175
    :cond_4
    invoke-static {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(Landroid/content/Context;)V

    .line 106
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 107
    new-instance v7, Lcom/cmcm/orion/utils/internal/d;

    new-instance v0, Lcom/cmcm/orion/picks/c/a$2;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/orion/picks/c/a$2;-><init>(Landroid/content/Context;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, p1, v0}, Lcom/cmcm/orion/utils/internal/d;-><init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 135
    invoke-virtual {v7}, Lcom/cmcm/orion/utils/internal/d;->a()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 179
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 180
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-static {p0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b(Landroid/content/Context;)V

    .line 185
    sget-boolean v0, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/cmcm/orion/picks/c/a;->b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)Z

    move-result v0

    return v0
.end method

.method private static b(ILjava/lang/String;JLcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string v0, "rt"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "re"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v2, "ru"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    const-string v0, "click_failed"

    const-string v2, ""

    invoke-static {v0, p4, p5, v2, v1}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onGetGooglePlayUrl: e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)Z
    .locals 2

    .prologue
    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
