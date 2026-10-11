.class public final Lcom/cmcm/orion/picks/a/a/h;
.super Ljava/lang/Object;
.source "MarketConfig.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field private static c:Lcom/cmcm/orion/picks/a/a/n;

.field private static d:I

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    .line 74
    new-instance v0, Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "market_config"

    invoke-direct {v0, v1}, Lcom/cmcm/orion/picks/a/a/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    .line 563
    const/4 v0, 0x0

    sput-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    .line 608
    const-string v0, "http://221.228.204.186/rp/"

    sput-object v0, Lcom/cmcm/orion/picks/a/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 395
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v2, "closed_pos_id_list"

    const-string v3, "[]"

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 400
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 406
    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 661
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v0, p0, p1, p2}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;J)V

    .line 662
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 653
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v0, p0, p1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return v0

    .line 102
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v1, "cm_softer_cache_time"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a/h;->i(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/cmcm/orion/picks/a/a/h;->d:I

    .line 105
    sget-object v3, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "cache_time"

    invoke-virtual {v3, v4, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "request_url"

    const-string v4, "request_url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "req_timeout_ms"

    const-string v4, "req_timeout_ms"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_app_installation_tracker_expire_time"

    const-string v4, "cache_install_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_report_ad_shown"

    const-string v4, "report_ad_in_shown_list"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 110
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_report_ad_server"

    const-string v4, "report_ad_from_server"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 111
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_report_ad_installed"

    const-string v4, "report_ad_installed"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 112
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_report_ad_download"

    const-string v4, "report_ad_download"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 113
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_super_report_priority"

    const-string v4, "super_report_priority"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "key_x_request_url"

    const-string v4, "report_ad_key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "https_request_url"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 122
    sget-object v5, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v6, "scheme"

    invoke-virtual {v5, v6, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    sget-object v4, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v5, "host"

    invoke-virtual {v4, v5, v3}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    sget-object v3, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "https_request_url"

    invoke-virtual {v3, v4, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_3
    const-string v1, "https_report_url"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    sget-object v3, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "https_report_url"

    invoke-virtual {v3, v4, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_4
    const-string v1, "pos_cache"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 136
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->e:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cmcm/orion/picks/a/a/h;->e:Ljava/util/Map;

    .line 139
    :cond_5
    if-eqz v3, :cond_6

    move v1, v0

    .line 140
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 141
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 142
    const-string v5, "posid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 143
    const-string v6, "cache_time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    .line 144
    sget-object v4, Lcom/cmcm/orion/picks/a/a/h;->e:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_posid_expire_time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    sget-object v5, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v5, v4, v6, v7}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;J)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_6
    const-string v1, "ad_request_interval"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 151
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->f:Ljava/util/Map;

    if-nez v1, :cond_7

    .line 152
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cmcm/orion/picks/a/a/h;->f:Ljava/util/Map;

    .line 154
    :cond_7
    if-eqz v3, :cond_8

    move v1, v0

    .line 155
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 156
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 157
    const-string v5, "posid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 158
    const-string v6, "time"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v6, v4

    .line 159
    sget-object v4, Lcom/cmcm/orion/picks/a/a/h;->f:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_posid_request_interval"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    sget-object v5, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v5, v4, v6, v7}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;J)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    :cond_8
    const-string v1, "ad_show_frequency"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 168
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->g:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cmcm/orion/picks/a/a/h;->g:Ljava/util/Map;

    :cond_9
    move v1, v0

    .line 172
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 173
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 174
    if-eqz v4, :cond_a

    .line 175
    const-string v5, "posid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    const-string v6, "number"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 178
    sget-object v6, Lcom/cmcm/orion/picks/a/a/h;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_posid_ad_show_frequency"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 180
    sget-object v6, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v6, v5, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 172
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 186
    :cond_b
    const-string v1, "ad_skip_frequency"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 187
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 188
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->h:Ljava/util/Map;

    if-nez v1, :cond_c

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cmcm/orion/picks/a/a/h;->h:Ljava/util/Map;

    :cond_c
    move v1, v0

    .line 192
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_e

    .line 193
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 194
    if-eqz v4, :cond_d

    .line 195
    const-string v5, "posid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    const-string v6, "number"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 197
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 198
    sget-object v6, Lcom/cmcm/orion/picks/a/a/h;->h:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_posid_ad_skip_frequency"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    sget-object v6, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v6, v5, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 192
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 206
    :cond_e
    const-string v1, "rimp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_f

    .line 208
    const-string v3, "second"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 209
    const-string v4, "height"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 211
    sget-object v4, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v5, "impression_delayed_second"

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v4, v5, v3}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 212
    sget-object v3, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "impression_height"

    invoke-virtual {v3, v4, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;I)V

    .line 215
    :cond_f
    const-string v1, "cpos"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_11

    .line 217
    sget-object v3, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "closed_pos_id_list"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_5
    const-string v1, "report"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_10

    .line 224
    const-string v2, "gaid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string v3, "posid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string v4, "country"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    sget-object v4, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v5, "ad_gaid_report_lists"

    invoke-virtual {v4, v5, v2}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v2, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "ad_posid_report_lists"

    invoke-virtual {v2, v4, v3}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v2, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "ad_country_report_lists"

    invoke-virtual {v2, v3, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 219
    :cond_11
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v3, "closed_pos_id_list"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 234
    :catch_0
    move-exception v1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveFromJson: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static b(Ljava/lang/String;J)J
    .locals 11

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/16 v4, 0x708

    .line 455
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    .line 456
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_posid_expire_def_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2468
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-wide/16 v2, 0xe10

    invoke-virtual {v1, v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 456
    mul-long p1, v0, v8

    .line 457
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    .line 3079
    sget v0, Lcom/cmcm/orion/picks/a/a/h;->d:I

    if-ge v0, v4, :cond_0

    .line 3080
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "cache_time"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3081
    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/h;->i(Ljava/lang/String;)I

    move-result v0

    .line 3082
    sput v0, Lcom/cmcm/orion/picks/a/a/h;->d:I

    if-ge v0, v4, :cond_0

    .line 3083
    const/16 v0, 0xe10

    sput v0, Lcom/cmcm/orion/picks/a/a/h;->d:I

    .line 3086
    :cond_0
    sget v0, Lcom/cmcm/orion/picks/a/a/h;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    .line 458
    int-to-long p1, v0

    .line 3484
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_posid_expire_min_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3485
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-wide/16 v2, 0x708

    invoke-virtual {v1, v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 462
    mul-long/2addr v0, v8

    .line 463
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "scheme"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v0, p0, p1}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1335
    sget-object v3, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v4, "ad_gaid_report_lists"

    invoke-virtual {v3, v4, v0}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2331
    sget-object v4, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v5, "ad_posid_report_lists"

    invoke-virtual {v4, v5, v0}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2339
    sget-object v5, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v6, "ad_country_report_lists"

    invoke-virtual {v5, v6, v0}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 389
    :goto_0
    return v0

    .line 351
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a/a;->c()Lcom/cmcm/orion/utils/internal/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cmcm/orion/utils/internal/a/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 353
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 354
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_1
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cmcm/orion/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 360
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 365
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 366
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 368
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    .line 373
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 375
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    .line 380
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 381
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    .line 382
    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 384
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto/16 :goto_0

    .line 385
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 389
    goto/16 :goto_0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 432
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    const-wide/16 v0, 0xe10

    .line 445
    :goto_0
    return-wide v0

    .line 436
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2449
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_posid_expire_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2450
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v1, v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long/2addr v0, v4

    .line 2451
    invoke-static {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/h;->b(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 440
    :cond_2
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 442
    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    .line 445
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/h;->b(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 556
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    .line 576
    :goto_0
    return-object v0

    .line 569
    :cond_0
    new-instance v0, Lcom/cmcm/orion/picks/a/a/h$1;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/h$1;-><init>()V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.agent"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xe10

    .line 472
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x708

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_posid_expire_def_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v1, v0, v4, v5}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 478
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 479
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-virtual {v1, v0, v4, v5}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static e()V
    .locals 3

    .prologue
    .line 580
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 582
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "uer_agent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    sput-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/webview/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    .line 585
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "uer_agent"

    sget-object v2, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_0
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.agent"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/a/a/h;->i:Ljava/lang/String;

    .line 594
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 508
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 511
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;J)V

    .line 512
    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "52.35.247.178"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ssdk.adkmob.com"

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 560
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "advertising_id"

    invoke-virtual {v0, v1, p0}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public static g(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 665
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "/test_sdk/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/b/"

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "52.35.247.178"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "bp.adkmob.com"

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 744
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "key_mid"

    invoke-virtual {v0, v1, p0}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private static i(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "/test_config/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/b/"

    goto :goto_0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "http://52.35.247.178/rp/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://ssdk.adkmob.com/rp/"

    goto :goto_0
.end method

.method public static k()J
    .locals 4

    .prologue
    .line 669
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "key_app_installation_tracker_expire_time"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 677
    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    .line 674
    :catch_0
    move-exception v0

    const-wide/32 v0, 0x93a80

    goto :goto_0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x1

    return v0
.end method

.method public static m()Z
    .locals 3

    .prologue
    .line 721
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "key_report_ad_server"

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;)I

    move-result v0

    .line 722
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 723
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 724
    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 728
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v2, "key_report_ad_installed"

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 732
    sget-object v1, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v2, "key_report_ad_download"

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 736
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "key_x_request_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 740
    sget-object v0, Lcom/cmcm/orion/picks/a/a/h;->c:Lcom/cmcm/orion/picks/a/a/n;

    const-string v1, "key_mid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/orion/picks/a/a/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
