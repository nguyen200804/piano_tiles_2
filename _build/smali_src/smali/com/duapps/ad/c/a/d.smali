.class public Lcom/duapps/ad/c/a/d;
.super Landroid/os/Handler;
.source "StrategyPuller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/c/a/d$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/duapps/ad/c/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/c/a/d;->b:Ljava/lang/String;

    .line 46
    const-string v0, "http://api.mobula.sdk.duapps.col/adunion/slot/getSrcPrio?"

    sput-object v0, Lcom/duapps/ad/c/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/duapps/ad/c/a/d;->d()V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    const-string v0, "isPkgT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->f(Landroid/content/Context;Z)V

    .line 121
    const-string v0, "logPriority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;I)V

    .line 122
    const-string v0, "isPT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "isPT"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->g(Landroid/content/Context;Z)V

    .line 123
    const-string v0, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSrc logPriority :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "logPriority"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "imId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    :try_start_0
    const-string v0, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from server Inmobi ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 128
    new-instance v0, Ljava/lang/String;

    const-string v5, "8a1n9d0i3c1y0c2f"

    const-string v6, "8a1n9d0i3c1y0c2f"

    invoke-static {v5, v6, v4}, Lcom/duapps/ad/base/b;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AES Inmobi ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :goto_2
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSrc Inmobi ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "tcppCacheTime"

    invoke-virtual {p1, v0, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 136
    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    .line 137
    mul-long/2addr v4, v10

    mul-long/2addr v4, v12

    .line 139
    :cond_0
    invoke-static {p0, v4, v5}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;J)V

    .line 141
    const-string v0, "tcppPullTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-string v0, "tcppPullTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    sget-object v3, Lcom/duapps/ad/c/a/d;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tcppPullTime  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz v0, :cond_1

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_2

    .line 146
    :cond_1
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->g(Landroid/content/Context;I)V

    .line 150
    :cond_2
    const-string v0, "fbct"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 151
    const-string v3, "StrategyPuller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fbct  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-lez v0, :cond_3

    .line 153
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->h(Landroid/content/Context;I)V

    .line 159
    :cond_3
    const-string v0, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSrcPrio --> tcppCacheTime : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "isAllowC"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    move v0, v1

    .line 163
    :goto_3
    const-string v3, "isAllowT"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_9

    move v3, v1

    .line 164
    :goto_4
    const-string v4, "isAllowS"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_a

    move v4, v1

    .line 165
    :goto_5
    const-string v5, "nuInterval"

    invoke-virtual {p1, v5, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 168
    cmp-long v5, v6, v8

    if-gtz v5, :cond_b

    .line 169
    const-wide/32 v6, 0xdbba00

    .line 174
    :goto_6
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;Z)V

    .line 175
    invoke-static {p0, v3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Z)V

    .line 176
    invoke-static {p0, v4}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Z)V

    .line 177
    invoke-static {p0, v6, v7}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;J)V

    .line 180
    const-string v0, "itwd"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v1

    .line 181
    :goto_7
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Z)V

    .line 184
    const-string v0, "priorityBrowsers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 186
    const-string v3, "StrategyPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "browserArray : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    :cond_4
    const-string v0, "pk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    const-string v0, "exg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v3, "StrategyPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string v3, "StrategyPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p0, v0}, Lcom/duapps/ad/base/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    const-string v0, "isSus"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    .line 202
    :goto_8
    const-string v0, "StrategyPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p0, v1}, Lcom/duapps/ad/base/m;->e(Landroid/content/Context;Z)V

    .line 206
    return-void

    :cond_5
    move v0, v2

    .line 120
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 122
    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 162
    goto/16 :goto_3

    :cond_9
    move v3, v2

    .line 163
    goto/16 :goto_4

    :cond_a
    move v4, v2

    .line 164
    goto/16 :goto_5

    .line 171
    :cond_b
    mul-long/2addr v6, v10

    mul-long/2addr v6, v12

    goto/16 :goto_6

    :cond_c
    move v0, v2

    .line 180
    goto/16 :goto_7

    :cond_d
    move v1, v2

    .line 201
    goto :goto_8

    .line 130
    :catch_0
    move-exception v0

    move-object v0, v3

    goto/16 :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/duapps/ad/c/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/duapps/ad/c/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->t(Landroid/content/Context;)J

    move-result-wide v0

    .line 94
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;J)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1499700

    const-wide/16 v0, 0x0

    .line 100
    iget-object v2, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/duapps/ad/base/m;->e(Landroid/content/Context;)J

    move-result-wide v2

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    sub-long v2, v4, v2

    .line 107
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 108
    iget-object v0, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_1
    cmp-long v4, v2, v6

    if-gtz v4, :cond_2

    .line 113
    sub-long v0, v6, v2

    .line 115
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/duapps/ad/c/a/d;->sendEmptyMessageDelayed(IJ)Z

    .line 116
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/duapps/ad/c/a/d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x5

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    .line 71
    if-ne v3, v0, :cond_2

    .line 72
    invoke-virtual {p0, v3}, Lcom/duapps/ad/c/a/d;->removeMessages(I)V

    .line 74
    new-instance v0, Lcom/duapps/ad/c/a/d$a;

    iget-object v1, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/c/a/d$a;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 76
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    .line 80
    :goto_0
    const-wide/32 v0, 0x1499700

    invoke-virtual {p0, v3, v0, v1}, Lcom/duapps/ad/c/a/d;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0, v0}, Lcom/duapps/ad/c/a/d;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 81
    :cond_2
    if-ne v4, v0, :cond_0

    .line 82
    invoke-virtual {p0, v4}, Lcom/duapps/ad/c/a/d;->removeMessages(I)V

    .line 83
    iget-object v0, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->n(Landroid/content/Context;)J

    move-result-wide v0

    .line 84
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/duapps/ad/c/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/duapps/ad/c/a/e;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/duapps/ad/c/a/e;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v4, v0, v1}, Lcom/duapps/ad/c/a/d;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
