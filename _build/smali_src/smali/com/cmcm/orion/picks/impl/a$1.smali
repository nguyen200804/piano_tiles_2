.class public final Lcom/cmcm/orion/picks/impl/a$1;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic d:Lcom/cmcm/orion/picks/b/a;

.field final synthetic e:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/picks/b/a;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a$1;->b:Lcom/cmcm/orion/picks/a/a/a;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/a$1;->c:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p4, p0, Lcom/cmcm/orion/picks/impl/a$1;->d:Lcom/cmcm/orion/picks/b/a;

    iput-object p5, p0, Lcom/cmcm/orion/picks/impl/a$1;->e:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7181
    .line 7183
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7184
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 7190
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 7193
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 7198
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 7189
    :goto_1
    if-eqz v1, :cond_0

    .line 7190
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 7193
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 7197
    :catch_1
    move-exception v1

    goto :goto_0

    .line 7188
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 7189
    :goto_2
    if-eqz v1, :cond_1

    .line 7190
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 7193
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 7196
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 7188
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public static a(Lcom/cmcm/orion/adsdk/b$a;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;IJLjava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmcm/orion/adsdk/b$a;",
            "Lcom/cmcm/orion/picks/a/a/a;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2035
    :try_start_0
    invoke-static {p2}, Lcom/cmcm/orion/picks/a/a/h;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2042
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v5

    .line 2043
    invoke-static {v5}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2044
    invoke-static {v5}, Lcom/cmcm/orion/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2045
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cmcm/orion/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2046
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cmcm/orion/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 2047
    const-string v8, "sdk=1"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "&mcc="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v2, ""

    :cond_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v2, "&mnc="

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ""

    :goto_1
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&brand="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "ro.product.brand"

    const-string v9, "unknow"

    invoke-static {v8, v9}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&model="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "ro.product.model"

    const-string v9, "unknow"

    invoke-static {v8, v9}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&at="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&pos="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&mid="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&aid="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/orion/utils/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "&gaid="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/orion/utils/internal/a/a;->c()Lcom/cmcm/orion/utils/internal/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cmcm/orion/utils/internal/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&v=25&lv=4.3.4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v2, "&nt="

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/cmcm/orion/utils/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&osl="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&lan="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%s_%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v7, v8, v6

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&pl=2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&event="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cmcm/orion/adsdk/b$a;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&loadtime="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2065
    if-eqz p3, :cond_3

    .line 2066
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&errorcode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2068
    :cond_3
    if-eqz p1, :cond_4

    .line 2069
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&adset_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->x()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&aps="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "&src="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->q()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2074
    :cond_4
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2075
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2076
    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2077
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2078
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    move-object v2, v3

    .line 2047
    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 2082
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3105
    new-instance v2, Lcom/cmcm/orion/picks/a/a/e;

    const-string v3, ""

    const/16 v4, 0x83

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/cmcm/orion/picks/a/a/e;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    .line 2114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2115
    const-string v4, "&attach=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    invoke-virtual {v2}, Lcom/cmcm/orion/picks/a/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2084
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4095
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->j()Ljava/lang/String;

    move-result-object v3

    .line 2087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    goto/16 :goto_0

    .line 2039
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 9037
    if-nez p0, :cond_0

    .line 9046
    :goto_0
    return-void

    .line 9042
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9046
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 8

    .prologue
    .line 7024
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7036
    :cond_0
    return-void

    .line 7028
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 7029
    if-eqz v1, :cond_0

    .line 7030
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 7031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x240c8400

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 7032
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 7030
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9010
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 9011
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to copy from or to a null stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9014
    :cond_1
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 9017
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 9018
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 9020
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 9021
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1241
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1244
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1258
    :goto_0
    return v0

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adView exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 1256
    goto :goto_0

    .line 1258
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 3

    .prologue
    .line 7156
    const/4 v0, 0x0

    .line 7158
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7159
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 7160
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7161
    const/4 v0, 0x1

    .line 7168
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 7171
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 7177
    :goto_0
    return v0

    .line 7164
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    const/4 v0, 0x0

    .line 7167
    if-eqz v1, :cond_0

    .line 7168
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 7171
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 7175
    :catch_1
    move-exception v1

    goto :goto_0

    .line 7166
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 7167
    :goto_2
    if-eqz v1, :cond_1

    .line 7168
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 7171
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 7174
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 7166
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 7164
    :catch_3
    move-exception v0

    goto :goto_1

    .line 7175
    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7075
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7084
    :cond_0
    :goto_0
    return v0

    .line 7080
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7081
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7082
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 5033
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static b(Ljava/io/File;)J
    .locals 5

    .prologue
    .line 7039
    const-wide/16 v0, 0x0

    .line 7041
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7044
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 7046
    :try_start_1
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 7047
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 7056
    :goto_0
    mul-long/2addr v0, v2

    .line 7061
    :goto_1
    return-wide v0

    :catch_0
    move-exception v2

    .line 7053
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 7054
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 8010
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 8011
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 8012
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 8013
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 8014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8015
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, v1, v0

    .line 8016
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8018
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8024
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 5091
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d*%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 5103
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 6097
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 6098
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5093
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/adsdk/d;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed: vast tag parse failed. error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/adsdk/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/impl/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 117
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/h;)V
    .locals 6

    .prologue
    .line 65
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/impl/h;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$1;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1;->c:Lcom/cmcm/orion/picks/impl/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->f:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 112
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1;->c:Lcom/cmcm/orion/picks/impl/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->e:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/impl/a;->a(J)J

    .line 81
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$1;->d:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->Y:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 82
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a$1;->d:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/impl/a;->a(Landroid/content/Context;Lcom/cmcm/orion/picks/b/a;)Z

    move-result v2

    new-instance v3, Lcom/cmcm/orion/picks/impl/a$1$1;

    invoke-direct {v3, p0, p1}, Lcom/cmcm/orion/picks/impl/a$1$1;-><init>(Lcom/cmcm/orion/picks/impl/a$1;Lcom/cmcm/orion/picks/impl/h;)V

    invoke-static {v1, v0, v2, v3}, Lcom/cmcm/orion/picks/impl/b/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method
