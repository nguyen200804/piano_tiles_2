.class public final Lcom/mnt/impl/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/e/g$c;,
        Lcom/mnt/impl/e/g$b;,
        Lcom/mnt/impl/e/g$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mnt/impl/e/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/mnt/impl/e/g$c;

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mnt/impl/e;->jW:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/g;->j:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/mnt/impl/e;->jX:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/g;->k:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/mnt/impl/e;->jY:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/g;->l:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/mnt/impl/e;->jZ:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/g;->m:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/mnt/impl/e;->ka:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/g;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v0, 0x1388

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/mnt/impl/e/g;->d:I

    .line 40
    iput v0, p0, Lcom/mnt/impl/e/g;->e:I

    .line 1139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1144
    sget-object v1, Lcom/mnt/impl/e/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1145
    if-nez v1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    sget-object v2, Lcom/mnt/impl/e/g;->j:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mnt/impl/e/g;->a:I

    .line 1149
    sget-object v2, Lcom/mnt/impl/e/g;->k:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1150
    sget-object v2, Lcom/mnt/impl/e/g;->l:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1151
    sget-object v2, Lcom/mnt/impl/e;->ky:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    sget-object v2, Lcom/mnt/impl/e;->kz:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1153
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1154
    invoke-static {v0}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    :cond_2
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1161
    sget-object v0, Lcom/mnt/impl/e/g;->m:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mnt/impl/e/g;->h:J

    .line 1162
    sget-object v0, Lcom/mnt/impl/e;->kB:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1163
    invoke-direct {p0, v0}, Lcom/mnt/impl/e/g;->a(Lorg/json/JSONObject;)V

    .line 1164
    sget-object v0, Lcom/mnt/impl/e;->kC:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1165
    invoke-direct {p0, v0}, Lcom/mnt/impl/e/g;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1155
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1156
    :try_start_1
    invoke-static {v0}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    sget-object v1, Lcom/mnt/impl/e;->kA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mnt/impl/i/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/16 v0, 0x1388

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/mnt/impl/e/g;->d:I

    .line 40
    iput v0, p0, Lcom/mnt/impl/e/g;->e:I

    .line 51
    iput-wide p2, p0, Lcom/mnt/impl/e/g;->i:J

    .line 1088
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1093
    sget-object v1, Lcom/mnt/impl/e;->kj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1094
    if-nez v1, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    sget-object v2, Lcom/mnt/impl/e;->kk:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1098
    sget-object v2, Lcom/mnt/impl/e;->kl:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mnt/impl/e/g;->a:I

    .line 1099
    sget-object v2, Lcom/mnt/impl/e;->km:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1100
    sget-object v2, Lcom/mnt/impl/e;->kn:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mnt/impl/e/g;->b:J

    .line 1101
    sget-object v2, Lcom/mnt/impl/e;->ko:Ljava/lang/String;

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mnt/impl/e/g;->d:I

    .line 1102
    sget-object v2, Lcom/mnt/impl/e;->kp:Ljava/lang/String;

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mnt/impl/e/g;->e:I

    .line 1103
    sget-object v2, Lcom/mnt/impl/e;->kq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1104
    sget-object v2, Lcom/mnt/impl/e;->kr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1106
    invoke-static {v0}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1109
    invoke-static {v0}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    sget-object v1, Lcom/mnt/impl/e;->ks:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mnt/impl/i/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1114
    sget-object v0, Lcom/mnt/impl/e;->kt:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mnt/impl/e/g;->h:J

    .line 1115
    sget-object v0, Lcom/mnt/impl/e;->ku:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_4

    .line 1135
    sget-object v2, Lcom/mnt/impl/e;->kx:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mnt/impl/e/g;->c:I

    .line 1117
    :cond_4
    sget-object v0, Lcom/mnt/impl/e;->kv:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1118
    invoke-direct {p0, v0}, Lcom/mnt/impl/e/g;->a(Lorg/json/JSONObject;)V

    .line 1119
    sget-object v0, Lcom/mnt/impl/e;->kw:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1120
    invoke-direct {p0, v0}, Lcom/mnt/impl/e/g;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1122
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 67
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    sget-object v2, Lcom/mnt/impl/e;->kb:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mnt/impl/e;->kc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mnt/impl/e;->kd:Ljava/lang/String;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    sget-object v2, Lcom/mnt/impl/e;->ke:Ljava/lang/String;

    const/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    sget-object v2, Lcom/mnt/impl/e;->kf:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    sget-object v3, Lcom/mnt/impl/e;->kg:Ljava/lang/String;

    const v4, 0xdbba0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    sget-object v3, Lcom/mnt/impl/e;->kh:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    sget-object v1, Lcom/mnt/impl/e;->ki:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 20

    .prologue
    .line 191
    if-nez p1, :cond_1

    .line 224
    :cond_0
    return-void

    .line 194
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    .line 195
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 197
    sget-object v3, Lcom/mnt/impl/e;->kF:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 198
    sget-object v3, Lcom/mnt/impl/e;->kG:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 199
    sget-object v3, Lcom/mnt/impl/e;->kH:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 200
    sget-object v3, Lcom/mnt/impl/e;->kI:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 201
    sget-object v3, Lcom/mnt/impl/e;->kJ:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 202
    sget-object v3, Lcom/mnt/impl/e;->kK:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 203
    sget-object v3, Lcom/mnt/impl/e;->kL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 204
    sget-object v3, Lcom/mnt/impl/e;->kM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 205
    invoke-static {v2}, Lcom/mnt/impl/e/g;->b(Lorg/json/JSONObject;)Lcom/mnt/impl/e/g$b;

    move-result-object v3

    .line 206
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 208
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 211
    new-instance v18, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 213
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 214
    sget-boolean v19, Lcom/mnt/MntConfig;->DEBUG:Z

    if-eqz v19, :cond_2

    .line 215
    invoke-static {v13}, Lcom/mnt/impl/b/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 217
    :cond_2
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 219
    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_4
    invoke-static {v14}, Lcom/mnt/impl/b/b;->a(I)Lcom/mnt/impl/b/b;

    move-result-object v6

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    new-instance v2, Lcom/mnt/impl/e/g$a;

    invoke-direct/range {v2 .. v11}, Lcom/mnt/impl/e/g$a;-><init>(Lcom/mnt/impl/e/g$b;Ljava/util/Map;ILcom/mnt/impl/b/b;IJII)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Lcom/mnt/impl/e/g$c;

    invoke-direct {v0, v1, v1}, Lcom/mnt/impl/e/g$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mnt/impl/e/g;->g:Lcom/mnt/impl/e/g$c;

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/mnt/impl/e;->kD:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/mnt/impl/e;->kE:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/mnt/impl/e/g$c;

    invoke-direct {v2, v0, v1}, Lcom/mnt/impl/e/g$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mnt/impl/e/g;->g:Lcom/mnt/impl/e/g$c;

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/mnt/impl/e/g$b;
    .locals 22

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    const/4 v2, 0x0

    .line 276
    :goto_0
    return-object v2

    .line 237
    :cond_0
    :try_start_0
    sget-object v2, Lcom/mnt/impl/e;->kN:Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    sget-object v2, Lcom/mnt/impl/e;->kO:Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    sget-object v2, Lcom/mnt/impl/e;->kP:Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    sget-object v2, Lcom/mnt/impl/e;->kQ:Ljava/lang/String;

    const-string v5, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    sget-object v2, Lcom/mnt/impl/e;->kR:Ljava/lang/String;

    const-string v6, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v6}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 242
    sget-object v2, Lcom/mnt/impl/e;->kS:Ljava/lang/String;

    const-string v7, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v7}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    sget-object v2, Lcom/mnt/impl/e;->kT:Ljava/lang/String;

    const-string v8, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v8}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    sget-boolean v2, Lcom/mnt/MntConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 245
    invoke-static {v8}, Lcom/mnt/impl/b/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    :cond_1
    sget-object v2, Lcom/mnt/impl/e;->kU:Ljava/lang/String;

    const-string v9, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 248
    sget-object v2, Lcom/mnt/impl/e;->kV:Ljava/lang/String;

    const-string v10, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 249
    sget-object v2, Lcom/mnt/impl/e;->kW:Ljava/lang/String;

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v11

    .line 250
    sget-object v2, Lcom/mnt/impl/e;->kX:Ljava/lang/String;

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v12

    .line 251
    sget-object v2, Lcom/mnt/impl/e;->kY:Ljava/lang/String;

    const-string v13, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 252
    sget-object v2, Lcom/mnt/impl/e;->kZ:Ljava/lang/String;

    const-string v14, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 253
    sget-object v2, Lcom/mnt/impl/e;->la:Ljava/lang/String;

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v15}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 254
    sget-object v2, Lcom/mnt/impl/e;->lb:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 255
    sget-object v2, Lcom/mnt/impl/e;->lc:Ljava/lang/String;

    sget-object v17, Lcom/mnt/impl/e;->ld:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 256
    sget-object v2, Lcom/mnt/impl/e;->le:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 257
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 259
    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v2, v0, :cond_2

    .line 260
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    sget-object v20, Lcom/mnt/impl/e;->lf:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    :cond_2
    sget-object v2, Lcom/mnt/impl/e;->lg:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 265
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 267
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v2, v0, :cond_3

    .line 268
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    sget-object v21, Lcom/mnt/impl/e;->lh:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 272
    :cond_3
    new-instance v2, Lcom/mnt/impl/e/g$b;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/mnt/impl/e/g$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 274
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mnt/impl/e/g;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mnt/impl/e/g;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
