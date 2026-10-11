.class public final Lcom/mopub/nativesdk/core/H;
.super Ljava/lang/Object;
.source "StrategyManager.java"


# static fields
.field private static a:Lcom/mopub/nativesdk/core/H;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/mopub/nativesdk/core/y;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativesdk/core/H;->e:I

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativesdk/core/H;->e:I

    .line 36
    iput-object p1, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    .line 37
    const-string v0, "ak.native.sdk"

    const-string v1, "APPID"

    const-string v2, "5745-186"

    invoke-static {p1, v0, v1, v2}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/core/H;->c:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "SUBID"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/H;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/H;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mopub/nativesdk/core/H;->a:Lcom/mopub/nativesdk/core/H;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/mopub/nativesdk/core/H;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/core/H;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/nativesdk/core/H;->a:Lcom/mopub/nativesdk/core/H;

    .line 45
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/H;->a:Lcom/mopub/nativesdk/core/H;

    iput-object p0, v0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    .line 46
    sget-object v0, Lcom/mopub/nativesdk/core/H;->a:Lcom/mopub/nativesdk/core/H;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/H;Lcom/mopub/nativesdk/core/y;)Lcom/mopub/nativesdk/core/y;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/nativesdk/core/H;->d:Lcom/mopub/nativesdk/core/y;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/H;Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;
    .locals 1

    .prologue
    .line 18
    invoke-static {p1}, Lcom/mopub/nativesdk/core/H;->a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return-object v0

    .line 85
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/mopub/nativesdk/core/y;

    invoke-direct {v1}, Lcom/mopub/nativesdk/core/y;-><init>()V

    .line 91
    const-string v3, "sdk"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 92
    const-string v4, "sleep"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 1156
    iput-wide v4, v1, Lcom/mopub/nativesdk/core/y;->i:J

    .line 95
    const-string v3, "bt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 96
    new-instance v4, Lcom/mopub/nativesdk/core/D;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/D;-><init>()V

    .line 97
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 98
    const-string v5, "interval"

    const-wide/32 v6, 0x3f480

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, v4, Lcom/mopub/nativesdk/core/D;->b:J

    .line 99
    const-string v5, "cacheTime"

    const v6, 0xd2f00

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 100
    const-string v5, "cacheNum"

    const/16 v6, 0x3c

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/mopub/nativesdk/core/D;->d:I

    .line 101
    const-string v5, "btNum"

    const/16 v6, 0xa

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/mopub/nativesdk/core/D;->e:I

    .line 2092
    sput-object v4, Lcom/mopub/nativesdk/core/y;->b:Lcom/mopub/nativesdk/core/D;

    .line 105
    const-string v3, "bd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 106
    new-instance v4, Lcom/mopub/nativesdk/core/C;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/C;-><init>()V

    .line 107
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 108
    const-string v5, "interval"

    const-wide/16 v6, 0xe10

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 109
    const-string v5, "dailyNum"

    const/16 v6, 0x18

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 110
    const-string v5, "maxSize"

    const/high16 v6, 0x1e00000

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2100
    sput-object v4, Lcom/mopub/nativesdk/core/y;->c:Lcom/mopub/nativesdk/core/C;

    .line 114
    const-string v3, "noIcon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 115
    new-instance v4, Lcom/mopub/nativesdk/core/G;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/G;-><init>()V

    .line 116
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 117
    const-string v5, "rate"

    const/16 v6, 0x32

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2108
    sput-object v4, Lcom/mopub/nativesdk/core/y;->d:Lcom/mopub/nativesdk/core/G;

    .line 121
    const-string v3, "fScreen"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 122
    new-instance v4, Lcom/mopub/nativesdk/core/B;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/B;-><init>()V

    .line 123
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 124
    const-string v5, "interval"

    const-wide/16 v6, 0x708

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 125
    const-string v5, "dailyNum"

    const/16 v6, 0x30

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 126
    const-string v5, "closeBtn"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 127
    const-string v5, "retryNum"

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 128
    const-string v5, "retryInterval"

    const/16 v6, 0xb4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 129
    const-string v5, "bd"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2116
    sput-object v4, Lcom/mopub/nativesdk/core/y;->e:Lcom/mopub/nativesdk/core/B;

    .line 133
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 134
    new-instance v4, Lcom/mopub/nativesdk/core/A;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/A;-><init>()V

    .line 135
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 136
    const-string v5, "interval"

    const-wide/16 v6, 0x708

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 137
    const-string v5, "dailyNum"

    const/16 v6, 0x30

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2124
    sput-object v4, Lcom/mopub/nativesdk/core/y;->f:Lcom/mopub/nativesdk/core/A;

    .line 141
    const-string v3, "offline"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 142
    new-instance v4, Lcom/mopub/nativesdk/core/z;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/z;-><init>()V

    .line 143
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2132
    sput-object v4, Lcom/mopub/nativesdk/core/y;->g:Lcom/mopub/nativesdk/core/z;

    .line 147
    const-string v3, "alert"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 148
    new-instance v4, Lcom/mopub/nativesdk/core/F;

    invoke-direct {v4}, Lcom/mopub/nativesdk/core/F;-><init>()V

    .line 149
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 150
    const-string v5, "interval"

    const-wide/16 v6, 0x708

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 151
    const-string v5, "maxNum"

    const/16 v6, 0x270f

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 2140
    sput-object v4, Lcom/mopub/nativesdk/core/y;->h:Lcom/mopub/nativesdk/core/F;

    .line 155
    const-string v3, "dp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 156
    new-instance v3, Lcom/mopub/nativesdk/core/E;

    invoke-direct {v3}, Lcom/mopub/nativesdk/core/E;-><init>()V

    .line 157
    const-string v4, "status"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/mopub/nativesdk/core/E;->a:I

    .line 158
    invoke-static {v3}, Lcom/mopub/nativesdk/core/y;->a(Lcom/mopub/nativesdk/core/E;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 160
    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 174
    iget v0, p0, Lcom/mopub/nativesdk/core/H;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/nativesdk/core/H;->e:I

    .line 176
    iget v0, p0, Lcom/mopub/nativesdk/core/H;->e:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 214
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/mopub/nativesdk/c/m;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mopub/nativesdk/core/H;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/nativesdk/c/m;-><init>(Lcom/mopub/nativesdk/a/d;Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    new-instance v2, Lcom/mopub/nativesdk/core/k;

    invoke-direct {v2, p0}, Lcom/mopub/nativesdk/core/k;-><init>(Lcom/mopub/nativesdk/core/H;)V

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/c/m;->a(ILcom/mopub/nativesdk/c/l;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mopub/nativesdk/core/H;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mopub/nativesdk/core/H;->b()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/mopub/nativesdk/core/y;
    .locals 6

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->d:Lcom/mopub/nativesdk/core/y;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "STRATEGY_NAME"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/core/H;->d:Lcom/mopub/nativesdk/core/y;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->d:Lcom/mopub/nativesdk/core/y;

    if-nez v0, :cond_1

    .line 60
    const-string v0, "{\"bt\":{\"status\":0,\"interval\":259200,\"cacheTime\":604800,\"cacheNum\":10,\"btNum\":1},\"bd\":{\"status\":0,\"dailyNum\":24,\"interval\":3600},\"noIcon\":{\"status\":0,\"rate\":50},\"fScreen\":{\"status\":0,\"dailyNum\":48,\"interval\":3600,\"closeBtn\":1,\"retryNum\":3,\"retryInterval\":180,\"bd\":1},\"icon\":{\"status\":0,\"dailyNum\":48,\"interval\":1800},\"offline\":{\"status\":0},\"alert\":{\"interval\":600,\"maxNum\":99999},\"dp\":{\"status\":0},\"sdk\":{\"sleep\":180}}"

    .line 61
    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/core/H;->d:Lcom/mopub/nativesdk/core/y;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "STRATEGY_UPDATE"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->b:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v2, "STRATEGY_UPDATE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/nativesdk/core/H;->e:I

    .line 69
    invoke-direct {p0}, Lcom/mopub/nativesdk/core/H;->b()V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativesdk/core/H;->d:Lcom/mopub/nativesdk/core/y;

    return-object v0
.end method
