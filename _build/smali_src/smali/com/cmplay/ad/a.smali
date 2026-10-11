.class public Lcom/cmplay/ad/a;
.super Ljava/lang/Object;
.source "AdsFactory.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:[Ljava/lang/Integer;

.field public static f:I

.field public static g:Z

.field private static h:J

.field private static i:Z

.field private static j:Z

.field private static k:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/ad/a;->a:I

    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/cmplay/ad/a;->b:I

    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/cmplay/ad/a;->c:I

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/cmplay/ad/a;->d:I

    .line 86
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cmplay/ad/a;->h:J

    .line 87
    sput-boolean v2, Lcom/cmplay/ad/a;->i:Z

    .line 88
    sput-boolean v2, Lcom/cmplay/ad/a;->j:Z

    .line 90
    const-wide/32 v0, 0x9c40

    sput-wide v0, Lcom/cmplay/ad/a;->k:J

    .line 95
    sput v2, Lcom/cmplay/ad/a;->f:I

    .line 99
    sput-boolean v2, Lcom/cmplay/ad/a;->g:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 108
    div-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method public static a(ILcom/cmplay/ad/c;)Lcom/cmplay/ad/d;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 258
    .line 260
    sparse-switch p0, :sswitch_data_0

    move-object v0, v1

    .line 313
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    invoke-interface {v0, p1}, Lcom/cmplay/ad/d;->setListener(Lcom/cmplay/ad/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :cond_0
    :goto_1
    return-object v0

    .line 262
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/cmplay/ad/f/a;->a()Lcom/cmplay/ad/f/a;

    move-result-object v1

    move-object v0, v1

    .line 263
    goto :goto_0

    .line 271
    :sswitch_1
    invoke-static {}, Lcom/cmplay/ad/Admob/AdmobAds;->getInstance()Lcom/cmplay/ad/Admob/AdmobAds;

    move-result-object v1

    move-object v0, v1

    .line 272
    goto :goto_0

    .line 274
    :sswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 275
    invoke-static {}, Lcom/cmplay/ad/d/a;->a()Lcom/cmplay/ad/d/a;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 281
    goto :goto_0

    .line 283
    :sswitch_3
    invoke-static {}, Lcom/cmplay/ad/h/a;->a()Lcom/cmplay/ad/h/a;

    move-result-object v1

    move-object v0, v1

    .line 284
    goto :goto_0

    .line 286
    :sswitch_4
    invoke-static {}, Lcom/cmplay/ad/a/a;->a()Lcom/cmplay/ad/a/a;

    move-result-object v1

    move-object v0, v1

    .line 287
    goto :goto_0

    :sswitch_5
    move-object v0, v1

    .line 290
    goto :goto_0

    :sswitch_6
    move-object v0, v1

    .line 293
    goto :goto_0

    :sswitch_7
    move-object v0, v1

    .line 296
    goto :goto_0

    .line 298
    :sswitch_8
    invoke-static {}, Lcom/cmplay/ad/c/a;->a()Lcom/cmplay/ad/c/a;

    move-result-object v1

    move-object v0, v1

    .line 299
    goto :goto_0

    .line 301
    :sswitch_9
    invoke-static {}, Lcom/cmplay/ad/b/a;->b()Lcom/cmplay/ad/b/a;

    move-result-object v1

    move-object v0, v1

    .line 302
    goto :goto_0

    .line 304
    :sswitch_a
    invoke-static {}, Lcom/cmplay/ad/e/a;->e()Lcom/cmplay/ad/e/a;

    move-result-object v1

    move-object v0, v1

    .line 305
    goto :goto_0

    .line 307
    :sswitch_b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->getInstance(I)Lcom/cmplay/ad/Admob/AdmobVideoAds;

    move-result-object v1

    move-object v0, v1

    .line 308
    goto :goto_0

    .line 310
    :sswitch_c
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/cmplay/ad/Admob/AdmobVideoAds;->getInstance(I)Lcom/cmplay/ad/Admob/AdmobVideoAds;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 317
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 316
    :catch_1
    move-exception v1

    goto :goto_2

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ee -> :sswitch_3
        0x3f0 -> :sswitch_4
        0x3f1 -> :sswitch_8
        0x3f2 -> :sswitch_9
        0x3f3 -> :sswitch_a
        0x3f4 -> :sswitch_b
        0x3f5 -> :sswitch_c
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_6
        0x7d4 -> :sswitch_7
        0xfa1 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a(II)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    :try_start_0
    invoke-static {}, Lcom/cmplay/ad/a;->a()[Ljava/lang/Integer;

    move-result-object v3

    .line 346
    sget-boolean v2, Lcom/cmplay/ad/a;->g:Z

    invoke-static {p1, v2}, Lcom/cmplay/internalpush/b;->b(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    :goto_0
    return v0

    :cond_0
    move v2, v1

    .line 350
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 351
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 352
    invoke-static {v4}, Lcom/cmplay/ad/a;->a(I)I

    move-result v5

    if-eq v5, p0, :cond_2

    .line 350
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    :cond_2
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/cmplay/ad/a;->a(ILcom/cmplay/ad/c;)Lcom/cmplay/ad/d;

    move-result-object v4

    .line 356
    if-eqz v4, :cond_1

    invoke-interface {v4, p1}, Lcom/cmplay/ad/d;->canShow(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v0, v1

    .line 364
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return v1

    .line 227
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    const-string v2, "interceptionId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v2, v1

    .line 229
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 230
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 231
    const-string v4, "device"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    const-string v5, "ver"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 247
    goto :goto_0

    .line 229
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static a()[Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/cmplay/ad/a;->e:[Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 113
    const-string v0, "key_ad_new"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/cmplay/ad/a;->e:[Ljava/lang/Integer;

    .line 126
    :cond_0
    sget-object v0, Lcom/cmplay/ad/a;->e:[Ljava/lang/Integer;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 14

    .prologue
    const/16 v13, 0x3ea

    const/16 v12, 0x3e9

    const/16 v11, 0x3f1

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x0

    .line 136
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getDevice()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getOSVersion()Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v1, "key_ad_interception"

    const-string v5, ""

    invoke-static {v1, v5}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v1, "ad_platform"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 145
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 147
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 148
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 149
    const-string v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v4, v3, v8}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :cond_1
    const/16 v0, 0x3f1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    const/16 v0, 0x3f1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/ad/a;->j:Z

    .line 164
    :goto_1
    const-string v0, "time_zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ads list: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 211
    new-array v0, v10, [Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 213
    :cond_3
    :goto_3
    return-object v0

    .line 161
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/cmplay/ad/c/a;->a()Lcom/cmplay/ad/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/ad/c/a;->a(Z)V

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cmplay/ad/a;->j:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 208
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const/16 v3, 0x3f2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x7d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const/16 v3, 0x3f3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x3f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const/16 v3, 0x3f5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_2

    .line 170
    :cond_5
    if-nez v0, :cond_2

    .line 171
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    const-string v1, "1001"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 173
    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_6
    const-string v1, "1002"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 176
    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_7
    const-string v1, "1010"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 179
    const/16 v1, 0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_8
    const-string v1, "2001"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 182
    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_9
    const-string v1, "2002"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 185
    const/16 v1, 0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_a
    const-string v1, "1012"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 188
    const/16 v1, 0x3f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_b
    const-string v1, "1013"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 191
    const/16 v1, 0x3f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_c
    const-string v1, "1009"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 194
    const/16 v1, 0x3f1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_d
    const-string v1, "1011"

    invoke-static {v5, v4, v3, v1}, Lcom/cmplay/ad/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 197
    const/16 v1, 0x3f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    check-cast v0, [Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method public static b(I)V
    .locals 4

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/cmplay/ad/a;->a()[Ljava/lang/Integer;

    move-result-object v1

    .line 325
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 326
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/cmplay/ad/a;->a(I)I

    move-result v2

    if-eq v2, p0, :cond_1

    .line 325
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cmplay/ad/a;->a(ILcom/cmplay/ad/c;)Lcom/cmplay/ad/d;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_0

    .line 331
    invoke-interface {v2}, Lcom/cmplay/ad/d;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    :cond_2
    return-void
.end method
