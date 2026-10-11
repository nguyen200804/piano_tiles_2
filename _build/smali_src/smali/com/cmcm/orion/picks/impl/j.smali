.class public final Lcom/cmcm/orion/picks/impl/j;
.super Ljava/lang/Object;
.source "VastXmlParse.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cmcm/orion/picks/a/a/a;

.field private c:Lcom/cmcm/orion/adsdk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "BrandFeedItemAd"

    sput-object v0, Lcom/cmcm/orion/picks/impl/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private a(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/h;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 150
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 151
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v1, p1

    .line 152
    :goto_0
    if-eq v0, v3, :cond_27

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 155
    :pswitch_1
    if-nez v1, :cond_1

    .line 156
    new-instance v1, Lcom/cmcm/orion/picks/impl/h;

    invoke-direct {v1}, Lcom/cmcm/orion/picks/impl/h;-><init>()V

    .line 158
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 178
    sget-object v1, Lcom/cmcm/orion/adsdk/d;->s:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/Throwable;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/j;->c:Lcom/cmcm/orion/adsdk/d;

    move-object v0, v2

    .line 181
    :goto_2
    return-object v0

    .line 161
    :pswitch_2
    if-eqz v1, :cond_0

    .line 2185
    if-eqz v1, :cond_2

    if-nez v6, :cond_3

    :cond_2
    move v0, v4

    .line 162
    :goto_3
    if-nez v0, :cond_0

    move-object v1, v2

    .line 163
    goto :goto_1

    .line 2188
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->t()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2190
    invoke-static {v1, v6, v0}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 2191
    :cond_4
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->u()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2255
    const-string v5, "Companion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2256
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->m()Ljava/util/List;

    move-result-object v0

    .line 2257
    if-nez v0, :cond_5

    .line 2258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    :cond_5
    new-instance v5, Lcom/cmcm/orion/picks/impl/h$a;

    new-instance v7, Lcom/cmcm/orion/picks/impl/h;

    invoke-direct {v7}, Lcom/cmcm/orion/picks/impl/h;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v7}, Lcom/cmcm/orion/picks/impl/h$a;-><init>(Lcom/cmcm/orion/picks/impl/h;)V

    .line 2304
    const/4 v7, 0x0

    const-string v8, "width"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2305
    const/4 v8, 0x0

    const-string v9, "height"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2306
    const/4 v9, 0x0

    const-string v10, "id"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2307
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "[0-9]+"

    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2308
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/cmcm/orion/picks/impl/h$a;->a(I)V

    .line 2310
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "[0-9]+"

    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2311
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/cmcm/orion/picks/impl/h$a;->b(I)V

    .line 2313
    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2314
    invoke-virtual {v5, v9}, Lcom/cmcm/orion/picks/impl/h$a;->a(Ljava/lang/String;)V

    .line 2262
    :cond_8
    const/4 v7, 0x0

    invoke-interface {v0, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2264
    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->b(Ljava/util/List;)V

    :cond_9
    :goto_4
    move v0, v3

    .line 2192
    goto/16 :goto_3

    .line 2265
    :cond_a
    const-string v5, "StaticResource"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2266
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->m()Ljava/util/List;

    move-result-object v7

    .line 2267
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2268
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v0

    .line 2269
    if-nez v0, :cond_28

    .line 2270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 2272
    :goto_5
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2274
    const/4 v8, 0x0

    invoke-interface {v5, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2275
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$a;

    invoke-virtual {v0, v5}, Lcom/cmcm/orion/picks/impl/h$a;->a(Ljava/util/List;)V

    goto :goto_4

    .line 2278
    :cond_b
    const-string v5, "Tracking"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "CompanionClickTracking"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2281
    :cond_c
    const-string v5, "Tracking"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2282
    const/4 v0, 0x0

    const-string v5, "event"

    invoke-interface {v6, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2286
    :cond_d
    :goto_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 2287
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g$a;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/g$a;

    move-result-object v8

    .line 2289
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->m()Ljava/util/List;

    move-result-object v9

    .line 2290
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2291
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2292
    if-nez v0, :cond_e

    .line 2293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2294
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v5

    .line 2296
    :cond_e
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2283
    :cond_f
    const-string v5, "CompanionClickTracking"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object v0, v2

    goto :goto_6

    .line 2193
    :cond_10
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->w()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3236
    const-string v5, "MType"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 3237
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->c(Ljava/lang/String;)V

    :cond_11
    :goto_7
    move v0, v3

    .line 2194
    goto/16 :goto_3

    .line 3238
    :cond_12
    const-string v5, "DeepLink"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 3239
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 3240
    :cond_13
    const-string v5, "Button"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 3241
    const/4 v0, 0x0

    const-string v5, "name"

    invoke-interface {v6, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3242
    const-string v5, "orion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3243
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 3245
    :cond_14
    const-string v5, "Rating"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 3246
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 3247
    :cond_15
    const-string v5, "DownloadNum"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3248
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->b(Ljava/lang/String;)V

    goto :goto_7

    .line 2195
    :cond_16
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->v()Z

    move-result v5

    if-nez v5, :cond_17

    .line 2198
    const-string v5, "Wrapper"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2199
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Z)V

    .line 2200
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->r()I

    move-result v0

    .line 2201
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(I)V

    :cond_17
    :goto_8
    move v0, v3

    .line 2232
    goto/16 :goto_3

    .line 2202
    :cond_18
    const-string v5, "VASTAdTagURI"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2203
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 2204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 2205
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->k(Ljava/lang/String;)V

    goto :goto_8

    .line 2207
    :cond_19
    const-string v5, "Ad"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2208
    const/4 v0, 0x0

    const-string v5, "id"

    invoke-interface {v6, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->e(Ljava/lang/String;)V

    goto :goto_8

    .line 2209
    :cond_1a
    const-string v5, "AdTitle"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2210
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->f(Ljava/lang/String;)V

    goto :goto_8

    .line 2211
    :cond_1b
    const-string v5, "Description"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2212
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->g(Ljava/lang/String;)V

    goto :goto_8

    .line 2213
    :cond_1c
    const-string v5, "Button"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2214
    const/4 v0, 0x0

    const-string v5, "name"

    invoke-interface {v6, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    const-string v5, "orion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2216
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->h(Ljava/lang/String;)V

    goto :goto_8

    .line 2218
    :cond_1d
    const-string v5, "Error"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2219
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g$a;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/g$a;

    move-result-object v0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/g$a;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2220
    :cond_1e
    const-string v5, "Impression"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2221
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/g$a;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/g$a;

    move-result-object v0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/g$a;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2222
    :cond_1f
    const-string v5, "Linear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2223
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->c(Z)V

    goto/16 :goto_8

    .line 2224
    :cond_20
    const-string v5, "CompanionAds"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 2225
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->d(Z)V

    goto/16 :goto_8

    .line 2226
    :cond_21
    const-string v5, "NonLinearAds"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2227
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->e(Z)V

    goto/16 :goto_8

    .line 2228
    :cond_22
    const-string v5, "Extensions"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2229
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->f(Z)V

    goto/16 :goto_8

    .line 168
    :pswitch_3
    if-eqz v1, :cond_0

    .line 3366
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3367
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->t()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->s()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 3368
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->b(Z)V

    goto/16 :goto_1

    .line 3369
    :cond_23
    const-string v5, "Linear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3370
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->c(Z)V

    goto/16 :goto_1

    .line 3371
    :cond_24
    const-string v5, "CompanionAds"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3372
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->d(Z)V

    goto/16 :goto_1

    .line 3373
    :cond_25
    const-string v5, "NonLinearAds"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 3374
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->e(Z)V

    goto/16 :goto_1

    .line 3375
    :cond_26
    const-string v5, "Extensions"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3376
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->f(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_27
    move-object v0, v1

    .line 180
    goto/16 :goto_2

    :cond_28
    move-object v5, v0

    goto/16 :goto_5

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/j;->c:Lcom/cmcm/orion/adsdk/d;

    .line 88
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 89
    const/4 v2, 0x1

    move-object v5, v0

    move-object v3, p4

    move-object v4, p1

    move-object v1, p0

    .line 1481
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vast:to report xml parse end:,result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v7}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1483
    const-string v8, "vps"

    if-eqz v2, :cond_3

    const-string v6, "1"

    :goto_1
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    const-string v6, "vast_parse_end"

    iget-object v8, v1, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v9, v1, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v9}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9, v0, v7}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1043
    if-eqz v3, :cond_0

    .line 1044
    new-instance v0, Lcom/cmcm/orion/picks/impl/j$1;

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/orion/picks/impl/j$1;-><init>(Lcom/cmcm/orion/picks/impl/j;ZLcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;I)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j;->c:Lcom/cmcm/orion/adsdk/d;

    if-nez v1, :cond_2

    sget-object v5, Lcom/cmcm/orion/adsdk/d;->t:Lcom/cmcm/orion/adsdk/d;

    move-object v3, p4

    move-object v4, p1

    move-object v1, p0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/j;->c:Lcom/cmcm/orion/adsdk/d;

    move-object v3, p4

    move-object v4, p1

    move-object v1, p0

    goto :goto_0

    .line 1483
    :cond_3
    const-string v6, "2"

    goto :goto_1
.end method

.method private static a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/g$a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/h;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 463
    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/h;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method private a(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/cmcm/orion/picks/impl/j$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/cmcm/orion/picks/impl/j$3;-><init>(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-static {p2, v0}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x12d

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 29
    .line 5110
    new-instance v0, Lcom/cmcm/orion/picks/impl/j$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmcm/orion/picks/impl/j$4;-><init>(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/j;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 4

    .prologue
    .line 29
    .line 5070
    new-instance v1, Lcom/cmcm/orion/picks/impl/h;

    invoke-direct {v1}, Lcom/cmcm/orion/picks/impl/h;-><init>()V

    .line 5071
    invoke-virtual {v1, p1}, Lcom/cmcm/orion/picks/impl/h;->l(Ljava/lang/String;)V

    .line 5072
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/i;->c(Ljava/lang/String;)Z

    move-result v0

    .line 5075
    if-eqz v0, :cond_0

    .line 5076
    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lcom/cmcm/orion/picks/impl/j;->b(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 5083
    :goto_0
    return-void

    .line 5078
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5080
    :catch_0
    move-exception v0

    .line 5081
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vast:xml parse failed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5082
    sget-object v2, Lcom/cmcm/orion/adsdk/d;->s:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/Throwable;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    const/16 v2, 0x64

    invoke-direct {p0, v1, v0, v2, p2}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method

.method private static a(Lcom/cmcm/orion/picks/impl/h;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    const-string v2, "Icon"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/impl/h;->b(Z)V

    .line 362
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 3429
    :goto_1
    return v2

    .line 323
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/cmcm/orion/picks/impl/h;->s()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    const-string v2, "StaticResource"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/impl/h;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "Tracking"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3428
    if-nez p0, :cond_3

    .line 3429
    const/4 v2, 0x0

    goto :goto_1

    .line 3431
    :cond_3
    const/4 v2, 0x0

    const-string v3, "event"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3432
    const/4 v2, 0x0

    const-string v4, "offset"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3433
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 3435
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3436
    new-instance v5, Lcom/cmcm/orion/picks/impl/h$b;

    invoke-direct {v5}, Lcom/cmcm/orion/picks/impl/h$b;-><init>()V

    .line 3438
    invoke-virtual {v5, v3}, Lcom/cmcm/orion/picks/impl/h$b;->a(Ljava/lang/String;)V

    .line 3439
    invoke-virtual {v5, v2}, Lcom/cmcm/orion/picks/impl/h$b;->b(Ljava/lang/String;)V

    .line 3440
    invoke-virtual {v5, v4}, Lcom/cmcm/orion/picks/impl/h$b;->c(Ljava/lang/String;)V

    .line 3442
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/g$a;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/g$a;

    move-result-object v6

    .line 3453
    invoke-virtual/range {p0 .. p0}, Lcom/cmcm/orion/picks/impl/h;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3454
    if-nez v2, :cond_4

    .line 3455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3456
    invoke-virtual/range {p0 .. p0}, Lcom/cmcm/orion/picks/impl/h;->e()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3458
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3445
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/g$a;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/g$a;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/g$a;Ljava/lang/String;)V

    .line 3449
    :cond_5
    const/4 v2, 0x1

    .line 328
    goto/16 :goto_1

    .line 329
    :cond_6
    const-string v2, "ClickThrough"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 330
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 332
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/impl/h;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :cond_7
    const-string v2, "ClickTracking"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    invoke-static/range {p2 .. p2}, Lcom/cmcm/orion/picks/impl/g$a;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/g$a;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/g$a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :cond_8
    const-string v2, "MediaFile"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/cmcm/orion/picks/impl/h;->l()Ljava/util/List;

    move-result-object v2

    .line 338
    if-nez v2, :cond_9

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4381
    :cond_9
    const/4 v3, 0x0

    .line 4382
    const/4 v4, 0x0

    const-string v5, "delivery"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4383
    const/4 v4, 0x0

    const-string v5, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4384
    const/4 v4, 0x0

    const-string v5, "bitrate"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4385
    const/4 v5, 0x0

    const-string v6, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4386
    const/4 v6, 0x0

    const-string v8, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4387
    const/4 v6, 0x0

    const-string v9, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4388
    const/4 v6, 0x0

    const-string v10, "scalable"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4389
    const/4 v6, 0x0

    const-string v11, "encode"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4390
    const/4 v6, 0x0

    const-string v12, "maintainAspectRatio"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4392
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    .line 4393
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 4394
    const/4 v3, 0x0

    .line 342
    :cond_a
    :goto_2
    if-eqz v3, :cond_b

    .line 343
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/impl/h;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 4396
    :cond_c
    const-string v6, "."

    invoke-virtual {v13, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 4397
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4398
    const/4 v3, 0x0

    goto :goto_2

    .line 4400
    :cond_d
    const-string v6, "mp4"

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "3gp"

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "webm"

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4401
    :cond_e
    new-instance v6, Lcom/cmcm/orion/picks/impl/h$c;

    invoke-direct {v6}, Lcom/cmcm/orion/picks/impl/h$c;-><init>()V

    .line 4402
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "[0-9]+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4403
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/cmcm/orion/picks/impl/h$c;->c(I)V

    .line 4405
    :cond_f
    const/4 v3, 0x0

    .line 4406
    const/4 v4, 0x0

    .line 4407
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "[0-9]+"

    invoke-virtual {v5, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 4408
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4409
    invoke-virtual {v6, v3}, Lcom/cmcm/orion/picks/impl/h$c;->a(I)V

    .line 4411
    :cond_10
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "[0-9]+"

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4412
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4413
    invoke-virtual {v6, v4}, Lcom/cmcm/orion/picks/impl/h$c;->b(I)V

    .line 4415
    :cond_11
    const-string v5, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v6, v5}, Lcom/cmcm/orion/picks/impl/h$c;->a(Z)V

    .line 4416
    const-string v5, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v6, v5}, Lcom/cmcm/orion/picks/impl/h$c;->b(Z)V

    .line 4417
    invoke-virtual {v6, v7}, Lcom/cmcm/orion/picks/impl/h$c;->a(Ljava/lang/String;)V

    .line 4418
    invoke-virtual {v6, v9}, Lcom/cmcm/orion/picks/impl/h$c;->b(Ljava/lang/String;)V

    .line 4419
    invoke-virtual {v6, v14}, Lcom/cmcm/orion/picks/impl/h$c;->d(Ljava/lang/String;)V

    .line 4420
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/cmcm/orion/picks/impl/h$c;->c(Ljava/lang/String;)V

    .line 4421
    invoke-virtual {v6, v11}, Lcom/cmcm/orion/picks/impl/h$c;->e(Ljava/lang/String;)V

    .line 4422
    if-le v3, v4, :cond_14

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v6, v3}, Lcom/cmcm/orion/picks/impl/h$c;->c(Z)V

    move-object v3, v6

    goto/16 :goto_2

    .line 4415
    :cond_12
    const/4 v5, 0x0

    goto :goto_3

    .line 4416
    :cond_13
    const/4 v5, 0x0

    goto :goto_4

    .line 4422
    :cond_14
    const/4 v3, 0x0

    goto :goto_5

    .line 346
    :cond_15
    const-string v2, "Duration"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_16

    .line 352
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 356
    :goto_6
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 357
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/orion/picks/impl/h;->a(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 354
    :cond_16
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss:SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6
.end method

.method private b(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 3

    .prologue
    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->d:Lcom/cmcm/orion/adsdk/d;

    const/16 v1, 0x12d

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    .line 144
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/impl/h;->r()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 125
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->c:Lcom/cmcm/orion/adsdk/d;

    const/16 v1, 0x12e

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/h;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->q()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    invoke-direct {p0, v0, v1, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    sget-object v1, Lcom/cmcm/orion/adsdk/d;->b:Lcom/cmcm/orion/adsdk/d;

    const/16 v2, 0x191

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0

    .line 138
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/j;->c:Lcom/cmcm/orion/adsdk/d;

    const/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;ILcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/j;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/cmcm/orion/picks/impl/j;->b(Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vast:to report xml parse start,pkg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v0, "vast_parse_start"

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    .line 5047
    invoke-static {v0, v1, v2, v3, v3}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 478
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/j;->b:Lcom/cmcm/orion/picks/a/a/a;

    .line 472
    return-void
.end method
