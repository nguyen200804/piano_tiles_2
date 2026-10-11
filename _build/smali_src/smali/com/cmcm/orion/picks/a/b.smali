.class public final Lcom/cmcm/orion/picks/a/b;
.super Ljava/lang/Object;
.source "AdResponse.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/cmcm/orion/picks/a/b;->b:I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/b;->a:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static a(Lcom/cmcm/orion/picks/a/a/a;)Lcom/cmcm/orion/picks/a/a/e;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1131
    .line 1135
    new-instance v0, Lcom/cmcm/orion/picks/a/a/e;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->q()I

    move-result v2

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->n()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/orion/picks/a/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1131
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 1143
    :cond_0
    const-string v1, "view"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    const/16 v0, 0x32

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    .line 1178
    :cond_1
    :goto_0
    return-object v0

    .line 1145
    :cond_2
    const-string v1, "click"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1146
    const/16 v0, 0x3c

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 1147
    :cond_3
    const-string v1, "detail_click"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1148
    const/16 v0, 0x3d

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 1149
    :cond_4
    const-string v1, "install_success"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1150
    const/16 v0, 0x26

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 1151
    :cond_5
    const-string v1, "down_success"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1152
    const/16 v0, 0x24

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 1153
    :cond_6
    const-string v1, "click_failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1154
    const/16 v0, 0x3e

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 1155
    :cond_7
    const-string v1, "vast_play"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1156
    const/16 v0, 0x36

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto :goto_0

    .line 1157
    :cond_8
    const-string v1, "vast_click"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1158
    const/16 v0, 0x40

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1159
    :cond_9
    const-string v1, "mpa_show"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1160
    invoke-static {p2, p4, p3}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1161
    :cond_a
    const-string v1, "mpa_click"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1162
    invoke-static {p2, p4, p3}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1163
    :cond_b
    const-string v1, "vast_parse_start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1164
    const/16 v0, 0x6e

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1165
    :cond_c
    const-string v1, "vast_parse_end"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1166
    const/16 v0, 0x6f

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1167
    :cond_d
    const-string v1, "jump_detail_page"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1168
    const/16 v0, 0x47

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1169
    :cond_e
    const-string v1, "detail_page_show"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1170
    const/16 v0, 0x33

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1171
    :cond_f
    const-string v1, "detail_page_close"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1172
    const/16 v0, 0x65

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1173
    :cond_10
    const-string v1, "url_redirected"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1174
    const/16 v0, 0x3f

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0

    .line 1175
    :cond_11
    const-string v1, "world_install"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    const/16 v0, 0x1f

    invoke-static {p2, p4, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1198
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1199
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1200
    if-eqz v2, :cond_0

    .line 1203
    new-instance v3, Lcom/cmcm/orion/utils/internal/d;

    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/cmcm/orion/picks/a/e;

    invoke-direct {v4}, Lcom/cmcm/orion/picks/a/e;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/cmcm/orion/utils/internal/d;-><init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-virtual {v3}, Lcom/cmcm/orion/utils/internal/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1214
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/adsdk/a;)V
    .locals 3

    .prologue
    .line 1113
    if-eqz p1, :cond_1

    .line 1114
    if-eqz p2, :cond_2

    .line 1115
    iget v0, p2, Lcom/cmcm/orion/adsdk/a;->c:I

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(I)V

    .line 1120
    :goto_0
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->H()Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1124
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/j;->a()Lcom/cmcm/orion/picks/a/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cmcm/orion/picks/a/a/j;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateDatabases,thread name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ad title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_1
    return-void

    .line 1117
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/a/a/a;->a(Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1051
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-static/range {v0 .. v7}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1052
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1059
    .line 1072
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->H()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-static {p0, p3, p2, p7, v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v2

    .line 1078
    if-eqz v2, :cond_0

    .line 1081
    const-string v0, "view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1083
    :cond_2
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    invoke-static {p1}, Lcom/cmcm/orion/picks/a/b;->b(Lcom/cmcm/orion/picks/a/a/a;)I

    move-result v0

    .line 1086
    :goto_1
    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(I)V

    .line 1088
    :cond_3
    invoke-virtual {v2, p4}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/util/Map;)V

    .line 1089
    invoke-static {p1}, Lcom/cmcm/orion/picks/a/b;->a(Lcom/cmcm/orion/picks/a/a/a;)Lcom/cmcm/orion/picks/a/a/e;

    move-result-object v0

    .line 1090
    invoke-virtual {v0, p5, p6}, Lcom/cmcm/orion/picks/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :try_start_0
    new-instance v3, Lcom/cmcm/orion/utils/internal/b;

    invoke-direct {v3}, Lcom/cmcm/orion/utils/internal/b;-><init>()V

    .line 1093
    invoke-virtual {v3, v0, v2}, Lcom/cmcm/orion/utils/internal/b;->a(Lcom/cmcm/orion/picks/a/a/e;Lcom/cmcm/orion/picks/a/a/f;)V

    .line 1094
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/cmcm/orion/utils/internal/b;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 1095
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v3, v0}, Lcom/cmcm/orion/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    :goto_2
    const-string v0, "view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1099
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;)V

    .line 1109
    invoke-static {p2, p1, v4}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/adsdk/a;)V

    .line 1101
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    goto :goto_0

    .line 1102
    :cond_4
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;)V

    .line 1104
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->a()Lcom/cmcm/orion/utils/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/picks/a/a/a;IZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static b(Lcom/cmcm/orion/picks/a/a/a;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1182
    if-nez p0, :cond_1

    .line 1190
    :cond_0
    :goto_0
    return v0

    .line 1185
    :cond_1
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/b;->b:I

    return v0
.end method
